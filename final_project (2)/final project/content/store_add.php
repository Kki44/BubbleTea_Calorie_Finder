<?php
    require_once "../conn.php";
    $outputData = array();
    try{
        $sql = "SELECT * FROM stores natural join contact natural join type_store where store_type_id = 4";
        $result =  mysqli_query($conn, $sql);
        $outputData['data'] = array();
        while($row = mysqli_fetch_assoc($result)){
            $obj = [
                'ID' => $row['store_ID'],
                'name' => $row['store_name'],
                'city' => $row['store_city'],
                'address' => $row['store_address'],
                'number' => $row['phone_number'],
                'hours' => $row['business_hours'],
            ];
            array_push($outputData['data'], $obj);
        }
    }catch(Exception $e){
        $outputData['state']=500;
        $outputData['message']=$e->getMessage();
    }
    $outputJson = json_encode($outputData);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Drink Store Comparing</title>

    <!--swiper css link-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>

    <!--css file design file link -->
    <link rel="stylesheet" href="../CSS/style.css"/>
    <script>	
	function InsertContent(){
		document.getElementById("store_type_id").value = document.getElementById("store_type_id").value;
		document.getElementById("store_city").value = document.getElementById("store_city").value;
		document.getElementById("store_address").value = document.getElementById("store_address").value;
        document.getElementById("phone_number").value = document.getElementById("phone_number").value;
        document.getElementById("business_hours").value = document.getElementById("business_hours").value;
		document.getElementById("form").action = "store_addsave.php";
		document.getElementById("form").submit();
	}
    </script>

   <style>
        *{
            margin: 0;
            padding: 0;
        }
         div{
            display: flex;
            justify-content: center;
            align-items: center;
            margin:40px;
        }
       
        button{
            border: none;
            cursor: grab;
            appearence: none;
            background-color: inherit;
            transition:transform .7s ease-in-out;
            margin-left:100px;
        }
        button:hover{
            transform: scale(1.1,1.1);
        }
    
        img{
            width: 170px;
            height:75px;
        }
        .logo_liao img{
            width: 220px;
            height:85px;
        }
        .logo_coco img{
            width: 180px;
            height:75px;
        }
        .logo_kebuke img{
            width:170px;
            height:85px;
        }
        .logo_ching_shin img{
            width: 185px;
            height:67px;
        }
    </style>

</head>

<body>
    <form id="form" method="post" action="store_add.php">
    <!--header section starts -->  
    <section class="main_store">
        <nav class="navbar_store">
            <!---<a herf="#" class="logo">
                <img src="img/logo1.png"/>
            </a>-->
               <a href="../index.php">Home</a>
               <a href="../start.php">Starting</a> 
               <a href="../store.php">Store</a> 
               <a href="../order.php">Order</a>
           
        </nav>
        <nav class="navbar_search">
            <ul>
                <li>
                    <button class="changeButton" type="button" onclick="location.href='../store.php'">Back to Store</button>
                </li>
                <li>
                    <button class="changeButton" type="button" onclick="location.href='store_edit.php'">Edit Store</button>
                </li>
            </ul>
        </nav>
        <div class="titleCount">
            <h4>
                總商店數量為: 
                <?php
                    $sql = "SELECT COUNT(*) FROM stores";
                    $result =  mysqli_query($conn, $sql);
                    
                    if($rowcount = $result->fetch_column())
                        echo $rowcount;
                ?>
                <br>
                
            </h4>
        </div>
        <div class="titleAdd">
                新增門市資訊
        </div>
        <div class="center-heading_store_content">
            
            <table class="table">
                    <tr>
                    <th>商店類型ID</th> 
                    <th>商店城市</th> 
                    <th>商店地址</th>  
                    <th>商店連絡方式</th>
                    <th>商店營業時間</th> 			  
                    </tr>  
                        <tr>
                        <td><input type="text" id="store_type_id" name="store_type_id" value=""></td>  
                        <td><input type="text" id="store_city" name="store_city" value=""></td> 
                        <td><input type="text" id="store_address" name="store_address" value=""></td>
                        <td><input type="text" id="phone_number" name="phone_number" value=""></td> 
                        <td><input type="text" id="business_hours" name="business_hours" value=""></td>  
                        </tr> 
            </table>
        </div>
        <div class="center-heading_store_content_a">
            <a onclick="InsertContent();" class="button" style="text-align: center; font-family: 'Raleway',sans-serif; font-size: 24px;">Add</a>
        </div>
        <div class="center-heading_store_content_a">
            <a href="../store.php" class="button" style="text-align: center; font-family: 'Raleway',sans-serif; font-size: 24px;">Back</a>
        </div>
    <section class="footer">
        <div class="box-container">
            <div class="box">
                <h4>extra links</h4>
                <a href="https://www.kebuke.com/"> <i class="fas fa-angle-right"></i><b>KEBUKE</b></a>
                <a href="https://www.coco-tea.com/"> <i class="fas fa-angle-right"></i> <b>Coco</b></a>
                <a href="https://www.xn--10rp0i5t9d.com/"> <i class="fas fa-angle-right"></i><b>廖老大阿娘喂</b></a>
                <a href="https://www.chingshin.tw/"> <i class="fas fa-angle-right"></i><b>清心福全</b></a>
        </div>
    </div>
    </section>
    
  

    <!--<div class="credit">   <span>drink shop comparing</span>  </div>-->

    </section>   
                                
    <!--header section ends -->


<!--swiper js link -->
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
    
<!--js file link -->
<script src="js/script.js"></script>
</form>
</body>


</html>