<?php

	$servername = "mysql";
	$username = "a1";
	$password = "a1";
	$dbname = "a1";

	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);

	// Check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	} 
	echo "Connected successfully";

?>