<?php
require_once('../includes/DbOperation.php');

$response = array();

if($_SERVER['REQUEST_METHOD'] == 'POST'){
	if(
		isset($_POST['First_Name'])and
	    isset($_POST['Last_Name'])and
	    isset($_POST['Phone'])and
	    isset($_POST['Email'])and
	    isset($_POST['Password']))
	{

		$db = new DbOperation();

        $result = $db->createUser(
              $_POST['First_Name'],
              $_POST['Last_Name'],
              $_POST['Phone'],
              $_POST['Email'],
              $_POST['Password']
              );
        if ($result == 1)
        {
        	$response['error'] = false;
		    $response['message']="User registered successfully";
        }
        elseif($result == 2)
        {
        	$response['error'] = true;
		    $response['message']="Something Occured";
        }
        elseif($result == 0)
        {
        	$response['error'] = true;
		    $response['message']="User already exist";
        }

	}
	else
	{
		$response['error'] = true;
		$response['message']="Required fields are missing";
	}
}

	else
	{
		$response['error'] = true;
		$response['message']="Invalid Request";
	}
	


echo json_encode($response);
