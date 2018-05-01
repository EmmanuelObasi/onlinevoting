<?php
session_start();
require('../connection.php');
//If your session isn't valid, it returns you to the login screen for protection
if(empty($_SESSION['admin_id'])){
    header("location:access-denied.php");
}
//retriving registered  members from the tbmembers table
$sql = "SELECT member_id, first_name, last_name, email, password, image FROM tbmembers";
$result = mysql_query($sql) or die(mysql_error());
if (mysql_num_rows($result)<1){
    $result = null;
}
?>

<?php
// deleting sql query
// check if the 'id' variable is set in URL
if (isset($_GET['id']))
{
    // get id value
    // delete the entry
    $id = $_GET['id'];

    $result = mysql_query("DELETE FROM tbmembers WHERE member_id='$id'")
    or die("The member does not exist ... \n");

    // redirect back to positions
    header("Location: View.php");
}
else
 // do nothing
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <title>Administration Control Panel:View Voters</title>
    <link href="css/admin_styles.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" src="js/admin.js">
    </script>
</head>
<body bgcolor="purple">
<center><img src="RGU.jpg" width="50" height="50" </center>
<center><b><font color = "white" size="6">RGU Student Online Voting System</font></b></center><br><br>
<div id="page">
    <div id="header">
        <h1>MANAGE Voters</h1>
        <a href="admin.php">Home</a> | <a href="manage-admins.php">Manage Administrators</a> | <a href="positions.php">Manage Positions</a> | <a href="candidates.php">Manage Candidates</a> | <a href="refresh.php">Poll Results</a> | <a href="View.php">View Voters</a> | <a href="logout.php">Logout</a>
    </div>
    <div id="container">
        <table width="380" align="center">
            <table width="380" align="center">

            <hr>
            <table border="0" width="420" align="center">
                <CAPTION><h3>AVAILABLE VOTERS</h3></CAPTION>
                <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Image</th>

                </tr>

                <?php
                //loop through all table rows
                while ($row=mysql_fetch_array($result)){
                    echo "<tr>";
                    echo "<td>" . $row['member_id']."</td>";
                    echo "<td>" . $row['first_name']."</td>";
                    echo "<td>" . $row['last_name']."</td>";
                    echo "<td>" . $row['password']."</td>";
                    echo "<td>" . $row['email']."</td>";
                    echo "<td>" . $row['image']."</td>";
                    echo '<td><a href="View.php?id=' . $row['member_id'] . $row['first_name'] . $row['last_name']. $row['email']. $row['image']. ' ">Delete Voter</a></td>';
                    echo "</tr>";
                }
                mysql_free_result($result);
                mysql_close($link);
                ?>
            </table>
                <hr>
    </div>
    <div id="footer">
        <div class="bottom_addr">&copy; 2018 RGU Student Online Voting System. All Rights Reserved</div>
    </div>
</div>
</body>
