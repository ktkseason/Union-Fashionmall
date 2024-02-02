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
    <?php if (isset($_GET['pw_incorrect'])) : ?>
    <div class="alert error">
        <h4>Password is incorrect. Sorry for inconvenience.</h4>
    </div>
    <?php endif; ?>
    <?php if (isset($_GET['pw_different'])) : ?>
    <div class="alert error">
        <h4>Confirm password must be the same. Sorry for inconvenience.</h4>
    </div>
    <?php endif; ?>
    <?php if (isset($_GET['info_success'])) : ?>
    <div class="alert success">
        <h4>Information is updated successfully.</h4>
    </div>
    <?php endif; ?>
    <?php if (isset($_GET['pw_success'])) : ?>
    <div class="alert success">
        <h4>Password is changed successfully.</h4>
    </div>
    <?php endif; ?>
    <div class="customer-info">
        <div class="view-info change-block active">
            <div class="info-container">
                <div class="info">
                    <h1><?= $auth->name ?></h1>
                    <h2><?= $auth->email ?></h2>
                </div>
                <a class="edit-info change-btn"><i class="fa-solid fa-user-pen"></i></a>
                <a href="../_actions/logout.php"><i class="fa-solid fa-right-from-bracket"></i></a>
            </div>
        </div>
        <div class="operate-info edit-info change-block">
            <div class="head">
                <h2>Edit Information</h2>
                <p class="change-password change-btn">Change Password</p>
            </div>
            <form class="info" action="../_actions/update-profile.php" method="post">
                <input type="text" name="name" value="<?= $auth->name ?>" placeholder="<?= $auth->name ?>" required>
                <input type="email" name="email" value="<?= $auth->email ?>" placeholder="<?= $auth->email ?>" required>
                <input type="password" name="password" placeholder="xxxxxxxx" required>
                <input type="submit" name="edit_info" class="btn btn-primary">
            </form>
        </div>
        <div class="operate-info change-password change-block">
            <div class="head">
                <h2>Change Password</h2>
                <p class="view-info change-btn">Back to View</p>
            </div>
            <form class="password" action="../_actions/update-profile.php" method="post">
                <input type="password" name="former" placeholder="Old Password" required>
                <input type="password" name="new" placeholder="New Password" required>
                <input type="password" name="confirm" placeholder="Confirm Password" required>
                <input type="submit" name="change_password" class="btn btn-primary">
            </form>
        </div>
    </div>

    <div class="history">
        <h1>Checkout History</h1>
        <div class="history-container showcase">
            <?php if ($checkouts) : ?>
            <div class="checkout-container">
                <?php foreach ($checkouts as $checkout) :
                        $customer = json_decode($checkout->customer_information);
                        $products = json_decode($checkout->products);
                    ?>
                <div class="checkout">
                    <div class="checkout-head">
                        <h4>By: <?= $customer->name ?> <span>( <?= $customer->email ?> ) ( <?= $customer->phone ?>
                                )</span>
                        </h4>
                        <div class="update">
                            <?php if ($checkout->status) : ?>
                            <i class="fa-solid fa-circle-check shipped"></i>
                            <?php else : ?>
                            <i class="fa-solid fa-circle-dot pending"></i>
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="products">
                        <?php foreach ($products as $product) : ?>
                        <div class="product">
                            <div class="img-holder">
                                <img src="../assets/img/<?php $images = $data->getImageByProduct($product->id);
                                                                    echo $images[0]->image; ?>" alt="">
                            </div>
                            <div class="texts">
                                <div class="names">
                                    <h2><?= $product->brand ?></h2>
                                    <h4><?= $product->name ?></h4>
                                </div>
                                <div class="stock-info">
                                    <div class="one">
                                        <h4><?= $product->size ?></h4>
                                        <h4><?= $product->price ?> <span class="unit">MMK</span>
                                            <span class="quantity">(x<?= $product->quantity ?>)</span>
                                        </h4>
                                    </div>
                                    <h4>Total: <?php $total = 0;
                                                            $total += $product->price * $product->quantity;
                                                            echo $product->price * $product->quantity; ?>
                                        <span class="unit">MMK</span>
                                    </h4>
                                </div>
                            </div>
                        </div>
                        <?php endforeach; ?>
                        <div class="info-card">
                            <div class="texts">
                                <h2>To: <?= $customer->name ?></h2>
                                <h3><?= $customer->address ?>, <?= $customer->city ?>, <?= $customer->region ?>,
                                    <?= $customer->postal ?></h3>
                                <div class="contact">
                                    <h4><?= $customer->email ?></h4>
                                    <h4><?= $customer->phone ?></h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <?php endforeach; ?>
            </div>
            <?php else : ?>
            <h2 class="sorry">No checkout history.</h2>
            <?php endif; ?>
        </div>
    </div>
</section>