<?php
$servername = "localhost"; 
$username = "root"; 
$password = ""; 
$dbname = "vomato";  

// Create connection
$db = mysqli_connect($servername, $username, $password, $dbname); // connecting 

// Check connection
if (!$db) {       //checking connection to DB	
    die("Connection failed: " . mysqli_connect_error());
}
?>