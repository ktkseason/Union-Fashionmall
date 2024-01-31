<?php

use Libs\Database\Users;

include("../vendor/autoload.php");

use Helpers\HTTP;
use Libs\Database\Stocks;
use Libs\Database\MySQL;

$data = new Stocks(new MySQL());

?>

<!-- Head -->
<section class="container head">
    <h4><?= $gender ?> &raquo; <a href="products.php?gender=<?= $gender_id ?>&topic=<?= $topic_id ?>"><?= $topic ?></a>
        <?php if ($category_id) : $category = $data->getCategory($category_id); ?>
        &raquo; <?= $category ?>
        <?php elseif ($brand_id) : $brand = $data->getBrand($brand_id); ?>
        &raquo; <?= $brand ?>
        <?php elseif ($color_id) : $color = $data->getColor($color_id); ?>
        &raquo; <?= $color ?>
        <?php endif; ?>
    </h4>
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
                        <div class="cart">
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
    <h2 class="sorry">We are sorry. There is no current product.</h2>
    <?php endif; ?>
</section>