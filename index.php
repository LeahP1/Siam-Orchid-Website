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
        
        $sql = "SELECT COUNT(*) AS totalrows FROM cart";
            $countrows = $conn->query($sql);
            $count = mysqli_fetch_assoc($countrows);
            $number_rows = $count['totalrows']
            
            ?>

    <!-- header section starts-->
    <header>
        <div class="logo"><a href="http://localhost/Siam-Orchid-Website-main"><img class="siam-orchid-logo" src="images/siam-orchid-logo.png" alt="Siam Orchind Logo"></a></div>
        <nav class="navbar">
            <a  class="active" href="http://localhost/Siam-Orchid-Website-main/#home">HOME</a>
            <a href="http://localhost/Siam-Orchid-Website-main/#about">ABOUT</a>
            <a href="menu.php">MENU</a>
            <a href="http://localhost/Siam-Orchid-Website-main/#information">INFO</a>
           
        </nav>

        <div class="icons">
            <i class="fa-solid fa-bars" id="menu-bars"></i>
            <?php 
        
                ?><a href="http://localhost/Siam-Orchid-Website-main/cart.php" class="fa-solid fa-cart-shopping"><span><?php echo $number_rows?></span></a><?php
    
            ?>
        </div>
    </header>
    <!-- header section ends-->

    <!-- home section starts-->
    <section class="home" id="home">
         <div class="content">
             <div class="image-home">
                 <img src="images/thai_food_homepage.jpg" alt="Our Thai Cusine">
             </div>
         </div>
    </section>
    <!-- home section ends-->

    <!-- About section starts here-->
   
    <section class="about" id="about">

        <h1 class="heading">ABOUT US</h1>

             <div class="row"> 
                 <div class="content">
                    <h3 class="heading3">Welcome to Siam Orchid!</h3>
                    <p>Come experience the exotic flavors of Thailand and Japan created by international Chef Surawat. This contemporary Thai Restaurant and Sushi Bar is located along Cocoa Beach, Florida and offers the most delectably fresh and flavorful Thai and Japanese cuisine.</p>
                    <p>Chef Surawat's blend of fresh seafood, spices and flavors will entice you to explore our entire menu as you enjoy a wonderful dining exprience throughout the tastes of Asia with our friendly staff in a pleasant and contemporary atmosphere.</p>
             </div>
            
             <div class="image">
                <img class="image2" src="images/aboutus-sushi.jpg" alt="Image of Chef putting plate together">
             </div>
        </div>

    <!--About section ends here-->

    <!--slider for the cusine type information starts here-->
    <div class="container">

            <div class="swiper home-slider">
        
                <div class="swiper-wrapper">
        
                    <div class="swiper-slide slide">
                        <div class="content">
                            <h3>Thai Cuisine</h3>
                            <p>Thai food is famous throughout the world, where harmony and balance is the guiding principle. Thai cuisine is a blend of eastern and western influences with five disctinct flavors harmoniously balanced to create a delicious, aromatic and flavorful taste uniquely Thai.<br></p>
                            <p><br>A typical Thai meal is usually a communal affair where diners share with each other and the more diners means the more dishes to taste. Siam Orchid offers the freshest ingredients of seafood, meats, vegetables, spices and herbs in a friendly atmosphere to transport your palatte through Thailand.</p>
                            <a href="http://localhost/Siam-Orchid-Website-main/menu.php" class="btn">order now</a>
                        </div>
                        <div class="image">
                            <img src="images/thai-dish.png" alt="A Picture Of A Thai Food Dish">
                        </div>
                    </div>
        
                    <div class="swiper-slide slide">
                        <div class="content">
                            <h3>Japanese Cuisine</h3>
                            <p>Japanese cuisine is influenced by the seasons and the geography that surrounds it and freshness, presentation and balance of flavors are paramount. Japanese food is also recognized as one of the worlds healtiest cuisines.<br></p>
                            <p><br>Japanese cuisine should be skillfully and artfully presented and enjoyed by the eyes first and then the palatte. Siam Orchid skillfully offers traditional and fusion Japanese and Thai dishes with the freshest ingredients of seafood, meats, vegetables, spices and herbs in a friendly atmosphere.</p>
                            <a href="http://localhost/Siam-Orchid-Website-main/menu.php" class="btn">order now</a>
                        </div>
                        <div class="image">
                            <img src="images/japanese-dish.png" alt="A Picture Of a Fish Type Japanese Style Dish">
                        </div>
                    </div>

                    <div class="swiper-slide slide">
                        <div class="content">
                            <h3>Lounge</h3>
                            <p> Our Lounge offers a wide array of domestic and interational beers, wines and cocktails Take a look on our menu to see what our specialty drinks are.<br></p>
                            <p><br>There are also rooms available for private parties, business functions or large party dining and catering. To reserve a private room or a table, please call us at (321) 783-4545.</p>
                        </div>
                        <div class="image">
                            <img src="images/cocktail.png" alt="An Image of a Multi Colored Cocktail in a glass">
                        </div>
                    </div>
                </div>
        
                <div class="swiper-pagination"></div>
        
            </div>
    
        </div>
    </section>
    <!--Slider ends here-->
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