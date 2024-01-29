<?php
include("../../vendor/autoload.php");

use Libs\Database\MySQL;
use Libs\Database\Users;
use Helpers\HTTP;

// $data = [
//     "name" => $_POST['name'],
// ];

echo $_POST['name'] . "<br>";
echo $_POST['gender_id'] . "<br>";
echo $_POST['topic_id'] . "<br>";
echo $_POST['category_id'] . "<br>";
echo $_POST['brand_id'] . "<br>";
echo $_POST['color_id'] . "<br>";
echo $_POST['price'] . "<br>";
echo $_POST['detail'] . "<br>";

$table = new Users(new MySQL());
// if ($table) {
//     $table->insertUser($data);
//     HTTP::redirect("/customer/index.php");
// } else {
//     HTTP::redirect("/public/signup.php");
// }