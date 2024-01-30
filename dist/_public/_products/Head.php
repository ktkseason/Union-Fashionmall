<?php
include("../vendor/autoload.php");

use Helpers\HTTP;
use Libs\Database\Stocks;
use Libs\Database\MySQL;

$data = new Stocks(new MySQL());
$head = "";

if (isset($_GET['gender']) && isset($_GET['topic']) && isset($_GET['category'])) {
    $gender_id = $_GET['gender'];
    $topic_id = $_GET['topic'];
    $category_id = $_GET['category'];

    $gender = $data->getGender($gender_id);
    $topic = $data->getTopic($topic_id);
    $category = $data->getCategory($category_id);

    $head = "$gender $topic $category";
} else if (isset($_GET['gender']) && isset($_GET['topic'])) {
    $gender_id = $_GET['gender'];
    $topic_id = $_GET['topic'];

    $gender = $data->getGender($gender_id);
    $topic = $data->getTopic($topic_id);

    $head = "$gender $topic";
} else if (isset($_GET['new'])) {
    $head = "New Arrivals";
} else {
    $head = "Products"; // all stocks
}
?>

<!-- Head -->
<section class="container head">
    <h4>Products &raquo; <a href="#">product</a> &raquo; <a href="#">category</a></h4>
    <div class="caption">
        <h1><?= $gender . " " . $topic ?></h1>
    </div>
</section>