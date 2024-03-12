<?php

	error_reporting(E_ALL);
	ini_set("display_errors", 1);

	echo "Hello World 2!!";
	
	$servername = "sql"; // Имя сервиса из docker-compose.yml
	// $port = 192.168.240.2:3306; // Порт MariaDB
	$servername = "192.168.240.2:3306";
	$username = "user"; // Имя пользователя
	$password = "secret"; // Пароль пользователя
	$database = "test"; // Имя базы данных

	// Создание соединения
	$conn = new mysqli($servername, $username, $password, $database);

	// Проверка соединения
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_errno . " " . $conn->connect_error);
	}
	echo "Connected successfully";

?>