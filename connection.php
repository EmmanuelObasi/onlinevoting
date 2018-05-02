<?php
error_reporting(1);
mysql_connect('127.0.0.1', 'azure@localhost', '') or die(mysql_error());
mysql_select_db('poll') or die(mysql_error());

?>
