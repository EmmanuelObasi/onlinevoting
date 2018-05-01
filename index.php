<html><head>
<link href="css/user_styles.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/user.js">
</script>
</head><body bgcolor="purple">
<center><img src="RGU.jpg" width="50" height="50"></center>
<center><b><font color = "white" size="6">RGU Student Online Voting System</font></b></center><br><br>
<div id="page">
<div id="header">
<h1>Student Login </h1>
<div class="news"><marquee behavior="alternate">Voting polls are up and running.! To vote, please login to your account and then go to Current Polls tab and cast your vote for the candidates of your choice. </marquee></div>
</div>
<div id="container">
<table width="300" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
<tr>
<form name="form1" method="post" action="checklogin.php" onSubmit="return loginValidate(this)">
<td>
<table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="tan">
<tr>
<td width="78">Email</td>
<td width="6">:</td>
<td width="294"><input name="myusername" type="text" id="myusername"></td>
</tr>
<tr>
<td>Password</td>
<td>:</td>
<td><input name="mypassword" type="password" id="mypassword"></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td><input type="submit" name="Submit" value="Login"></td>
</tr>
</table>
</td>
</form>
</tr>
</table>
<center>
<br>Not yet registered? <a href="registeracc.php"><b>Register Here</b></a>
</center>
</div>
<div id="footer">
<div class="bottom_addr">&copy; 2018 RGU Student Online Voting System. All Rights Reserved</div>
</div>
</div>
</body></html>