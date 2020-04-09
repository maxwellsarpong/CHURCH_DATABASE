<?php
   include('config.php');
  
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {
   	$myfirst = mysqli_real_escape_string($conn,$_POST['first']);
    $mylast = mysqli_real_escape_string($conn,$_POST['last']); 
    $myphone = mysqli_real_escape_string($conn,$_POST['phone']);
    $myemail = mysqli_real_escape_string($conn,$_POST['email']); 
    $mygroup = mysqli_real_escape_string($conn,$_POST['group']);
    
    $sql = "INSERT INTO users(First_Name,Last_Name,Phone,Email,Password) VALUES ('$myfirst','$mylast',
    '$myphone','$myemail','$mygroup')";

    $result = mysqli_query($conn,$sql);

    if(!$result){
    	die('could not enter data:'.mysql_error());
    	header("location: ../admin/add.php");
    }

    echo "entered successfully";
    header("location: ../admin/user.php");
   }

   mysqli_close($conn);
?>   