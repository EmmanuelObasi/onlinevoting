<html><head>
<link href="css/user_styles.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/user.js">
</script>
</head><body bgcolor="purple">
<center><img src="RGU.jpg" width="50" height="50"></center>
<center><b><font color = "white" size="6">RGU Student Online Voting System</font></b></center><br><br>
<div id="page">
<div id="header">
<h1>Student Registration </h1>
<div class="news"><marquee behavior="alternate">Voting polls are up and running.! To vote, please create an account and then go to Current Polls tab and cast your vote for the candidates of your choice. </marquee></div>
</div>
<div id="container">
<?php
require('connection.php');
//Process
if (isset($_POST['submit']))
{

    $myFirstName = addslashes($_POST['firstname']); //prevents types of SQL injection
    $myLastName = addslashes($_POST['lastname']); //prevents types of SQL injection
    $myEmail = $_POST['email'];
    $myPassword = $_POST['password'];
    $newpass = md5($myPassword); //This will make your password encrypted into md5, a high security hash

    //image
    $imageName=$_FILES['img']['name'];

    $sql = mysql_query("INSERT INTO tbMembers(first_name, last_name, email, password, image) VALUES ('$myFirstName','$myLastName', '$myEmail', '$newpass', '$imageName')")
     or die(mysql_error());

    //upload image

    mkdir("image/$myEmail");
    move_uploaded_file($_FILES['img']['tmp_name'],"image/$myEmail/".$_FILES['img']['name']);


    die("Your account has been created successfully.<br><br>Go to <a href='index.php'>Login</a>");

}
echo "<center><h3>Please create an account by filling in your needed information below to participate in the election:</h3></center><br><br>";
echo '<form action="registeracc.php" method="post"  onsubmit="return updateProfile(this)">';
echo '<table align="center"><tr><td>';
echo "<tr><td>First Name:</td><td><input type='text' style='background-color:#999999; font-weight:bold;' name='firstname' maxlength='15' value=''></td></tr>";
echo "<tr><td>Last Name:</td><td><input type='text' style='background-color:#999999; font-weight:bold;' name='lastname' maxlength='15' value=''></td></tr>";
echo "<tr><td>Email Address:</td><td><input type='text' style='background-color:#999999; font-weight:bold;' name='email' maxlength='100' value=''></td></tr>";
echo "<tr><td>Password:</td><td><input type='password' style='background-color:#999999; font-weight:bold;' name='password' maxlength='15' value=''></td></tr>";
echo "<tr><td>Confirm Password:</td><td><input type='password' style='background-color:#999999; font-weight:bold;' name='ConfirmPassword' maxlength='15' value=''></td></tr>";
echo "<tr><td>Upload your Picture:</td><td><input type='file' style='background-color:#999999; font-weight:bold;' name='img' maxlength='250' value='' ></td></tr>";
echo "<tr><td>&nbsp;</td><td><input type='submit' name='submit' value='Register Account'/></td></tr>";
echo "<tr><td colspan = '2'><p>Already have an account? <a href='index.php'><b>Login Here</b></a></td></tr>";
echo "</tr></td></table>";
echo "</form>";
?>
</div>
<div id="footer">
<div class="bottom_addr">&copy; 2018 RGU Student Online Voting System. All Rights Reserved</div>
</div>
</div>
</body></html>