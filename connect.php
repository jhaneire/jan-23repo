<?php
/* Local Database*/

$servername = "localhost";
$username = "u434717405_capstone";
$password = "&M0mgMV8z";
$dbname = "u434717405_capstone";




// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}



?> 