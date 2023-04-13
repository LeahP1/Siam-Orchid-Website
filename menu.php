<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="veiwport" content="width=device-width, initial-scale=1.0">
        <title>Siam Orchid</title>

        <!--link to make the slider work-->
        <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
        
        <!--link to custome fonts from font awesome-->
        <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
        <script src="https://kit.fontawesome.com/a835e69283.js" crossorigin="anonymous"></script>
       
        <!--Custom Css file-->
        <link rel="stylesheet" href="css/style.css">
        
    </head>
    <body>
        <?php
        // Create connection
        $conn = new mysqli('localhost', 'root', '', 'menutest');
        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
            
            ?>

    <!-- header section starts-->
    <header>
        <div class="logo"><a href="http://localhost/Siam-Orchid-Website-main"><img class="siam-orchid-logo" src="images/siam-orchid-logo.png" alt="Siam Orchind Logo"></a></div>
        <nav class="navbar">
            <a  href="http://localhost/Siam-Orchid-Website-main/#home">HOME</a>
            <a href="http://localhost/Siam-Orchid-Website-main/#about">ABOUT</a>
            <a class = "active" href="menu.php">MENU</a>
            <a href="http://localhost/Siam-Orchid-Website-main/#information">INFO</a>
           
        </nav>

        <div class="icons">
            <i class="fa-solid fa-bars" id="menu-bars"></i>
            <a href="http://localhost/Siam-Orchid-Website-main/cart.php" class="fa-solid fa-cart-shopping"><span></span></a>
        </div>
    </header>
    <!-- header section ends-->

    <!-- home section ends-->

    
    <!-- Menu section starts-->
    <br><br><br><br><br><br><br><br>
    <section class="menu" id="menu">
        <div class="title">
            <h1 class="heading">MENU</h1>
        </div>
        <div class="container-menu">
                <div class = "tab-box">

                    <button class = "tab active">Thai Specials</button>
                    <button class = "tab">Japanese Specials</button>
                    <button class = "tab">Appetizers</button>
                    <button class = "tab">Soups and Salads</button>
                    <button class = "tab">Entrees</button>
                    <button class = "tab">Sushi, Rolls, and Baskets</button>
                    <button class = "tab">Drinks</button>
                    <button class = "tab">Desserts</button>
                    <button class = "tab">Kids Menu</button>
                    <button class = "tab">Extras</button>
                </div>
                <div class="menu-info">
                <?php




if(isset($_POST['addToCart'])){

       

            
    $itemName = $_POST['itemNameInput'];
    $itemDescription = $_POST['itemDescriptionInput'];
    $itemPrice = $_POST['itemPriceInput'];
    $itemQuanity = $_POST['quantity'];
    
    $transferItem = mysqli_query($conn, "INSERT INTO `Cart`(name,description,price,quantity)VALUES('$itemName','$itemDescription','$itemPrice','$itemQuanity')");


}    

?><div class = "tabContent active"><?php
$sql = "SELECT * FROM menu_3 WHERE `COL 5` = 'Thai Lunch Specials'";
$result = $conn->query($sql);

$count = "SELECT COUNT(*) FROM cart";
    $countrows = $conn->query($count);


    if ($result->num_rows > 0) {
        // output data of each tab
        ?><div class="container"> <?php
    while($row = $result->fetch_assoc()) {

           ?> <div class = "box">
               
               <form action = "#menu" method = "POST">
                    <div class = "menuItem">
                    <h4><?php echo $row["COL 2"] ?></h4>
                    <input type = "hidden" name = 'itemNameInput' value ="<?php echo $row["COL 2"];?>">
                    <p><?php echo $row["COL 4"] ?> </p>
                    <input type = "hidden" name = 'itemDescriptionInput' value ="<?php echo $row["COL 4"];?>">
                    <span>$<?php echo $row["COL 3"] ?></span>
                    <input type = "hidden" name = 'itemPriceInput' value ="<?php echo $row["COL 3"];?>">
                </div>
                    <br> <input type = "number" name = "quantity" value = "1">
                     <br><input type = "submit" class = "addCart" value = "ADD TO CART" name = "addToCart">
               
    </form>
    </div>
    
    
    <?php 
   
   
   
} ?>
</div>
</div>



    <?php
} else {
    echo "0 results";
    }
    ?><div class = "tabContent"><?php
$sql = "SELECT * FROM menu_3 WHERE `COL 5` = 'Japanese Lunch Specials'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each tab
    ?><div class="container"> <?php
    while($row = $result->fetch_assoc()) {

         ?>   <div class = "box">
                <form action = "#menu" method = "POST">
                <div class = "menuItem">
                    <h4><?php echo $row["COL 2"] ?></h4>
                    <input type = "hidden" name = 'itemNameInput' value ="<?php echo $row["COL 2"];?>">
            <p><?php echo $row["COL 4"] ?> </p>
            <input type = "hidden" name = 'itemDescriptionInput' value ="<?php echo $row["COL 4"];?>">
            <span>$<?php echo $row["COL 3"] ?></span>
            <input type = "hidden" name = 'itemPriceInput' value ="<?php echo $row["COL 3"];?>">
                </div>
           <br><input type = "number" name = "quantity" value = "1">
           <br> <input type = "submit" class = "addCart" value = "ADD TO CART" name = "addToCart">
    </form>
    </div>
    
    <?php 
   
   
   
} 
?></div>
    </div>



    <?php
} else {
    echo "0 results";
    }
    ?><div class = "tabContent"><?php
    $sql = "SELECT * FROM menu_3 WHERE `COL 5` = 'Appetizers'";
    $result = $conn->query($sql);
    
    if ($result->num_rows > 0) {
        // output data of each tab
        ?><div class="container"><?php
        while($row = $result->fetch_assoc()) {
    
               ?> <div class = "box">
                    <form action = "#menu" method = "POST">
                    <div class = "menuItem">
                        <h4><?php echo $row["COL 2"] ?></h4>
                        <input type = "hidden" name = 'itemNameInput' value ="<?php echo $row["COL 2"];?>">
                <p><?php echo $row["COL 4"] ?> </p>
                <input type = "hidden" name = 'itemDescriptionInput' value ="<?php echo $row["COL 4"];?>">
                <span>$<?php echo $row["COL 3"] ?></span>
                <input type = "hidden" name = 'itemPriceInput' value ="<?php echo $row["COL 3"];?>">
                    </div>
               <br> <input type = "number" name = "quantity" value = "1">
               <br> <input type = "submit" class = "addCart" value = "ADD TO CART" name = "addToCart">
        </form>
        </div>
        
            <?php 
       
       
       
    } 
    ?></div>
    </div>
    
    
    
        <?php
    } else {
        echo "0 results";
        }
       
         ?><div class = "tabContent"><?php
    $sql = "SELECT * FROM menu_3 WHERE `COL 5` = 'Soups' OR `COL 5` = 'Salads' ";
    $result = $conn->query($sql);
    
    if ($result->num_rows > 0) {
        // output data of each tab
        ?><div class="container"><?php
        while($row = $result->fetch_assoc()) {
    
               ?> <div class = "box">
                    <form action = "#menu" method = "POST">
                        <div class = "menuItem">
                        <h4><?php echo $row["COL 2"] ?></h4>
                        <input type = "hidden" name = 'itemNameInput' value ="<?php echo $row["COL 2"];?>">
                <p><?php echo $row["COL 4"] ?> </p>
                <input type = "hidden" name = 'itemDescriptionInput' value ="<?php echo $row["COL 4"];?>">
                <span>$<?php echo $row["COL 3"] ?></span>
                <input type = "hidden" name = 'itemPriceInput' value ="<?php echo $row["COL 3"];?>">
                        </div>
               <br> <input type = "number" name = "quantity" value = "1">
               <br> <input type = "submit" class = "addCart" value = "ADD TO CART" name = "addToCart">
        </form>
    </div>
    
    <?php 
       
       
       
    } 
    ?></div>
    </div>
    
    
    
        <?php
    } else {
        echo "0 results";
        }
        ?><div class = "tabContent"><?php
    $sql = "SELECT * FROM menu_3 WHERE `COL 5` LIKE '%Entrees' OR `COL 5` LIKE
     'Chef%' OR `COL 5` LIKE '%Choices' OR `COL 5` LIKE '%Temaki' OR `COL 5` LIKE '%Dinners'";

    $result = $conn->query($sql);
    
    if ($result->num_rows > 0) {
        // output data of each tab
        ?><div class="container"><?php
        while($row = $result->fetch_assoc()) {
    
              ?>  <div class = "box">
                    <form action = "#menu" method = "POST">
                        <div class = "menuItem">
                        <h4><?php echo $row["COL 2"] ?></h4>
                        <input type = "hidden" name = 'itemNameInput' value ="<?php echo $row["COL 2"];?>">
                <p><?php echo $row["COL 4"] ?> </p>
                <input type = "hidden" name = 'itemDescriptionInput' value ="<?php echo $row["COL 4"];?>">
                <span>$<?php echo $row["COL 3"] ?></span>
                <input type = "hidden" name = 'itemPriceInput' value ="<?php echo $row["COL 3"];?>">
                        </div>
               <br> <input type = "number" name = "quantity" value = "1">
               <br> <input type = "submit" class = "addCart" value = "ADD TO CART" name = "addToCart">
        </form>
        </div>
        
        <?php 
       
       
       
    } 
    ?></div>
    </div>
    
    
    
        <?php
    } else {
        echo "0 results";
        }
        ?><div class = "tabContent"><?php
        $sql = "SELECT * FROM menu_3 WHERE `COL 5` LIKE '%Rolls' OR `COL 5` LIKE '%Combinations' OR `COL 5` LIKE '%Baskets'";

        $result = $conn->query($sql);
        
        if ($result->num_rows > 0) {
            // output data of each row
            ?><div class="container"><?php
            while($row = $result->fetch_assoc()) {
        
                 ?>   <div class = "box">
                        <form action = "#menu" method = "POST">
                            <div class = "menuItem">
                            <h4><?php echo $row["COL 2"] ?></h4>
                            <input type = "hidden" name = 'itemNameInput' value ="<?php echo $row["COL 2"];?>">
                    <p><?php echo $row["COL 4"] ?> </p>
                    <input type = "hidden" name = 'itemDescriptionInput' value ="<?php echo $row["COL 4"];?>">
                    <span>$<?php echo $row["COL 3"] ?></span>
                    <input type = "hidden" name = 'itemPriceInput' value ="<?php echo $row["COL 3"];?>">
                            </div>
                   <br> <input type = "number" name = "quantity" value = "1">
                   <br> <input type = "submit" class = "addCart" value = "ADD TO CART" name = "addToCart">
            </form>
            </div>
            
            <?php 
           
           
           
        } 
        ?></div>
        </div>
        
        
        
            <?php
        } else {
            echo "0 results";
            }
            ?><div class = "tabContent"><?php
            $sql = "SELECT * FROM menu_3 WHERE `COL 5` = 'Beverages'";
            
            $result = $conn->query($sql);
            
            if ($result->num_rows > 0) {
                // output data of each tab
                ?><div class="container"><?php
                while($row = $result->fetch_assoc()) {
            
                      ?>  <div class = "box">
                            <form action = "#menu" method = "POST">
                                <div class = "menuItem">
                                <h4><?php echo $row["COL 2"] ?></h4>
                                <input type = "hidden" name = 'itemNameInput' value ="<?php echo $row["COL 2"];?>">
                        <p><?php echo $row["COL 4"] ?> </p>
                        <input type = "hidden" name = 'itemDescriptionInput' value ="<?php echo $row["COL 4"];?>">
                        <span>$<?php echo $row["COL 3"] ?></span>
                        <input type = "hidden" name = 'itemPriceInput' value ="<?php echo $row["COL 3"];?>">
                                </div>
                       <br> <input type = "number" name = "quantity" value = "1">
                       <br> <input type = "submit" class = "addCart" value = "ADD TO CART" name = "addToCart">
                </form>
                </div>
                
                <?php 
                
                
                
            } 
            ?></div>
            </div>
            
            
            
                <?php
            } else {
                echo "0 results";
                }
                ?><div class = "tabContent"><?php
                $sql = "SELECT * FROM menu_3 WHERE `COL 5` = 'Desserts'";
                $result = $conn->query($sql);
                
                if ($result->num_rows > 0) {
                    // output data of each tab
                    ?><div class="container"><?php
                    while($row = $result->fetch_assoc()) {
                
               ?>             <div class = "box">
                                <form action = "#menu" method = "POST">
                                    <div class = "menuItem">
                                    <h4><?php echo $row["COL 2"] ?></h4>
                                    <input type = "hidden" name = 'itemNameInput' value ="<?php echo $row["COL 2"];?>">
                            <p><?php echo $row["COL 4"] ?> </p>
                            <input type = "hidden" name = 'itemDescriptionInput' value ="<?php echo $row["COL 4"];?>">
                            <span>$<?php echo $row["COL 3"] ?></span>
                            <input type = "hidden" name = 'itemPriceInput' value ="<?php echo $row["COL 3"];?>">
                                    </div>
                           <br> <input type = "number" name = "quantity" value = "1">
                           <br> <input type = "submit" class = "addCart" value = "ADD TO CART" name = "addToCart">
                    </form>
                    </div>
                    
                        <?php 
                   
                   
                   
                } 
                ?></div>
                </div>
                
                
                
                    <?php
                } else {
                    echo "0 results";
                    }
                    ?><div class = "tabContent"><?php
                    $sql = "SELECT * FROM menu_3 WHERE `COL 5` LIKE '%Menu'";
                    $result = $conn->query($sql);
                    
                    if ($result->num_rows > 0) {
                        // output data of each tab
                        ?><div class="container"> <?php
                        while($row = $result->fetch_assoc()) {
                    
                               ?> <div class = "box">
                                    <form action = "#menu" method = "POST">
                                        <div class = "menuItem">
                                        <h4><?php echo $row["COL 2"] ?></h4>
                                        <input type = "hidden" name = 'itemNameInput' value ="<?php echo $row["COL 2"];?>">
                                <p><?php echo $row["COL 4"] ?> </p>
                                <input type = "hidden" name = 'itemDescriptionInput' value ="<?php echo $row["COL 4"];?>">
                                <span>$<?php echo $row["COL 3"] ?></span>
                                <input type = "hidden" name = 'itemPriceInput' value ="<?php echo $row["COL 3"];?>">
                                        </div>
                               <br> <input type = "number" name = "quantity" value = "1">
                               <br> <input type = "submit" class = "addCart" value = "ADD TO CART" name = "addToCart">
                        </form>
                        </div>
                        
                        <?php 
                       
                       
                       
                    } 
                    ?></div>
                    </div>
                    
                    
                    
                        <?php
                    } else {
                        echo "0 results";
                        }
                        ?><div class = "tabContent"><?php
                        $sql = "SELECT * FROM menu_3 WHERE `COL 5` LIKE 'Extra%'";
                        $result = $conn->query($sql);
                        
                        if ($result->num_rows > 0) {
                            // output data of each tab
                            ?><div class="container"><?php
                            while($row = $result->fetch_assoc()) {
                        
                                   ?> <div class = "box">
                                        <form action = "#menu" method = "POST">
                                            <div class = "menuItem">
                                            <h4><?php echo $row["COL 2"] ?></h4>
                                            <input type = "hidden" name = 'itemNameInput' value ="<?php echo $row["COL 2"];?>">
                                    <p><?php echo $row["COL 4"] ?> </p>
                                    <input type = "hidden" name = 'itemDescriptionInput' value ="<?php echo $row["COL 4"];?>">
                                    <span>$<?php echo $row["COL 3"] ?></span>
                                    <input type = "hidden" name = 'itemPriceInput' value ="<?php echo $row["COL 3"];?>">
                                            </div>
                                   <br> <input type = "number" name = "quantity" value = "1">
                                   <br> <input type = "submit" class = "addCart" value = "ADD TO CART" name = "addToCart">
                            </form>
                            </div>
                            
                            <?php 
                           
                           
                           
                        } 
                        ?></div>
                        </div>
                        
                        
                        
                            <?php
                        } else {
                            echo "0 results";
                            }


$conn->close();

?>
                </div>         
                
		</section>
    <!-- Menu section ends-->


    <!--Footer/ info section starts here-->
    <!--google map-->
    <section class="inoformation" id="information">
        <div style="width: 100%"><iframe width="100%" height="400" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=100%25&amp;height=300&amp;hl=en&amp;q=1275%20N%20Atlantic%20Ave,%20Cocoa%20Beach,%20FL%2032931+(Siam%20Orchid)&amp;t=&amp;z=15&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"><a href="https://www.maps.ie/distance-area-calculator.html">area maps</a></iframe></div>

        <!--google maps end-->
        <footer class="footer-distributed">
            <div class="container">
                <div class="row">
                    <div class="footer-space">
                        <h4>Our Location</h4>
                        <p><i class="fa-solid fa-location-dot"></i>  1275 N Atlantic Ave, <br> Cocoa Beach, FL 32931</p>
                    </div>
                    <div class="footer-space">
                        <h4>Opening Hours</h4>
                        <p>Mon-Fri: 11:30pm - 10:00pm<br></p>
                        <p>Sat: 3:00pm - 10:00pm<br></p>
                        <p>Sun: Closed</p>
                    </div>
                    <div class="footer-space">
                        <h4>Contact Us</h4>
                        <p><i class="fa-solid fa-phone"></i> (321) 783-4545</p>
                        <div class="social-links">
                            <a href="https://www.instagram.com/siamorchidcocoabeach/?hl=en"><i class="fa-brands fa-instagram"></i></a>
                            <a href="https://www.facebook.com/SiamOrchidCocoaBeach/"><i class="fa-brands fa-facebook"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </section>
        

    <!--footer section ends here-->
<!-- slide link-->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
        <!--js file link-->
<script src="js/script.js"></script>
</body>

</html>