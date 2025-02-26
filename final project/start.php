<?php
    require_once "conn.php";
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
    <link rel="stylesheet" href="CSS/style.css"/>

    <script>
        function ChangeContent(ID){
		document.getElementById("ID").value = ID;
		document.getElementById("form").action = "content/drinks_search.php";
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
            width: 400px;
            height:154px;
        }
    </style>
</head>

<body>
<form id="form" method="post" action="store_edit.php">
    <input type="hidden" id="ID" name="ID" value="<?php echo isset($_POST["ID"])?$_POST["ID"]:""?>">
    <!--header section starts -->  
    <section class="main_start">
        <nav class="navbar_start">
            <!---<a herf="#" class="logo">
                <img src="img/logo1.png"/>
            </a>-->
               <a href="index.php">Home</a>
               <a href="start.php">Starting</a> 
               <a href="store.php">Store</a>
               <a href="order.php">Order</a>
           
        </nav>
       
        <div class="center-heading_start">
            <nav class="navbar_search">
                <ul>
                    <li>
                        <button type="button" onclick="ChangeContent(1)">
                            <img src="https://www.阿娘喂.com/images/logo.svg" alt="buttonpng" border="0"/>
                        </button>
                    </li>
                    <li>
                        <button type="button" onclick="ChangeContent(3)">
                                <img src="img/coco.png" alt="buttonpng" border="0"/>
                        </button>
                    </li>
                    <li> 
                        <button type="button" onclick="ChangeContent(4)">
                                <img src="https://www.kebuke.com/wp-content/themes/project-theme-v2/src/img/public/logo.png" alt="buttonpng" border="0"/>
                        </button>
                    </li>
                    <li>
                        <button type="button" onclick="ChangeContent(2)">
                                <img src="https://www.chingshin.tw/img/logo.png" alt="buttonpng" border="0"/>
                        </button>
                    </li>
                </ul>
            </nav>
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