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
    <h1 class = "heading">Cart</h1>
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
    <button class = "orderbtn"><a href = "http://localhost/Siam-Orchid-Website-main/#menu">Go Back</a></button>
    <button class = "orderbtn"><a href = "http://localhost/Siam-Orchid-Website-main/checkout.php">Order for Pickup</a></button> <br>
    <h3>Delivery</h3>
    <button class = "orderbtn"><a href = "https://www.ubereats.com/">UberEats</a></button>
    <button class = "orderbtn"><a href = "https://www.doordash.com/">Door Dash</a></button>
</div>
</html>
</body>
