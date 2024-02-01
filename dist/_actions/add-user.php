<?php
include("../vendor/autoload.php");

use Libs\Database\MySQL;
use Libs\Database\Users;
use Helpers\HTTP;

$input = [
    "name" => $_POST['name'],
    "email" => $_POST['email'],
    "password" => md5($_POST['password']),
];

$data = new Users(new MySQL());
if ($data) {
    $data->addUser($input);
    if (isset($_POST['from_bag'])) {
        HTTP::redirect("/customer/bag.php");
    } else
        HTTP::redirect("/customer/index.php");
} else if (isset($_POST['from_bag'])) {
    echo HTTP::redirect("/public/bag.php");
} else
    echo HTTP::redirect("/public/signup.php");