<?php
include("../vendor/autoload.php");

use Helpers\Auth;

$auth = Auth::adminCheck();
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
    <header>
        <h1><a href="home.php">Union Dashboard</a></h1>
        <a href="../_actions/_admin/logout.php"><i class="fa-solid fa-right-from-bracket"></i></a>
    </header>

    <main>

        <!-- Buttons -->
        <section class="container btns">
            <?php if (isset($_GET['query_error'])) : ?>
            <div class="alert error">
                <h4>QUERY ERROR.</h4>
            </div>
            <?php endif; ?>

            <!-- Product Buttons -->
            <section class="btns-group product-btns">
                <a href="stocks.php?gender=1&topic=1" class="crud">
                    <h3>Men <span>Clothings</span></h3>
                </a>
                <a href="stocks.php?gender=1&topic=2" class="crud">
                    <h3>Men <span>Shoes</span></h3>
                </a>
                <a href="stocks.php?gender=1&topic=3" class="crud">
                    <h3>Men <span>Bags</span></h3>
                </a>
                <a href="stocks.php?gender=2&topic=1" class="crud">
                    <h3>Women <span>Clothings</span></h3>
                </a>
                <a href="stocks.php?gender=2&topic=2" class="crud">
                    <h3>Women <span>Shoes</span></h3>
                </a>
                <a href="stocks.php?gender=2&topic=3" class="crud">
                    <h3>Women <span>Bags</span></h3>
                </a>
            </section>

            <!-- Others Buttons -->
            <section class="btns-group other-btns">
                <a href="#" class="crud">
                    <h2>Users <span>286</span></h2>
                </a>
                <a href="#" class="crud">
                    <h2>Checkouts <span>17</span></h2>
                </a>
                <a href="#" class="crud">
                    <h2>Feedbacks <span>8</span></h2>
                </a>
                <a href="#" class="crud">
                    <h2>Popular Products <span>37</span></h2>
                </a>
            </section>
        </section>

        <!-- Table -->

    </main>
</body>

</html>