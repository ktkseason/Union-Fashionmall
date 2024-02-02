<?php
include("../vendor/autoload.php");

use Libs\Database\Stocks;
use Libs\Database\Users;
use Libs\Database\MySQL;

$user = new Users(new MySQL());
$data = new Stocks(new MySQL());

$checkouts = $user->getCheckoutByUser($auth->id);

?>

<section class="profile container">
    <div class="customer-info">
        <div class="customer-head">
            <a href="../_actions/logout.php"><i class="fa-solid fa-right-from-bracket"></i></a>
        </div>
        <div class="operate-info view-info">
            <div class="info-container">
                <div class="info">
                    <h1><?= $auth->name ?></h1>
                    <h2><?= $auth->email ?></h2>
                </div>
                <a href="../_actions/logout.php"><i class="fa-solid fa-user-pen"></i></a>
            </div>
        </div>
        <div class="operate-info edit-info">
            <form class="info" action="update-profile.php?id=<?= $auth->id ?>" method="post">
                <input type="text" name="name" value="<?= $auth->name ?>" placeholder="<?= $auth->name ?>" required>
                <input type="email" name="email" value="<?= $auth->email ?>" placeholder="<?= $auth->email ?>" required>
                <input type="submit" class="btn btn-primary">
            </form>
            <form class="password" action="update-profile.php?id=<?= $auth->id ?>" method="post">
                <input type="password" name="former" placeholder="Old Password" required>
                <input type="email" name="new" placeholder="New Password" required>
                <input type="email" name="confirm" placeholder="Confirm Password" required>
                <input type="submit" class="btn btn-primary">
            </form>

        </div>
    </div>
</section>