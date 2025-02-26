<?php
	require_once "../conn.php";
    $inputData=$_POST;
    $outputData=array();
    try{
        if (isset($_POST["ID"]))
	    {
            $ID = $_POST["ID"];
            $store_city = $_POST["store_city"];
            $store_address = $_POST["store_address"];
            $phone_number = $_POST["phone_number"];
            $business_hours = $_POST["business_hours"];

            $sql = "UPDATE stores SET store_city = '".$store_city."', store_address='" .$store_address. "' WHERE store_ID='".$ID."';";
            $result=$conn->query($sql);
            if($result===TRUE){
                $sql = "UPDATE contact SET phone_number = '".$phone_number."', business_hours='" .$business_hours. "' WHERE store_ID ='".$ID."';";
                $result = $conn->query($sql);
                header('Location: store_edit.php');
        }
        } 
    }
	catch(Exception $e)
    {
        $outputData["state"]=500;
        $outputData["message"]=$e->getMessage();
    }
?>