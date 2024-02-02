<?php

include("../vendor/autoload.php");

use Libs\Database\MySQL;
use Libs\Database\Users;
use Helpers\HTTP;
use Helpers\Auth;

$auth = Auth::check();
$user = new Users(new MySQL());
$id = $auth->id;

if (isset($_POST['edit_info'])) {
    if ($user->passwordCheck(md5($_POST['password']))) {
        $_SESSION['customer'] = $user->updateUserInfo($_POST['name'], $_POST['email'], $id);
        HTTP::redirect("/customer/profile.php", "info_success=1");
    } else {
        HTTP::redirect("/customer/profile.php", "pw_incorrect=1");
    }
} else if (isset($_POST['change_password'])) {
    $former = $_POST['former'];
    $new = $_POST['new'];
    $confirm = $_POST['confirm'];

    if ($user->passwordCheck(md5($former))) {
        if ($new == $confirm) {
            $_SESSION['customer'] = $user->updatePassword(md5($new), $id);
            HTTP::redirect("/customer/profile.php", "pw_success=1");
        } else {
            HTTP::redirect("/customer/profile.php", "pw_different=1");
        }
    } else {
        HTTP::redirect("/customer/profile.php", "pw_incorrect=1");
    }
}
