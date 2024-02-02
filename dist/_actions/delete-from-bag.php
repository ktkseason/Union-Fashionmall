<?php
include("../vendor/autoload.php");

use Helpers\HTTP;

session_start();

$all = $_GET['all'] ?? 0;
$cell = $_GET['cell'] ?? 0;
if ($all) {
    unset($_SESSION['bag']);
}

if ($cell) {
    unset($_SESSION['bag'][$cell]);
}

if (isset($_SESSION['customer_auth'])) {
    HTTP::redirect("/customer/bag.php");
} else {
    HTTP::redirect("/public/bag.php");
}
