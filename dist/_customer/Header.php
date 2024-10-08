<?php
include("../vendor/autoload.php");

use Helpers\Auth;
use Libs\Database\Stocks;
use Libs\Database\MySQL;

$auth = Auth::check();

$data = new Stocks(new MySQL());
$categories = $data->getCategoryAll();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="../assets/css/main.css">
    <link rel="shortcut icon" href="../assets/img/logo-icon.png" type="image/x-icon">
    <title>Union Fashion Mall</title>
</head>

<body>
    <!-- Header -->
    <div class="forehead">
        <div class="contact-box">
            <div class="contact">
                <div>
                    <h4>
                        <a href="#"><i class="fa-solid fa-phone"></i>+95 987654321</a>
                    </h4>
                </div>
                <div>
                    <h4>
                        <a href="#"><i class="fa-solid fa-envelope"></i>union.fashion.com</a>
                    </h4>
                </div>
            </div>
        </div>
    </div>
    <header>
        <div class="left-part">
            <div class="burger">
                <i class="fa-solid fa-bars"></i>
            </div>
            <a href="index.php" class="logo">
                <img src="../assets/img/logo.png" alt="Union">
            </a>
        </div>
        <nav>
            <div class="home">
                <a href="index.php">Home</a>
            </div>
            <div class="about">
                <a href="about.php">About</a>
            </div>
            <div class="nav-dropdown">
                <div class="product-text">
                    Products<i class="dropdown-icon fa-solid fa-angle-down"></i>
                </div>
                <div class="products-dropdown">
                    <div>
                        <a href="products.php?new=1">New Arrivals</a>
                    </div>
                    <div class="gender-topics">
                        <div>
                            <h4>Men</h4>
                            <div class="products">
                                <div class="clothings">
                                    <a href="products.php?gender=1&topic=1">
                                        <h3>Clothings</h3>
                                    </a>
                                    <div class="categories">
                                        <?php foreach ($categories as $category) :
                                            if ($category->gender_id == 1 && $category->topic_id == 1) : ?>
                                        <div>
                                            <a href="products.php?gender=1&topic=1&category=<?= $category->id ?>">
                                                <?= $category->name ?>
                                            </a>
                                        </div>
                                        <?php endif;
                                        endforeach; ?>
                                    </div>
                                </div>
                                <div class="shoes">
                                    <a href="products.php?gender=1&topic=2">
                                        <h3>Shoes</h3>
                                    </a>
                                    <div class="categories">
                                        <?php foreach ($categories as $category) :
                                            if ($category->gender_id == 1 && $category->topic_id == 2) : ?>
                                        <div>
                                            <a
                                                href="products.php?gender=1&topic=2&category=<?= $category->id ?>"><?= $category->name ?></a>
                                        </div>
                                        <?php endif;
                                        endforeach; ?>
                                    </div>
                                </div>
                                <div class="bags">
                                    <a href="products.php?gender=1&topic=3">
                                        <h3>Bags</h3>
                                    </a>
                                    <div class="categories">
                                        <?php foreach ($categories as $category) :
                                            if ($category->gender_id == 1 && $category->topic_id == 3) : ?>
                                        <div>
                                            <a
                                                href="products.php?gender=1&topic=3&category=<?= $category->id ?>"><?= $category->name ?></a>
                                        </div>
                                        <?php endif;
                                        endforeach; ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div>
                            <h4>Women</h4>
                            <div class="products">
                                <div class="clothings">
                                    <a href="products.php?gender=2&topic=1">
                                        <h3>Clothings</h3>
                                    </a>
                                    <div class="categories">
                                        <?php foreach ($categories as $category) :
                                            if ($category->gender_id == 2 && $category->topic_id == 1) : ?>
                                        <div>
                                            <a
                                                href="products.php?gender=2&topic=1&category=<?= $category->id ?>"><?= $category->name ?></a>
                                        </div>
                                        <?php endif;
                                        endforeach; ?>
                                    </div>
                                </div>
                                <div class="shoes">
                                    <a href="products.php?gender=2&topic=2">
                                        <h3>Shoes</h3>
                                    </a>
                                    <div class="categories">
                                        <?php foreach ($categories as $category) :
                                            if ($category->gender_id == 2 && $category->topic_id == 2) : ?>
                                        <div>
                                            <a
                                                href="products.php?gender=2&topic=2&category=<?= $category->id ?>"><?= $category->name ?></a>
                                        </div>
                                        <?php endif;
                                        endforeach; ?>
                                    </div>
                                </div>
                                <div class="bags">
                                    <a href="products.php?gender=2&topic=3">
                                        <h3>Bags</h3>
                                    </a>
                                    <div class="categories">
                                        <?php foreach ($categories as $category) :
                                            if ($category->gender_id == 2 && $category->topic_id == 3) : ?>
                                        <div>
                                            <a
                                                href="products.php?gender=2&topic=3&category=<?= $category->id ?>"><?= $category->name ?></a>
                                        </div>
                                        <?php endif;
                                        endforeach; ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="contact">
                <a href="contact.php">Contact</a>
            </div>
        </nav>
        <div class="same-part">
            <ul class="working-icons">
                <li class="search">
                    <a href="search.php"><i class="search-icon fa-solid fa-magnifying-glass"></i></a>
                </li>
                <li class="wishlist">
                    <a href="wishlist.php"><i class="fa-solid fa-heart"></i></a>
                </li>
                <li class="bag">
                    <?php $total = 0;
                    if (isset($_SESSION['bag'])) :
                        foreach ($_SESSION['bag'] as $val) {
                            $total += $val['quantity'];
                        } ?>
                    <div class="badge"><?= $total ?></div>
                    <?php endif; ?>
                    <a href="bag.php"><i class="fa-solid fa-bag-shopping"></i></a>
                </li>
                <li class="profile">
                    <a href="profile.php"><i class="fa-solid fa-user"></i></a>
                </li>
            </ul>
        </div>
    </header>