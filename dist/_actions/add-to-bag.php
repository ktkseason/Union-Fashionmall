<?php
include("../vendor/autoload.php");

use Libs\Database\MySQL;
use Libs\Database\Stocks;
use Helpers\HTTP;

$data = new Stocks(new MySQL());
session_start();

$product_id = $_POST['product_id'];
$sizes_stocks = $data->getSizesAndStocksByProduct($product_id);

$query = "id=" . $product_id;

if (!isset($_SESSION['bag'])) {
    $_SESSION['bag'] = [];
}

foreach ($sizes_stocks as $size_stock) {
    $getQty = "quantity_" . $size_stock->id;
    $stock_id = $_POST[$size_stock->id];
    $quantity = $_POST[$getQty];
    $stock = $data->getStock($stock_id);

    if ($quantity) {
        if (isset($_SESSION['bag'][$stock_id])) {
            if ($size_stock->stock < $_SESSION['bag'][$stock_id]['quantity'] + $quantity) {
                $query .= "&exceed=1";
                if (isset($_SESSION['customer_auth'])) {
                    HTTP::redirect("/customer/product-detail.php", $query);
                } else {
                    HTTP::redirect("/public/product-detail.php", $query);
                }
            } else
                $_SESSION['bag'][$stock_id]['quantity'] += $quantity;
        } else {
            $_SESSION['bag'][$stock_id] = [
                'stock_id' => $stock_id,
                'product_id' => $stock->product_id,
                'quantity' => $quantity
            ];
        }
    }
}

$query .= "&success=1";
if (isset($_SESSION['customer_auth'])) {
    HTTP::redirect("/customer/product-detail.php", $query);
} else {
    HTTP::redirect("/public/product-detail.php", $query);
}
