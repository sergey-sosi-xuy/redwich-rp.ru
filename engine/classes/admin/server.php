<?php
 if(!isset($_SESSION['A_Nick'])) exit("<meta http-equiv='refresh' content='0; url= /admin/login'>");
 else
{
	class server extends hf {
		public function get_content() { 
			require_once ("engine/functions.php");
			if(file_exists("view/admin/server.php")) include "view/admin/server.php"; 
			else exit("<meta http-equiv='refresh' content='0; url= /'>");	
		}
	}
}
?>
