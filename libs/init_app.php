<?php
	require_once ('MysqliDb.php');

	$hostname = "localhost";
	$username = "username";
	$password = "password";
	$database = "test";

	$feedback = "";  
	$exhibit_data = array();
	$event_data = array();
	$score_data = array();

	$db = new MysqliDb ($hostname, $username, $password, $database);
	$db->connect();