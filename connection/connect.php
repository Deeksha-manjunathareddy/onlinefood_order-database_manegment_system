<?php

//main connection file for both admin & front end
$servername = "localhost"; //server
$username = "root"; //username
$password = "1234"; //password
$dbname = "onlinefoodphp";  //database

// Create connection
$db = mysqli_connect($servername, $username, $password, $dbname); // connecting 
// Check connection
if (!$db) {       //checking connection to DB	
    die("Connection failed: " . mysqli_connect_error());
}

?>