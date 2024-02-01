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
        <h1>Shopping Bag</h1>
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
                                    <h3><?= $stock->size ?></h3>
                                    <h4><?= $product->price ?> <span class="unit">MMK</span>
                                        <span class="quantity">(x<?= $cell['quantity'] ?>)</span>
                                    </h4>
                                </div>
                            </div>
                        </div>

                        <div class="subtotal">
                            <h4>
                                <?php $total += $product->price * $cell['quantity'];
                                echo $product->price * $cell['quantity'];
                                ?> <span class="unit">MMK</span>
                            </h4>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        <?php else : ?>
            <h2 class="no-bag">No product in shopping bag.</h2>
        <?php endif; ?>
    </section>

    <section class="checkout">
        <div class="amount">
            <div class="subtotals">
                <div class="subtotal">
                    <h4>Subtotal:</h4>
                    <p><?= $total ?> <span class="unit">MMK</span></p>
                </div>
                <!-- can subtract discount amount in here if wanted -->
                <div class="subtotal">
                    <h4>Shipping fee:</h4>
                    <p>0 <span class="unit">MMK</span></p>
                </div>
            </div>
            <div class="total">
                <h4>Total:</h4>
                <p><?= $total ?> <span class="unit">MMK</span></p>
            </div>
        </div>
        <div class="payment">
        </div>
    </section>

</section>