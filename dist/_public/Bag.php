<?php
include("../vendor/autoload.php");

use Libs\Database\Stocks;
use Libs\Database\MySQL;

$data = new Stocks(new MySQL());
$bag = $_SESSION['bag'] ?? 0;
?>

<section class="bag-checkout">
    <section class="bag-container showcase container">
        <div class="bag-head">
            <h1>Shopping Bag</h1>
            <a href="../_actions/delete-from-bag.php?all=1"><i class="fa-solid fa-circle-minus"></i></a>
        </div>
        <?php if ($bag) : ?>
        <div class="bag">
            <?php foreach ($bag as $cell) :
                    $stock_id = $cell['stock_id'];
                    $stock = $data->getStock($stock_id);
                    $product = $data->getProduct($stock->product_id);
                ?>
            <div class="bag-row">
                <div class="img-side">
                    <div class="img-holder">
                        <a href="product-detail.php?id=<?= $product->id ?>">
                            <img src="../assets/img/<?php $images = $data->getImageByProduct($product->id);
                                                            echo $images[0]->image; ?>" alt="">
                        </a>
                    </div>
                    <div class="texts">
                        <div class="names">
                            <a
                                href="products.php?gender=<?= $product->gender_id ?>&topic=<?= $product->topic_id ?>&brand=<?= $product->brand_id ?>">
                                <h2><?= $product->brand ?></h2>
                            </a>
                            <a href="product-detail.php?id=<?= $product->id ?>">
                                <h4><?= $product->name ?></h4>
                            </a>
                        </div>
                        <div class="stock-info">
                            <h3><?= $stock->size ?></h3>
                            <h4><?= $product->price ?> <span class="unit">MMK</span>
                                <span class="quantity">(x<?= $cell['quantity'] ?>)</span>
                            </h4>
                        </div>
                    </div>
                </div>

                <div class="subtotal">
                    <h4><?php echo $product->price * $cell['quantity']; ?> <span class="unit">MMK</span></h4>
                </div>
                <a class="delete" href="../_actions/delete-from-bag.php?cell=<?= $cell['stock_id'] ?>"><i
                        class="fa-solid fa-circle-minus"></i></a>
            </div>
            <?php endforeach; ?>
        </div>
        <?php else : ?>
        <h2 class="no-bag">No product in shopping bag.</h2>
        <?php endif; ?>
    </section>

    <section class="container sign sign-in active">
        <div class="form-container">
            <h1>Sign In</h1>
            <form action="../_actions/verify-user.php" method="post">

                <?php if (isset($_GET['incorrect'])) : ?>
                <div class="alert error">
                    <h4>Sign in Failed. Please try again.</h4>
                </div>
                <?php endif; ?>

                <?php if (isset($_GET['success'])) : ?>
                <div class="alert success">
                    <h4>Account is created successfully. Please Sign in.</h4>
                </div>
                <?php endif; ?>

                <div class="inputs">
                    <input type="email" name="email" placeholder="john.doe@gmail.com"
                        value="<?php if (isset($_GET['email'])) echo $_GET['email'] ?>" required>
                    <input type="password" name="password" placeholder="xxxxxxxx" required>
                    <input type="submit" name="from_bag" class="btn btn-primary">
                </div>
            </form>
            <p>New Customer? <a class="create-account">Create an account</a></p>
        </div>
    </section>

    <section class="container sign create-account">
        <div class="form-container">
            <h1>Sign Up</h1>
            <form action="../_actions/add-user.php" method="post">
                <div class="inputs">
                    <input type="text" name="name" placeholder="John Doe" required>
                    <input type="email" name="email" placeholder="john.doe@gmail.com" required>
                    <input type="password" name="password" placeholder="xxxxxxxx" required>
                    <p>By creating an account, you agree to our <a href="#">Privacy Policy</a> and <a href="#">Terms of
                            Use.</a></p>
                    <input type="submit" name="from_bag" class="btn btn-primary">
                </div>
            </form>
            <p>Already have an account? <a class="sign-in">Sign in</a></p>
        </div>
    </section>


</section>