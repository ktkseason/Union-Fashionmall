<?php

use Libs\Database\Users;

include("../vendor/autoload.php");

use Libs\Database\Stocks;
use Libs\Database\MySQL;

$data = new Stocks(new MySQL());

$id = $_GET['id'];

$product = $data->getProduct($id);

?>

<!-- Head -->
<section class="container head">
    <h4><?= $product->gender ?>
        &raquo; <a
            href="products.php?gender=<?= $product->gender_id ?>&topic=<?= $product->topic_id ?>"><?= $product->topic ?></a>
        &raquo; <a
            href="products.php?gender=<?= $product->gender_id ?>&topic=<?= $product->topic_id ?>&category=<?= $product->category_id ?>"><?= $product->category ?></a>
    </h4>
</section>

<!-- detail -->
<section class="detail-container container">
    <div class="img-showcase">

    </div>
    <div class="info">
        <div class="texts">
            <h2 class="brand"><?= $product->brand ?></h2>
            <h4><?= $product->name ?></h4>
            <h3><?= $product->price ?> <span>MMK</span></h3>
        </div>
        <div class="sizes">
            <?php $sizes_stocks = $data->getSizesAndStocksByProduct($product->id);
            foreach ($sizes_stocks as $size_stock) : ?>
            <h4><?= $size_stock->size ?> <span>: <?= $size_stock->stock ?> Pcs.</span></h4>
            <?php endforeach; ?>
        </div>
        <form action="../_actions/add-to-bag.php" method="post">
            <input type="hidden" name="product_id" value=<?= $product->id ?>>
            <div class="inputs">
                <?php foreach ($sizes_stocks as $size_stock) : ?>
                <input type="hidden" name="<?= $size_stock->id ?>" value=<?= $size_stock->id ?>>
                <label for="<?= $size_stock->id ?>"><?= $size_stock->size ?></label>
                <input type="number" min="0" name="quantity_<?= $size_stock->id ?>" max="<?= $size_stock->stock ?>"
                    id="<?= $size_stock->id ?>" value=0 required>
                <?php endforeach; ?>
            </div>
            <input type="submit" name="buy_now" class="btn btn-primary">
            <label for="add-to-bag"><i class="fa-solid fa-shopping-bag"></i></label>
            <input type="submit" id="add-to-bag" name="add_to_bag" style="display: none;">
            <div class="wishlist">
                <a href="signin.php">
                    <i class="fa-solid fa-heart"></i>
                </a>
            </div>

        </form>

    </div>
</section>