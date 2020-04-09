<?php
   include('config.php');
  
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      
      $myemail = mysqli_real_escape_string($conn,$_POST['email']);
      $mypass = mysqli_real_escape_string($conn,$_POST['pass']); 
      
      $sql = "SELECT id FROM login WHERE email = '$myemail' and pass = '$mypass'";
      $result = mysqli_query($conn,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      $active = $row['active'];
      
      $count = mysqli_num_rows($result);
      
      // If result matched $myusername and $mypassword, table row must be 1 row
    
      if($count == 1) {
         
         $_SESSION['email'] = $myemail;
         
         header("location: ../admin/home.php");
      }else {        
         echo '<script>alert("Your Login Name or Password is invalid") </script>' ;
         Print '<script>window.location.assign("../index.php");</script>';
      }
   }
?>