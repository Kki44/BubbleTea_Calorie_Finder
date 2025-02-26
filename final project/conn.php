<?php
	header("Access-Control-Allow-Origin: *");
	$dbServerName = "localhost";
	$dbUserName = "root";
	$dbPwd = "879402";
	$dbName = "final_project";

	// Create connection
	$conn = new mysqli($dbServerName, $dbUserName, $dbPwd,$dbName);

	// Check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error."<br>");
	}
	#echo "Connected successfully";
?>