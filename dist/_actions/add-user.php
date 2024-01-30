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
    HTTP::redirect("/customer/index.php");
} else {
    HTTP::redirect("/public/signup.php");
}
