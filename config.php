<?php
//MaxMaths Website Configuration

// Define Configuration
class Config
{
	public static $config = array
	(
		// Website Configuration
		'website' => array
		(
			'name' => 'Mathematics',
	
			'root_file' => 'I:/www/maths',
			'root_http' => 'http://127.0.0.1',
		),

		// Database Configuration
		'database' => array
		(
			// Website (host:port,user,password,database)
			'W' => array('127.0.0.1:3306','root','','mathsdb'),
		),

		// User Configuration
		'users' => array
		(
			'superadmin' => array(),
			'rootadmin' => array(),
			'iplocks' => array
			(
			),
		),
	);
}
?>