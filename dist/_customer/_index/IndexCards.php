<?php
include("../vendor/autoload.php");

use Libs\Database\Stocks;
use Libs\Database\Users;
use Libs\Database\MySQL;

$data = new Stocks(new MySQL());
$user = new Users(new MySQL());

$products = $data->getProductLatest(8);

?>

<!-- Index New Arrivals -->
<section class="container index-new-arrivals">
    <h1>New Arrivals</h1>
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
                            <a href="../_actions/add-to-wishlist.php?product_id=<?= $product->id ?>">
                                <i class="fa-solid fa-heart" style="color: <?php $wishes = $user->getWishAll($auth->id);
                                                                                $wish_products = [];
                                                                                foreach ($wishes as $wish) {
                                                                                    $wish_products[] = $wish->product_id;
                                                                                }
                                                                                if (in_array($product->id, $wish_products)) echo "#b99095";
                                                                                else echo "#3a324a"; ?>;"></i>
                            </a>
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
    <div class="btn-holder">
        <a href="products.php?new=1" class="btn btn-primary">See More <i class="fa-solid fa-right-long"></i></a>
    </div>
</section>