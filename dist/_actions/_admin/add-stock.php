<?php
include("../../vendor/autoload.php");

use Libs\Database\MySQL;
use Libs\Database\Stocks;
use Helpers\HTTP;

$data = new Stocks(new MySQL());

$name = $_POST['name'];
$gender_id = $_POST['gender_id'];
$topic_id = $_POST['topic_id'];
$category_id = $_POST['category_id'];
$brand_id = $_POST['brand_id'];
$color_id = $_POST['color_id'];
$price = $_POST['price'];
$detail = $_POST['detail'];

$input = [
    "name" => $name,
    "gender_id" => $gender_id,
    "topic_id" => $topic_id,
    "category_id" => $category_id,
    "brand_id" => $brand_id,
    "color_id" => $color_id,
    "price" => $price,
    "detail" => $detail
];

$product_id = $data->addProduct($input);

$targetDir = "../../assets/img/";
$allowTypes = array('jpg', 'png', 'jpeg', 'gif');
$fileNames = array_filter($_FILES['images']['name']);
foreach ($_FILES['images']['name'] as $key => $val) {
    $fileName = basename($_FILES['images']['name'][$key]);
    $targetFilePath = $targetDir . $fileName;
    $fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION);
    if (in_array($fileType, $allowTypes)) {
        if (move_uploaded_file($_FILES["images"]["tmp_name"][$key], $targetFilePath)) {
            $input = [
                "name" => $fileName,
                "product_id" => $product_id
            ];
            $data->addImage($input);
        }
    } else {
        echo "Invalid Image Type.";
    }
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

$query = "gender=" . $gender_id . "&topic=" . $topic_id;

HTTP::redirect("/admin/stocks.php", $query);
