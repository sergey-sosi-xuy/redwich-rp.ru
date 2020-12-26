<?php
class donate extends hf {
    public function get_content() {

        include "engine/functions.php";
        if(file_exists("view/donate/donate.php"))
        {
            include "view/donate/donate.php";

        } else exit("<meta http-equiv='refresh' content='0; url= /'>");
    }
}
?>