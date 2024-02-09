<?php

include("../vendor/autoload.php");

use Helpers\Auth;
use Libs\Database\MySQL;
use Libs\Database\Users;
use Libs\Database\Stocks;

$auth = Auth::adminCheck();

$search = $_GET['search'] ?? '';

$user = new Users(new MySQL());
$data = new Stocks(new MySQL());

if ($search) {
    $customers = $user->getUserByCheckoutOnSearch($search);
} else {
    $customers = $user->getUserByCheckout();
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="../assets/css/main.css">
    <link rel="shortcut icon" href="../assets/img/logo-icon.png" type="image/x-icon">
    <title>Union Fashion Mall</title>
</head>

<body>
    <header>
        <h1><a href="home.php">Union Dashboard</a></h1>
        <a href="../_actions/_admin/logout.php"><i class="fa-solid fa-right-from-bracket"></i></a>
    </header>

    <main>
        <section class="admin-checkouts container">
            <h2>Customers</h2>
            <section class="head">
                <div class="caption admin-search">
                    <form class="search" action="">
                        <input type="text" name="search" value="<?= $search ?>" placeholder=" Search">
                        <input type="submit" class="btn btn-primary" value="Search">
                    </form>
                </div>
            </section>
            <?php if ($customers) :
                foreach ($customers as $customer) :
                    $checkouts = $user->getCheckoutByUser($customer->id);
            ?>
                    <h1 class="admin-customers"><?= $customer->name ?> / <span><?= $customer->email ?></span> </h1>
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
                <?php endforeach; ?>
            <?php else : ?>
                <p>No Customer Result.</p>
            <?php endif; ?>
        </section>

    </main>
</body>

</html>