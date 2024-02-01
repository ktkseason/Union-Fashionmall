<?php
session_start();
include("../vendor/autoload.php");

use Libs\Database\MySQL;
use Libs\Database\Users;
use Helpers\HTTP;

$email = $_POST['email'];
$password = md5($_POST['password']);

$table = new Users(new MySQL());
$user = $table->loginCheck($email, $password);

if ($user) {
    if ($user->status) {
        $_SESSION['admin_auth'] = true;
        $_SESSION['admin'] = $user;
        HTTP::redirect("/admin/home.php");
    } else {
        $_SESSION['customer_auth'] = true;
        $_SESSION['customer'] = $user;
        if (isset($_POST['from_bag'])) {
            HTTP::redirect("/customer/bag.php");
        } else
            HTTP::redirect("/customer/index.php");
    }
} else if (isset($_POST['from_bag'])) {
    echo HTTP::redirect("/public/bag.php", "incorrect=1&email=$email");
} else
    echo HTTP::redirect("/public/signin.php", "incorrect=1&email=$email");
