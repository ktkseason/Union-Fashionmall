<?php
session_start();
include("../vendor/autoload.php");

use Libs\Database\MySQL;
use Libs\Database\Functions;
use Helpers\HTTP;

$email = $_POST['email'];
$password = md5($_POST['password']);
$table = new Functions(new MySQL());
$user = $table->loginCheck($email, $password);

if ($user) {
    $_SESSION['user'] = $user;
    if ($user->status) HTTP::redirect("/admin/home.php");
    else HTTP::redirect("/customer/index.php");
} else echo HTTP::redirect("/public/signin.php", "incorrect=1&email=$email");
