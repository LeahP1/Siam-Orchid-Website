<?php

require 'vendor/autoload.php';
require_once '../Siam-Orchid-Website-main/secrets.php';

$stripe = new \Stripe\StripeClient($stripeSecretKey);
$conn = new mysqli('localhost', 'root', '', 'menutest');
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    $sql = "SELECT * FROM Cart";
    $result = $conn->query($sql);

  $totalnumber = 0;
  $decimalTotalNumber = 0;
  while($row = $result->fetch_assoc()) {
    $price = number_format($row["price"]);
    $quantity = $row["quantity"];
    $totalnumber += $price * $quantity;
    $decimalTotalNumber = $totalnumber * 100;

  }
    if ($result->num_rows > 0) {
$checkout_session = $stripe->checkout->sessions->create([
  'line_items' => [[
    'price_data' => [
      'currency' => 'usd',
      'product_data' => [
        'name' => 'Total',
      ],
      'unit_amount' => $decimalTotalNumber,
    ],
    'quantity' => 1,
  ]],
  'mode' => 'payment',
  'success_url' => 'http://localhost/Siam-Orchid-Website-main/success.html',
  'cancel_url' => 'http://localhost/Siam-Orchid-Website-main/cart.php',
]);
    }
header("HTTP/1.1 303 See Other");
header("Location: " . $checkout_session->url);
?>