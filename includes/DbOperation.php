<?php
  
 
  class DbOperation{
  	private $con;
  	
  	function __construct(){

  		include('Dbconnect.php');
  		$db = new Dbconnect();
  		$this->con=$db->connect();
  	}

   //creating the user
  	public function createUser($First_Name, $Last_Name, $Phone, $Email, $Password){
        if($this->isUserExist($Email, $Password)){
             return 0;
        }else{

       $Password = md5($Password);
       $stmt = $this->con->prepare("INSERT INTO `users`(`id`,`First_Name`,`Last_Name`,`Phone`,`Email`,`Password`) VALUES(NULL,?,?,?,?,?);");
       $stmt = bind_param("sssss",$First_Name,$Last_Name,$Phone,$Email,$Password);

       if($stmt->execute()){
       	return 1;
       }else{
       return 2;
      }
  	}
  }


  //LOGIN

  public function userLogin($Email,$password){
    $Password = md5($password);
    $stmt = $this->con->prepare("SELECT id FROM users WHERE Email = ? AND Password = ?");
    $stmt = bind_param("ss", $Email,$Password);
    $stmt->execute();
    $stmt = store_result();
    return $stmt->num_rows>0;
  }


  public function getEmail($Email){
   $stmt = $this->con->prepare("SELECT * FROM users WHERE Email = ?");
   $stmt = bind_param("s", $Email);
   $stmt->execute();
   return $stmt->get_result()->fetch_assoc();
  }

  //CHECKING FOR MULTIPLE REGISTRATION
    private function isUserExist($Email, $Password){
         $stmt = $this->con->prepare("SELECT id FROM users WHERE Email = ? or Password = ?");
         $stmt = bind_param("ss", $Email, $Password);
         $stmt->execute();
         $stmt->store_result();
         return $stmt->num_rows>0;
    }
  }
