<?php
include("../../vendor/autoload.php");

use Libs\Database\MySQL;
use Libs\Database\Stocks;
use Helpers\HTTP;
use Helpers\Auth;

$auth = Auth::adminCheck();

$data = new Stocks(new MySQL());

$gender_id = $_GET['gender'];
$topic_id = $_GET['topic'];
$id = $_GET['id'];

$data->deleteImageByProduct($id);
$data->deleteStockByProduct($id);
$data->deleteProduct($id);

$query = "gender=" . $gender_id . "&topic=" . $topic_id;
HTTP::redirect("/admin/stocks.php", $query);
