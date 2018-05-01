<?php
session_start();
require('../connection.php');
//If your session isn't valid, it returns you to the login screen for protection
if(empty($_SESSION['admin_id'])){
 header("location:access-denied.php");
}
?>
<html xmlns="http://www.w3.org/1999/html"><head>
<link href="css/admin_styles.css" rel="stylesheet" type="text/css" />
</head><body bgcolor="purple">
<center><img src="RGU.jpg" width="50" height="50" </center>
<center><b><font color = "white" size="6">RGU Student Online Voting System</font></b></center><br><br>
<div id="page">
<div id="header">
<h1>ADMINISTRATION CONTROL PANEL </h1>
<a href="admin.php">Home</a> | <a href="manage-admins.php">Manage Administrators</a> | <a href="positions.php">Manage Positions</a> | <a href="candidates.php">Manage Candidates</a> | <a href="refresh.php">Poll Results</a> | <a href="View.php">View Voters</a> | <a href="logout.php">Logout</a>
</div>
<p align="center">&nbsp;</p>
<div id="container">

 <P>Welcome to the administration page. As the admin, you have the ability to add and delete positions, add candidates and delete candidates and do much more.! </P>
<p> To perform an administrative task, please click on any of the tabs above. </p>


</div>
<div id="footer">
<div class="bottom_addr">&copy; 2018 RGU Student Online Voting System. All Rights Reserved</div>
</div>
</div>
</body></html>