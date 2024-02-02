<?php
include("../../vendor/autoload.php");

use Libs\Database\MySQL;
use Helpers\HTTP;
use Helpers\Auth;
use Libs\Database\Users;

$auth = Auth::adminCheck();
$user = new Users(new MySQL());
$checkout_id = $_GET['id'];

$user->updateCheckout($checkout_id);

HTTP::redirect("/admin/checkouts.php");
