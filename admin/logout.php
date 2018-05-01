<html><head>
<link href="css/admin_styles.css" rel="stylesheet" type="text/css" />
</head>
<body bgcolor="purple">
<center><img src="RGU.jpg" width="50" height="50" </center>
<center><b><font color = "white" size="6"> RGU Student Online Voting System</font></b></center><br><br>
<div id="page">
<div id="header">
<h1>Logged Out Successfully </h1>
<p align="center">&nbsp;</p>
</div>
<?
session_start();
session_destroy();
?>
You have been successfully logged out of your control panel.<br><br><br>
Return to <a href="login.html">Login</a>
<div id="footer">
<div class="bottom_addr">&copy; 2018 RGU Student Online Voting System. All Rights Reserved</div>
</div>
</div>
</body></html>