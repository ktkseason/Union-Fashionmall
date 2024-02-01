<?php
include("../vendor/autoload.php");

use Libs\Database\MySQL;
use Libs\Database\Stocks;
use Helpers\HTTP;

$data = new Stocks(new MySQL());
session_start();
// unset($_SESSION['bag']);

$product_id = $_POST['product_id'];
$sizes_stocks = $data->getSizesAndStocksByProduct($product_id);

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
print_r($_SESSION['bag']);
echo "<br>";
print_r($stocks);

$query = "id=" . $product_id;
if (isset($_SESSION['customer_auth'])) {
    HTTP::redirect("/customer/product-detail.php", $query);
} else {
    HTTP::redirect("/public/product-detail.php", $query);
}
