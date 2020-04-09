<?php

 
 class DbConnect{
 	private $con;
 	
 	function __construct()
 	{
 		
 	}

 	function connect(){
 		include('constant.php');
 		$con= mysqli_connect(DB_NAME, DB_USER, DB_PASSWORD, DB_HOST);

 		if(mysqli_connect_errno()){
 			echo"failed to connect the database".mysql_connect_err();
 		}
 		return $con;
 	}
 }
