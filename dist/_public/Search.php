<?php

include("../vendor/autoload.php");

use Libs\Database\Stocks;
use Libs\Database\MySQL;

$data = new Stocks(new MySQL());

$search = $_GET['search'] ?? '';
$products = [];
if ($search) {
    $products = $data->getProductBySearch($search);
}

?>

<!-- Head -->
<section class="container head">
    <?php if ($search) : ?>
    <h4>&raquo; <?= $search ?></h4>
    <?php endif; ?>
    <div class="caption">
        <form class="search" action="">
            <input type="text" name="search" value="<?=$search?>" placeholder="Search">
            <input type="submit" class="btn btn-primary" value="Search">
        </form>
    </div>
</section>

<!-- Showcase -->
<section class="container showcase">
    <?php if (count($products) != 0) : ?>
    <div class="card-container">
        <?php foreach ($products as $product) : ?>
        <div class="card">
            <div class="img-holder">
                <a href="product-detail.php?id=<?= $product->id ?>"><img
                        src="../assets/img/<?php $images = $data->getImageByProduct($product->id);
                                                                                                    echo $images[0]->image; ?>" alt=""></a>
            </div>
            <div class="info">
                <div class="texts">
                    <a class="names">
                        <h2 class="brand"><?= $product->brand ?></h2>
                        <h4><?= $product->name  ?></h4>
                    </a>
                    <div class="sizes">
                        <p>
                            <?php $sizes_stocks = $data->getSizesAndStocksByProduct($product->id);
                                    foreach ($sizes_stocks as $size_stock) echo $size_stock->size . " "; ?>
                        </p>
                    </div>
                </div>
                <div class="bottom">
                    <h3><?= $product->price ?> <span>MMK</span></h3>
                    <div class="working-icons">
                        <div class="wishlist">
                            <a href="signin.php"><i class="fa-solid fa-heart"></i></a>
                        </div>
                        <div class="bag">
                            <a href="product-detail.php?id=<?= $product->id ?>">
                                <i class="fa-solid fa-shopping-bag"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php endforeach; ?>
    </div>
    <?php else : ?>
    <h2 class="sorry">There is no result product for your search yet.</h2>
    <?php endif; ?>
</section>