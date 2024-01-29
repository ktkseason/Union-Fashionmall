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
                                    <h3>Clothings</h3>
                                    <div class="categories">
                                        <?php foreach ($categories as $category) :
                                            if ($category->gender_id == 1 && $category->topic_id == 1) : ?>
                                        <div>
                                            <a
                                                href="products.php?gender=<?= $category->gender_id ?>&topic=<?= $category->topic_id ?>&category=<?= $category->id ?>"><?= $category->name ?></a>
                                        </div>
                                        <?php endif;
                                        endforeach; ?>
                                    </div>
                                </div>
                                <div class="shoes">
                                    <h3>Shoes</h3>
                                    <div class="categories">
                                        <?php foreach ($categories as $category) :
                                            if ($category->gender_id == 1 && $category->topic_id == 2) : ?>
                                        <div>
                                            <a
                                                href="products.php?gender=<?= $category->gender_id ?>&topic=<?= $category->topic_id ?>&category=<?= $category->id ?>"><?= $category->name ?></a>
                                        </div>
                                        <?php endif;
                                        endforeach; ?>
                                    </div>
                                </div>
                                <div class="bags">
                                    <h3>Bags</h3>
                                    <div class="categories">
                                        <?php foreach ($categories as $category) :
                                            if ($category->gender_id == 1 && $category->topic_id == 3) : ?>
                                        <div>
                                            <a
                                                href="products.php?gender=<?= $category->gender_id ?>&topic=<?= $category->topic_id ?>&category=<?= $category->id ?>"><?= $category->name ?></a>
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
                                    <h3>Clothings</h3>
                                    <div class="categories">
                                        <?php foreach ($categories as $category) :
                                            if ($category->gender_id == 2 && $category->topic_id == 1) : ?>
                                        <div>
                                            <a
                                                href="products.php?gender=<?= $category->gender_id ?>&topic=<?= $category->topic_id ?>&category=<?= $category->id ?>"><?= $category->name ?></a>
                                        </div>
                                        <?php endif;
                                        endforeach; ?>
                                    </div>
                                </div>
                                <div class="shoes">
                                    <h3>Shoes</h3>
                                    <div class="categories">
                                        <?php foreach ($categories as $category) :
                                            if ($category->gender_id == 2 && $category->topic_id == 2) : ?>
                                        <div>
                                            <a
                                                href="products.php?gender=<?= $category->gender_id ?>&topic=<?= $category->topic_id ?>&category=<?= $category->id ?>"><?= $category->name ?></a>
                                        </div>
                                        <?php endif;
                                        endforeach; ?>
                                    </div>
                                </div>
                                <div class="bags">
                                    <h3>Bags</h3>
                                    <div class="categories">
                                        <?php foreach ($categories as $category) :
                                            if ($category->gender_id == 2 && $category->topic_id == 3) : ?>
                                        <div>
                                            <a
                                                href="products.php?gender=<?= $category->gender_id ?>&topic=<?= $category->topic_id ?>&category=<?= $category->id ?>"><?= $category->name ?></a>
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
                    <i class="search-icon fa-solid fa-magnifying-glass"></i>
                    <form action="">
                        <i class="fa-solid fa-magnifying-glass"></i>
                        <input type="text" placeholder="Search">
                    </form>
                </li>
                <li class="wishlist">
                    <a href="wishlist.php"><i class="fa-solid fa-heart"></i></a>
                </li>
                <li class="cart">
                    <div class="badge">12</div>
                    <a href="cart.php"><i class="fa-solid fa-bag-shopping"></i></a>
                </li>
                <li class="profile">
                    <a href="profile.php"><i class="fa-solid fa-user"></i></a>
                </li>
            </ul>
        </div>
    </header>