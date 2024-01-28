<?php
include("../vendor/autoload.php");

use Libs\Database\MySQL;
use Libs\Database\Functions;
use Helpers\HTTP;

$data = [
    "name" => $_POST['name'] ?? 'Unknown',
    "email" => $_POST['email'] ?? 'Unknown',
    "password" => md5($_POST['password']),
];

$table = new Functions(new MySQL());
if ($table) {
    $table->insertUser($data);
    HTTP::redirect("/customer/index.php");
} else {
    HTTP::redirect("/public/signup.php");
}
