<?php
include("../../vendor/autoload.php");

use Libs\Database\MySQL;
use Libs\Database\Stocks;
use Helpers\HTTP;
use Helpers\Auth;

$auth = Auth::adminCheck();

$data = new Stocks(new MySQL());

$product_id = $_POST['id'];
$gender_id = $_POST['gender_id'];
$topic_id = $_POST['topic_id'];
$name = $_POST['name'];
$color_id = $_POST['color_id'];
$price = $_POST['price'];
$detail = $_POST['detail'];

$input = [
    "product_id" => $product_id,
    "name" => $name,
    "color_id" => $color_id,
    "price" => $price,
    "detail" => $detail
];

$data->updateProduct($input);

$sizes_stocks = $data->getSizesAndStocksByProduct($product_id);
foreach ($sizes_stocks as $size_stock) {
    $data->deleteStock($size_stock->id);
}

$sizes = $data->getSizeAll($topic_id);
foreach ($sizes as $s) {
    $size = $s->name;
    $$size = $_POST[$s->id];
    if ($$size) {
        $input = [
            "product_id" => $product_id,
            "size_id" => $s->id,
            "stock" => $$size
        ];
        $data->addStock($input);
    }
}

$query = "gender=" . $gender_id . "&topic=" . $topic_id . "&updated=1";

HTTP::redirect("/admin/stocks.php", $query);
