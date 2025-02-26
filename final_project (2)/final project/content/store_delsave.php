<?php
	require_once "../conn.php";
    $inputData=$_POST;
    $outputData=array();
    try{
        if (isset($_POST["ID"]) && !empty($_POST["ID"]))
        {
        $ID = $_POST["ID"];
        
        $sql = "DELETE FROM stores WHERE store_ID ='".$ID."';";
        $result=$conn->query($sql);
        if($result===TRUE){
            $sql = "DELETE FROM contact WHERE store_ID ='".$ID."';";
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