<?php
include("../vendor/autoload.php");

use Libs\Database\Stocks;
use Libs\Database\MySQL;

$data = new Stocks(new MySQL());
$bag = $_SESSION['bag'] ?? 0;
$total = 0;
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
                                <img src="../assets/img/<?php $images = $data->getImageByProduct($product->id);
                                                        echo $images[0]->image; ?>" alt="">
                            </div>
                            <div class="texts">
                                <div class="names">
                                    <h2><?= $product->brand ?></h2>
                                    <h4><?= $product->name ?></h4>
                                </div>
                                <div class="stock-info">
                                    <h4><?= $stock->size ?></h4>
                                    <h4><?= $product->price ?> <span class="unit">MMK</span>
                                        <span class="quantity">(x<?= $cell['quantity'] ?>)</span>
                                    </h4>
                                </div>
                            </div>
                        </div>

                        <div class="subtotal">
                            <h4><?php $total += $product->price * $cell['quantity'];
                                echo $product->price * $cell['quantity']; ?>
                                <span class="unit">MMK</span>
                            </h4>
                        </div>
                        <a class="delete" href="../_actions/delete-from-bag.php?cell=<?= $cell['stock_id'] ?>"><i class="fa-solid fa-circle-minus"></i></a>
                    </div>
                <?php endforeach; ?>
            </div>
        <?php else : ?>
            <h2 class="no-bag">No product in shopping bag.</h2>
        <?php endif; ?>
    </section>

    <?php if ($bag) : ?>
        <section class="checkout container">
            <h1>Checkout Information</h1>
            <div class="checkout-container">
                <div class="amount-info">
                    <h2>Summary</h2>
                    <div class="amount">
                        <div class="labels">
                            <div class="subtotals">
                                <div class="subtotal">
                                    <p>Subtotal:</p>
                                </div>
                                <div class="subtotal">
                                    <p>Shipping Fee:</p>
                                </div>
                                <div class="subtotal">
                                    <p>Tax Fee:</p>
                                </div>
                            </div>
                            <div class="total">
                                <p>Total:</p>
                            </div>
                        </div>
                        <div class="values">
                            <div class="subtotals">
                                <div class="subtotal">
                                    <h3><?= $total ?> <span class="unit">MMK</span></h3>
                                </div>
                                <div class="subtotal">
                                    <h3>0 <span class="unit">MMK</span></h3>
                                </div>
                                <div class="subtotal">
                                    <h3>0 <span class="unit">MMK</span></h3>
                                </div>
                            </div>
                            <div class="total">
                                <h3><?= $total ?> <span class="unit">MMK</span></h3>
                            </div>
                        </div>
                    </div>

                    <div class="info-inputs">
                        <form action="../_actions/checkout.php" method="post">
                            <div class="info">
                                <h3>Customer Information</h3>
                                <div class="inputs">
                                    <input type=" text" name="name" placeholder="John Doe" required>
                                    <input type="email" name="email" placeholder="johndoe@gmail.com" required>
                                    <input type="text" name="phone" placeholder="09123456789" required>
                                    <textarea name="address" placeholder="Address" required></textarea>
                                    <div class="two">
                                        <input type="text" name="city" placeholder="City" required>
                                        <input type="text" name="region" placeholder="Region" required>
                                        <input type="text" name="postal" placeholder="Postal Code" required>
                                    </div>
                                </div>
                            </div>
                            <div class="info">
                                <h3>Card Information</h3>
                                <div class="inputs">
                                    <input type="text" name="card_no" placeholder="Card Number" required>
                                    <input type="text" name="name_on_card" placeholder="Name On Card" required>
                                    <div class="two">
                                        <input type="text" name="expired_date" placeholder="MM/YY" required>
                                        <input type="text" name="cvv" placeholder="CVV" required>
                                    </div>
                                </div>
                            </div>
                            <input type="submit" class="btn btn-primary">
                        </form>
                    </div>
                </div>
        </section>
    <?php endif; ?>
</section>