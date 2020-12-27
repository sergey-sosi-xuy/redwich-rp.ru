<?php
if(!isset($_SESSION['A_Nick'])) exit("<meta http-equiv='refresh' content='0; url= /admin/login'>");
else
{
    class admins extends hf {
        public function get_content() {
            require_once ("engine/functions.php");
            if(file_exists("view/admin/admins.php")) include "view/admin/admins.php";
            else exit("<meta http-equiv='refresh' content='0; url= /'>");
        }
    }
}
?>
