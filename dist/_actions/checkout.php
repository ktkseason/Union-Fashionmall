<?php

include("../vendor/autoload.php");

use Libs\Database\MySQL;
use Libs\Database\Users;
use Libs\Database\Stocks;
use Helpers\HTTP;
use Helpers\Auth;

$auth = Auth::check();
$user = new Users(new MySQL());
$data = new Stocks(new MySQL());
$user_id = $auth->id;
$bag = $_SESSION['bag'];

$customer_information = json_encode([
    "name" => $_POST['name'],
    "email" => $_POST['email'],
    "phone" => $_POST['phone'],
    "address" => $_POST['address'],
    "city" => $_POST['city'],
    "region" => $_POST['region'],
    "postal" => $_POST['postal']
], true);

$card_information = json_encode([
    "card_no" => $_POST['card_no'],
    "name_on_card" => $_POST['name_on_card'],
    "expired_date" => $_POST['expired_date'],
    "cvv" => $_POST['cvv']
], true);

$products = json_encode($bag, true);

$input = [
    "user_id" => $user_id,
    "customer_information" => $customer_information,
    "card_information" => $card_information,
    "products" => $products
];

if ($user->addCheckout($input)) {
    foreach ($bag as $cell) {
        $stock_id = $cell['stock_id'];
        $stock = $data->getStock($stock_id);
        $stock_qty = $stock->stock - $cell['quantity'];
        $data->updateStock($stock_qty, $stock->id);
    }
    unset($_SESSION['bag']);
}

HTTP::redirect("/customer/bag.php", "success=1");
