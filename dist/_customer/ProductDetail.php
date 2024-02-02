<?php
include("../vendor/autoload.php");

use Libs\Database\Users;
use Libs\Database\Stocks;
use Libs\Database\MySQL;

$data = new Stocks(new MySQL());
$user = new Users(new MySQL());

$id = $_GET['id'];
$exceed = $_GET['exceed'] ?? 0;
$success = $_GET['success'] ?? 0;

$product = $data->getProduct($id);

?>

<!-- Head -->
<section class="container head">
    <h4><?= $product->gender ?>
        &raquo; <a href="products.php?gender=<?= $product->gender_id ?>&topic=<?= $product->topic_id ?>"><?= $product->topic ?></a>
        &raquo; <a href="products.php?gender=<?= $product->gender_id ?>&topic=<?= $product->topic_id ?>&category=<?= $product->category_id ?>"><?= $product->category ?></a>
    </h4>
</section>

<!-- detail -->
<section class="detail-container container">
    <div class="detail">
        <div class="img-showcase">
            <?php $images = $data->getImageByProduct($product->id); ?>
            <div class="img-view">
                <?php foreach ($images as $image) : ?>
                    <img src="../assets/img/<?= $image->image ?>" class="img-<?= $image->image_id ?> <?php if ($images[0]->image == $image->image) echo "active"; ?>" alt="">
                <?php endforeach; ?>
            </div>
            <div class="thumbnail-holder">
                <?php foreach ($images as $image) : ?>
                    <div class="img-thumbnail <?php if ($images[0]->image == $image->image) echo "active"; ?> img-<?= $image->image_id ?>">
                        <img src="../assets/img/<?= $image->image ?>" alt="">
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
        <div class="info">
            <div class="texts">

                <?php if ($exceed) : ?>
                    <div class="alert error">
                        <h4>The additional added quantity is exceeded from our stock.</h4>
                    </div>
                <?php endif; ?>
                <?php if ($success) : ?>
                    <div class="alert success">
                        <h4>Item is added to your shopping bag.</h4>
                    </div>
                <?php endif; ?>

                <a href="products.php?gender=<?= $product->gender_id ?>&topic=<?= $product->topic_id ?>&brand=<?= $product->brand_id ?>">
                    <h2 class="brand"><?= $product->brand ?></h2>
                </a>
                <h4><?= $product->name ?></h4>
                <h3><?= $product->price ?> <span>MMK</span></h3>
            </div>
            <div class="sizes">
                <?php $sizes_stocks = $data->getSizesAndStocksByProduct($product->id);
                foreach ($sizes_stocks as $size_stock) : ?>
                    <h4><?= $size_stock->size ?>
                        <?php if ($size_stock->stock > 0) : ?>
                            <span>: <?= $size_stock->stock ?> Pcs.</span>
                        <?php else : echo ": Sold Out.";
                        endif; ?>
                    </h4>
                <?php endforeach; ?>
            </div>
            <form action="../_actions/add-to-bag.php" method="post">
                <input type="hidden" name="product_id" value=<?= $product->id ?>>
                <div class="inputs">
                    <?php foreach ($sizes_stocks as $size_stock) : if ($size_stock->stock) : ?>
                            <input type="hidden" name="<?= $size_stock->id ?>" value=<?= $size_stock->id ?>>
                            <div class="input">
                                <label for="<?= $size_stock->id ?>"><?= $size_stock->size ?></label>
                                <input type="number" min="0" name="quantity_<?= $size_stock->id ?>" max="<?= $size_stock->stock ?>" id="<?= $size_stock->id ?>" value=0 required>
                            </div>
                    <?php endif;
                    endforeach; ?>
                </div>
                <div class="btns">
                    <button type="submit" class="btn btn-primary">Add to Bag <i class='fa-solid fa-shopping-bag'></i></button>
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
                </div>
            </form>
            <div class="detail-info">
                <h3>Product Detail</h3>
                <p><?= $product->detail ?></p>
            </div>
        </div>
    </div>
    <div class="similar showcase">
        <h1 class="py similar">Similar Products</h1>
        <?php $similars = $data->getSimilarProduct($product->gender_id, $product->topic_id, $product->category_id, $product->id);
        if (count($similars) != 0) : ?>
            <div class="card-container">
                <?php foreach ($similars as $similar) : ?>
                    <div class="card">
                        <div class="img-holder">
                            <a href="product-detail.php?id=<?= $similar->id ?>"><img src="../assets/img/<?php $images = $data->getImageByProduct($similar->id);
                                                                                                        echo $images[0]->image; ?>" alt=""></a>
                        </div>
                        <div class="info">
                            <div class="texts">
                                <a class="names">
                                    <h2 class="brand"><?= $similar->brand ?></h2>
                                    <h4><?= $similar->name  ?></h4>
                                </a>
                                <div class="sizes">
                                    <p>
                                        <?php $sizes_stocks = $data->getSizesAndStocksByProduct($similar->id);
                                        foreach ($sizes_stocks as $size_stock) echo $size_stock->size . " "; ?>
                                    </p>
                                </div>
                            </div>
                            <div class="bottom">
                                <h3><?= $similar->price ?> <span>MMK</span></h3>
                                <div class="working-icons">
                                    <div class="wishlist">
                                        <a href="../_actions/add-to-wishlist.php?product_id=<?= $similar->id ?>">
                                            <i class="fa-solid fa-heart" style="color: <?php $wishes = $user->getWishAll($auth->id);
                                                                                        $wish_products = [];
                                                                                        foreach ($wishes as $wish) {
                                                                                            $wish_products[] = $wish->product_id;
                                                                                        }
                                                                                        if (in_array($similar->id, $wish_products)) echo "#b99095";
                                                                                        else echo "#3a324a"; ?>;"></i>
                                        </a>
                                    </div>
                                    <div class="bag">
                                        <a href="product-detail.php?id=<?= $similar->id ?>">
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
            <h2 class="sorry">We are sorry. There is no similar product.</h2>
        <?php endif; ?>
    </div>
</section>