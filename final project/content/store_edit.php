<?php
    require_once "../conn.php";
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
        function ChangeContent(ID){
		document.getElementById("ID").value = ID;
		document.getElementById("form").action = "store_edit.php";
		document.getElementById("form").submit();
	}
        function DeleteContent(){
		document.getElementById("ID").value = document.getElementById("ID").value;
		document.getElementById("form").action = "store_delsave.php";
		document.getElementById("form").submit();
	}
    function UpdateContent(){
		document.getElementById("store_ID").value = document.getElementById("store_ID").value;
		document.getElementById("store_city").value = document.getElementById("store_city").value;
		document.getElementById("store_address").value = document.getElementById("store_address").value;
		document.getElementById("phone_number").value = document.getElementById("phone_number").value;
        document.getElementById("business_hours").value = document.getElementById("business_hours").value;
		document.getElementById("form").action = "store_update.php";
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
            margin-left: 100px;
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
    <form id="form" method="post" action="store_edit.php">
    <input type="hidden" id="ID" name="ID" value="<?php echo isset($_POST["ID"])?$_POST["ID"]:""?>">
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
                        <button class="changeButton" type="button" onclick="location.href='store_add.php'">Add Store</button>
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
            </h4>
            </div>
            <div class="center-heading_store_content">
                <table class="table" id="store"> 
                                <thead>
                                    <tr> 
                                    <th>商店ID</th>
                                    <th>商店名稱</th> 			  
                                    <th>商店城市</th> 
                                    <th>商店地址</th> 
                                    <th>商店連絡方式</th>
                                    <th>商店營業時間</th>
                                    <th>刪除/修改</th>  
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                        if(isset($_POST["ID"]) && !empty($_POST["ID"])){
                                            $ID = $_POST["ID"];
                                        $sql = "SELECT * from stores natural join contact natural join type_store WHERE store_ID ='".$ID."';";
                                        $result = mysqli_query($conn, $sql);
                                        if($row = mysqli_fetch_array($result)){
                                ?>
                                            <tr> 
                                            <td><input type="text" id="store_ID" name="store_ID" value="<?php echo $row['store_ID']; ?>"></td> 
                                            <td><?php echo $row['store_name']; ?></td> 
                                            <td><input type="text" id="store_city" name="store_city" value="<?php echo $row['store_city']; ?>"></td> 
                                            <td><input type="text" id="store_address" name="store_address" value="<?php echo $row['store_address']; ?>"></td> 
                                            <td><input type="text" id="phone_number" name="phone_number" value="<?php echo $row['phone_number']; ?>"></td> 
                                            <td><input type="text" id="business_hours" name="business_hours" value="<?php echo $row['business_hours']; ?>"></td>
                                            <td scope="row">
                                                <button class="selectButton" onclick="DeleteContent();">刪除</button>
                                                <button class="selectButton" onclick="UpdateContent();">修改</button>
                                            </td>   
                                            </tr>
                                        <?php
                                            }
                                    } else {
                                        $sql = "SELECT * FROM stores natural join contact natural join type_store";
                                        $result = mysqli_query($conn, $sql);
                                        $row = mysqli_fetch_all($result);
                                        for ($count = 0; $count < count($row); $count++) {
                                            ?>
                                            <tr>
                                            <td><?php echo $row[$count][1]; ?></td> 
                                            <td><?php echo $row[$count][7]; ?></td> 
                                            <td><?php echo $row[$count][2]; ?></td> 
                                            <td><?php echo $row[$count][3]; ?></td> 
                                            <td><?php echo $row[$count][4]; ?></td> 
                                            <td><?php echo $row[$count][5]; ?></td> 
                                            <td style="text-align: center;"><button class="selectButton" onclick="ChangeContent('<?php echo $row[$count][1]; ?>');">刪除/修改</button></td> 
                                    <?php
                                        }
                                    }
                                    ?>
                                </tbody>
                    </table>
                    
            </div>
        <div class="center-heading_store_content_a">
            <a href="store_edit.php" class="button" style="text-align: center; font-family: 'Raleway',sans-serif; font-size: 24px;">Return</a>
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