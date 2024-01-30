<?php
include("../vendor/autoload.php");

use Libs\Database\MySQL;
use Libs\Database\Users;
use Helpers\HTTP;
use Helpers\Auth;

$auth = Auth::check();

$data = new Users(new MySQL());
$product_id = $_GET['product_id'];

$wishes = $data->getWishAll($auth->id);
$wish_products = [];
foreach ($wishes as $wish) {
    $wish_products[] = $wish->product_id;
}

if (in_array($product_id, $wish_products)) {
    $data->deleteWish($product_id);
} else {
    $input = [
        "product_id" => $_GET['product_id'],
        "customer_id" => $auth->id
    ];

    $data->addWish($input);
}

HTTP::redirect("/customer/wishlist.php");
