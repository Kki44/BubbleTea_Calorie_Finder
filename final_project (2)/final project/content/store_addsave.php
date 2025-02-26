<?php
    require_once "../conn.php";

    $store_type_id = $_POST["store_type_id"];
    $store_city = $_POST["store_city"];
    $store_address = $_POST["store_address"];
    $phone_number = $_POST["phone_number"];
    $business_hours = $_POST["business_hours"];
    $sql = "INSERT INTO stores(store_city, store_address, store_type_id) values('" . $store_city . "','" . $store_address . "','" . $store_type_id . "')";
    $result = $conn->query($sql);
    if ($result === TRUE) {
        $sql = "SELECT store_ID FROM stores where store_city='" .$store_city. "'AND store_address='" .$store_address. "'AND store_type_id='" .$store_type_id. "';";
        $result = $conn->query($sql);
        if ($row = $result->fetch_assoc()) {
            $sql = "INSERT INTO contact(store_ID, phone_number, business_hours) values ('" . $row["store_ID"] . "','" . $phone_number . "','" . $business_hours . "')";
            $result = $conn->query($sql);
            header('Location: ../store.php');
        }
        else {
            echo "儲存失敗!" . $result->errorInfo();
        }
    } else {
        echo "儲存失敗!" . $result->errorInfo();
    }
?>