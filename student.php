<?php
require('connection.php');

session_start();
//If your session isn't valid, it returns you to the login screen for protection
if(empty($_SESSION['member_id'])) {
    header("location:access-denied.php");
}

?>
<html><head>
<link href="css/user_styles.css" rel="stylesheet" type="text/css" />
</head><body bgcolor="purple">
<center><img src="RGU.jpg" width="50" height="50" </center>
<center><b><font color = "white" size="6">RGU Student Online Voting System</font></b></center><br><br>
<div id="page">
<div id="header">
<h1>STUDENT HOME </h1>
<a href="student.php">Home</a> | <a href="vote.php">Current Polls</a> | <a href="manage-profile.php">Manage My Profile</a> | <a href="out.php">View Results</a> | <a href="logout.php">Logout</a>
</div>

<div id="container">
    <p1> Welcome to the student page.</p1>
    <p> The tabs above helps you navigate around the page; and to place your vote as well.</p>
</div>

    <div id="footer">
<div class="bottom_addr">&copy; 2018 RGU Student Online Voting System. All Rights Reserved</div>
</div>
</div>
</body>
</html>