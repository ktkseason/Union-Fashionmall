<?php
include("../vendor/autoload.php");

use Libs\Database\MySQL;
use Libs\Database\Users;
use Helpers\HTTP;

$data = [
    "name" => $_POST['name'],
    "email" => $_POST['email'],
    "password" => md5($_POST['password']),
];

$table = new Users(new MySQL());
if ($table) {
    $table->insertUser($data);
    HTTP::redirect("/customer/index.php");
} else {
    HTTP::redirect("/public/signup.php");
}