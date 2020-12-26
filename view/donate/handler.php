<?php

require_once('../common/UnitPay.php');
include '../../engine/config/database.php';

$unitPay = new UnitPay($ucp_settings['s_urlUnitPay'], $ucp_settings['s_secretWord']);


try {
    // Validate request (check ip address, signature and etc)
    $unitPay->checkHandlerRequest();

    list($method, $params) = array($_GET['method'], $_GET['params']);

    if (empty($request['method'])
        || empty($request['params'])
        || !is_array($request['params'])
    )
    {
        return $this->getErrorHandlerResponse('Invalid request');
    }
    $unitPayModel = UnitPayModel::getInstance();
    switch ($method) {
        // Just check order (check server status, check order in DB and etc)
        case 'check':{
            if ($unitPayModel->getPaymentByUnitpayId($params['unitpayId']))
            {
                // Платеж уже существует
                return $this->getErrorHandlerResponse('Payment already exists');
            }
            if (!$unitPayModel->createPayment($params['unitpayId'], $params['account'], $params['sum'], $params['sum']))
            {
                return $this->getErrorHandlerResponse('Unable to create payment database');
            }

            $unitPayModel->createPayment($params['unitpayId'], $params['account'], $params['sum'], $params['sum']);
            return $unitPay->getSuccessHandlerResponse('Check Success. Ready to pay.');
        }

        // Method Pay means that the money received
        case 'pay':{

            $payment = $unitPayModel->getPaymentByUnitpayId(
                $params['unitpayId']
            );

            if ($payment && $payment->status == 1)
            {
                return $this->getResponseSuccess('Payment has already been paid');
            }

            if (!$unitPayModel->confirmPaymentByUnitpayId($params['unitpayId']))
            {
                return $this->getResponseError('Unable to confirm payment database');
            }
            pay($params);
            return $this->getResponseSuccess('PAY is successful');

        }
        // Method Error means that an error has occurred.
        case 'error':
            // Please log error text.
            print $unitPay->getSuccessHandlerResponse('Error logged');
            break;
        // Method Refund means that the money returned to the client
        case 'refund':
            // Please cancel the order
            print $unitPay->getSuccessHandlerResponse('Order canceled');
            break;
    }
// Oops! Something went wrong.
} catch (Exception $e) {
    print $unitPay->getErrorHandlerResponse($e->getMessage());
}
public function pay($params)
{
    $unitPayModel = UnitPayModel::getInstance();
    $unitPayModel->donateForAccount($params['account'], $params['sum']);
}