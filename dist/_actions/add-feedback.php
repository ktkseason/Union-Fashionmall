<?php
include("../vendor/autoload.php");

use Libs\Database\MySQL;
use Libs\Database\Users;
use Helpers\HTTP;

$data = new Users(new MySQL());

$input = [
    "name" => $_POST['name'],
    "email" => $_POST['email'],
    "subject" => $_POST['subject'],
    "feedback" => $_POST['feedback']
];

$data->addFeedback($input);

session_start();
if (isset($_SESSION['customer_auth'])) {
    HTTP::redirect("/customer/contact.php", "success=1");
} else {
    HTTP::redirect("/public/contact.php", "success=1");
}
