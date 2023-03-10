<?php

require_once '../Siam-Orchid-Website-main/vendor/autoload.php';
require_once '../Siam-Orchid-Website-main/secrets.php';

\Stripe\Stripe::setApiKey($stripeSecretKey);
header('Content-Type: application/json');

$YOUR_DOMAIN = 'http://localhost:4242';
$conn = new mysqli('localhost', 'root', '', 'menutest');
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    $sql = "SELECT * FROM Cart";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
      
$checkout_session = \Stripe\Checkout\Session::create([
  
  'line_items' => [[
    # Provide the exact Price ID (e.g. pr_1234) of the product you want to sell
    'price' => 'price_1MjtBXFyXmQEoOVvDpIpbab8',
    'quantity' => 1,
  ]],
  'mode' => 'payment',
  'success_url' =>'http://localhost/Siam-Orchid-Website-main/success.html',
  'cancel_url' => 'http://localhost/Siam-Orchid-Website-main/menu.php',
]);
    }
header("HTTP/1.1 303 See Other");
header("Location: " . $checkout_session->url);

?>