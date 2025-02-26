<?php
    require_once "../conn.php";
?>
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
        
        function searchDrinks(){
		document.getElementById("ID").value = document.getElementById("drinksOption").value;
		document.getElementById("form").action = "drinks_result.php";
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
<form id="form" method="post" action="drinks_search.php">
    <input type="hidden" id="ID" name="ID" value="<?php echo isset($_POST["ID"])?$_POST["ID"]:""?>">
    <!--header section starts -->  
    <section class="main_start">
        <nav class="navbar_start">
            <!---<a herf="#" class="logo">
                <img src="img/logo1.png"/>
            </a>-->
               <a href="../index.php">Home</a>
               <a href="../start.php">Starting</a> 
               <a href="../store.php">Store</a>
               <a href="../order.php">Order</a>
           
        </nav>
        <div class="titleCount">
            總飲料數量為: 
                <?php
                    if(isset($_POST["ID"]) && !empty($_POST["ID"]))
                        $ID = $_POST["ID"];
                    $sql = "SELECT COUNT(*) FROM drinks where store_type_id ='".$ID."';";
                    $result =  mysqli_query($conn, $sql);
                    
                    if($rowcount = $result->fetch_column())
                        echo $rowcount;
                ?>
        </div>
        <div>
            <select name="drinksOption" id="drinksOption" style="width: 10%; padding: 5px;font-family: 'Raleway',sans-serif; font-size: 17px;">
                <option value="" selected>請選擇飲料</option>
                <?php
                if(isset($_POST["ID"]) && !empty($_POST["ID"])){
                $ID = $_POST["ID"];
                $sql = "SELECT * FROM drinks natural join type_store WHERE store_type_id ='".$ID."';";
                $result = mysqli_query($conn, $sql);
                $row = mysqli_fetch_all($result);
                    for ($count = 0; $count < count($row); $count++) {
                        ?>
                    <option value= "<?php echo $row[$count][1]; ?>"><?php echo $row[$count][2]; ?></option>
                <?php
                    }
                }
                ?>
            </select>
            <button type="button" class="startSearch" onclick="searchDrinks()">Search</button>
        </div>
        <div class="center-heading_start">
            <table class="table" id="store"> 
                                <thead>
                                    <tr> 
                                    <th>飲料ID</th>
                                    <th>飲料商家</th> 
                                    <th>飲料名稱</th> 			  
                                    <th>飲料價格</th> 
                                    <th>飲料熱量</th> 
                                    <th>飲料糖分</th> 
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                            if(isset($_POST["ID"]) && !empty($_POST["ID"])){
                                            $ID = $_POST["ID"];
                                            $sql = "SELECT * FROM drinks natural join type_store WHERE store_type_id ='".$ID."';";
                                            $result = mysqli_query($conn, $sql);
                                            $row = mysqli_fetch_all($result);
                                            for ($count = 0; $count < count($row); $count++) {
                                                ?>
                                                <tr>
                                                <td><?php echo $row[$count][1]; ?></td> 
                                                <td><?php echo $row[$count][6]; ?></td> 
                                                <td><?php echo $row[$count][2]; ?></td> 
                                                <td><?php echo $row[$count][3]; ?></td> 
                                                <td><?php echo $row[$count][4]; ?></td> 
                                                <td><?php echo $row[$count][5]; ?></td>
                                    <?php
                                                }
                                        } else {
                                            $sql = "SELECT * FROM drinks natural join type_store";
                                            $result = mysqli_query($conn, $sql);
                                            $row = mysqli_fetch_all($result);
                                            for ($count = 0; $count < count($row); $count++) {
                                                ?>
                                                <tr>
                                                <td><?php echo $row[$count][1]; ?></td> 
                                                <td><?php echo $row[$count][6]; ?></td> 
                                                <td><?php echo $row[$count][2]; ?></td> 
                                                <td><?php echo $row[$count][3]; ?></td> 
                                                <td><?php echo $row[$count][4]; ?></td> 
                                                <td><?php echo $row[$count][5]; ?></td> 
                                        <?php
                                            }
                                        }
                                    ?>
                                </tbody>
                    </table>
        </div>
        <div class="center-heading_store_content_a">
                <a href="../start.php" class="button" style="text-align: center; font-family: 'Raleway',sans-serif; font-size: 24px;">Back</a>
        </div>                                   
</section>
    <!--header section ends -->

</div>

<!--strat section starts-->
   
<!--start section ends-->

<!--swiper js link -->
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
    
<!--js file link -->
<script src="js/script.js"></script>
</form>
</body>


</html>