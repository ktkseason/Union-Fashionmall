<?php
include("../vendor/autoload.php");

use Libs\Database\MySQL;
use Libs\Database\Stocks;
use Helpers\HTTP;

$data = new Stocks(new MySQL());
session_start();
// unset($_SESSION['cart']);
$product_id = $_GET['id'];

$product = $data->getProduct($product_id);

if ($product) {
    if (!isset($_SESSION['cart'])) {
        $_SESSION['cart'] = [];
    }

    if (isset($_SESSION['cart'][$product_id])) {
        $_SESSION['cart'][$product_id]['qty']++;
    } else {
        $_SESSION['cart'][$product_id] = [
            'product_id' => $product_id,
            'name' => $product->name,
            'color' => $product->color,
            'price' => $product->price,
            'detail' => $product->detail,
            'qty' => 1
        ];
    }
}

if (isset($_SESSION['customer_auth'])) {
    HTTP::redirect("/customer/cart.php");
} else {
    HTTP::redirect("/public/cart.php");
}
