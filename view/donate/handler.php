<?php

include('../common/UnitPay.php');
include('../common/UnitPayModel.php');
include '../../engine/config/database.php';

$unitPay = new UnitPay($ucp_settings['s_urlUnitPay'], $ucp_settings['s_secretWord']);


try {
    // Validate request (check ip address, signature and etc)
    $unitPay->checkHandlerRequest();

    list($method, $params) = array($_GET['method'], $_GET['params']);

//    if (empty($request['method'])
//        || empty($request['params'])
//        || !is_array($request['params'])
//    )
//    {
//        print $unitPay->getErrorHandlerResponse('Invalid request');
//    }
    $unitPayModel = UnitPayModel::getInstance();
    switch ($method) {
        // Just check order (check server status, check order in DB and etc)
        case 'check':{
            if ($unitPayModel->getPaymentByUnitpayId($params['unitpayId']))
            {
                // Платеж уже существует
                exit ($unitPay->getErrorHandlerResponse('Платеж уже существует'));
            }
            if (!$unitPayModel->createPayment($params['unitpayId'], $params['account'], $params['sum'], $params['sum']))
            {
                exit($unitPay->getErrorHandlerResponse('Невозможно создать базу платежей'));
            }
//            $unitPayModel->createPayment($params['unitpayId'], $params['account'], $params['sum'], $params['sum']);
            exit($unitPay->getSuccessHandlerResponse('Проверка прошла успешно. Готов платить.'));

        }

        // Method Pay means that the money received
        case 'pay':{
            $payment = $unitPayModel->getPaymentByUnitpayId(
                $params['unitpayId']
            );
            if (!$payment)
            {
                exit ($unitPay->getErrorHandlerResponse('Заказа не существует'));
            }
            if ($payment && $payment->status == 1)
            {
                exit ($unitPay->getErrorHandlerResponse('Оплата уже произведена'));
            }
            if (!$unitPayModel->confirmPaymentByUnitpayId($params['unitpayId'],1))
            {
                exit($unitPay->getErrorHandlerResponse('Невозможно подтвердить платежную базу данных'));
            }
            if(!$unitPayModel->donateForAccount($params['account'], $params['sum'])){
                $unitPayModel->confirmPaymentByUnitpayId($params['unitpayId'],0);
                exit ($unitPay->getErrorHandlerResponse('Ошибка при выдачи доната на аккаунт'));
            }
            exit ($unitPay->getSuccessHandlerResponse('ОПЛАТА прошла успешно'));

        }
        // Method Error means that an error has occurred.
        case 'error':
            // Please log error text.
            exit ($unitPay->getSuccessHandlerResponse('Ошибка записана'));
            break;
        // Method Refund means that the money returned to the client
        case 'refund':
            // Please cancel the order
            exit($unitPay->getSuccessHandlerResponse('Заказ отменен'));
            break;
    }
// Oops! Something went wrong.
} catch (Exception $e) {
    print $unitPay->getErrorHandlerResponse($e->getMessage());
}
