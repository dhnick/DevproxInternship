<?php
	$firstName = $_POST['firstName'];
	$lastName = $_POST['lastName'];
	$idNo = $_POST['idNo'];
	$dateofbirth = (date_format(date_create($_POST['dateofbirth']),"d/m/Y"));


	$conn = new mysqli('localhost','root','','devproxdb');

    // Database connection
	//host : localhost
	//username : root
	//password :
	//dbname : devproxdb
	//tablename : staff_data 

	/** Validating input data for Name and Surname*/
	if($firstName != ctype_alpha($firstName) || $lastName != ctype_alpha($lastName)){

		echo " Invalid Name or Surname ";
	} 

	/** Validating if ID NUMBER is a number and that it is only 13 characters long*/
	elseif ($idNo != is_numeric($idNo) && strlen($idNo) != 13) {

		echo " Invalid ID number";

	} 
	
	/** Validating if the database connects successfully*/
	elseif ($conn->connect_error) {

		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);

		
	}

	/** Adding the valid input to the database*/
	else {
		$stmt = $conn->prepare("insert into staff_data(firstName, lastName, idNo, dateofbirth) values(?, ?, ?, ?)");
		$stmt -> bind_param ("ssss", $firstName, $lastName, $idNo, $dateofbirth);
		$execval = $stmt->execute();
		echo $execval;
		echo "Captured  successfully...";
		$stmt->close();
		$conn->close();
	}



    


?> 