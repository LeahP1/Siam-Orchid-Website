<!DOCTYPE html>
<html lang="en">
    <head>
 

    </head>
    <body>

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
        ?><table>
            <tr>
                <th>Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Button</th>
                </tr>
            <?php
        while($row = $result->fetch_assoc()) 
        {
            ?>
             <tr>
                <td> <?php echo $row["name"]?></td>
                <td> <?php echo $row["description"]?></td>
                <td> <?php echo $row["price"]?></td>
                <td> <?php echo $row["quantity"]?></td>
                <td> <a href="cart.php?delete=<?php echo $row['id']; ?>" class = "deleteButton" >Delete</td>
             </tr>

             <?php
        }
           ?> 

           <tr>
            <td></td>
           </tr>
        
        </table><?php   

    }
    
    ?>
    <button><a href = "http://localhost/Siam-Orchid-Website-main/#menu">Go Back</a></button>
    <button><a href = "http://localhost/Siam-Orchid-Website-main/checkout.php">Order for Pickup</a></button>
    <button><a href = "https://www.ubereats.com/">UberEats</a></button>
    <button><a href = "https://www.doordash.com/">Door Dash</a></button>
</html>
</body>

