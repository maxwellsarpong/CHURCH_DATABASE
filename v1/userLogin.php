<?php
include('../includes/DbOperation.php');

$response = array();

if($_SERVER['REQUEST_METHOD'] == 'POST'){

	if(isset($_POST['Email']) and isset($_POST['Password'])){

		$db = new DbOperation;

		if($db->userLogin($_POST['Email'], _POST['Password'])){
            $user = $db->getEmail($_POST['Email']);
            $response['error'] = false;
            $response['Email'] = $user['Email'];
            $response['Password'] = $user['Password'];
		}
		else{
			$response['error'] = true;
		    $response['message']="Invalid email or password";
		}
	}

	else{
		$response['error'] = true;
		$response['message']="Required fields are missing";
	}
}

echo json_encode($response);