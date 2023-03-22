<!DOCTYPE html>
<html lang="en">
    <head>
 
    <link rel="stylesheet" href="css/style.css">

    </head>
    <body class = "cartbody">
        <header>
        <div class="logo"><a href="http://localhost/Siam-Orchid-Website-main"><img class="siam-orchid-logo" src="images/siam-orchid-logo.png" alt="Siam Orchind Logo"></a></div>
    <!-- header section ends-->

    <!-- home section starts-->
    <nav class="navbar">
                      
        </nav>
        </header>
        <?php 
    // Create connection
    $conn = new mysqli('localhost', 'root', '', 'menutest');
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    $sql = "SELECT * FROM Cart";
    $result = $conn->query($sql);
    
    
    
    
    if(isset($_GET['delete'])){
        $delete = $_GET['delete'];
        mysqli_query($conn, "DELETE FROM `cart` WHERE id = '$delete'");
        header('location:cart.php');
    }
    
    if ($result->num_rows > 0) {
        ?>
        <br> <br><br><br><br><br>
        <h1 class = "heading">Cart</h1>
            <div class = "cartTable">

                <table>
                    <tr>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Button</th>
                    </tr>
                    <?php
            $totalnumber = 0;
            while($row = $result->fetch_assoc()) 
            {
                ?>
            
            <tr>
                <td> <?php echo $row["name"]?></td>
                <td> <?php echo $row["description"]?></td>
                <td> $<?php echo $price = number_format($row["price"]);?></td>
                <td> <?php echo $quantity = $row["quantity"]?></td>
                <td><button class = "deletebtn"> <a href="cart.php?delete=<?php echo $row['id']; ?>" class = "deleteButton" >Delete</button></td>
            </tr>
            <?php

$totalnumber += $price * $quantity;
} 

?> 

<tr>
    <td>Total:</td>
    <td>$<?php echo $totalnumber?></td>
    
    
</tr>

</table>
</div>
<?php   

}

?>
<div class = "orderMethod">
    <button class = "orderbtn"><a href = "http://localhost/Siam-Orchid-Website-main/menu.php">Go Back</a></button>
    <title>Buy cool new product</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://js.stripe.com/v3/"></script>
  </head>
  <body>
    <section>
      <div class="product">
             <div class="description">
        
        </div>
      </div>
      <form action="http://localhost/Siam-Orchid-Website-main/checkout.php" method="POST">
        <button type="submit" class ="orderbtn"><div class = "checkstyle">Checkout</div></button>
      </form>
    <h3>Delivery</h3>
    <button class = "orderbtn"><a href = "https://www.ubereats.com/">UberEats</a></button>
    <button class = "orderbtn"><a href = "https://www.doordash.com/">Door Dash</a></button>
</div>

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
</html>
</body>
