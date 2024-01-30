<?php

use Libs\Database\Users;

include("../vendor/autoload.php");

use Helpers\HTTP;
use Libs\Database\Stocks;
use Libs\Database\MySQL;

$data = new Stocks(new MySQL());
$user = new Users(new MySQL());

if (isset($_GET['gender']) && isset($_GET['topic'])) {
    $gender_id = $_GET['gender'];
    $topic_id = $_GET['topic'];


    $gender = $data->getGender($gender_id);
    $topic = $data->getTopic($topic_id);

    $categories = $data->getCategoryByGenderAndTopic($gender_id, $topic_id);
    $brands = $data->getBrandAll();
    $colors = $data->getColorAll();
    $products = $data->getProductByGenderAndTopic($gender_id, $topic_id);
} else {
    HTTP::redirect("/public/index.php");
}
?>

<!-- Head -->
<section class="container head">
    <h4>Products &raquo; <a href="#">product</a> &raquo; <a href="#">category</a></h4>
    <div class="caption">
        <h1><?= $gender . " " . $topic ?></h1>
    </div>
</section>

<!-- Filter -->
<section class="filter">
    <div class="filter-container">
        <div class="filter-options">
            <div class="filter-icon">
                <h4><i class="fa-solid fa-bars-staggered"></i>Filters</h4>
                <i class="dropdown-icon fa-solid fa-angle-down"></i>
            </div>
            <div class="product-filter">
                <div class="filter-dropdown">
                    <div class="dropdown-name">
                        <h4>Categories</h4><i class="dropdown-icon fa-solid fa-angle-down"></i>
                    </div>
                    <div class="dropdown">
                        <?php foreach ($categories as $category) : ?>
                            <div>
                                <a href="products.php?gender=<?= $gender_id ?>&topic=<?= $topic_id ?>&category=<?= $category->id ?>"><?= $category->name ?></a>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
                <div class="filter-dropdown">
                    <div class="dropdown-name">
                        <h4>Brands</h4><i class="dropdown-icon fa-solid fa-angle-down"></i>
                    </div>
                    <div class="dropdown">
                        <?php foreach ($brands as $brand) : ?>
                            <div>
                                <a href="products.php?brand=<?= $brand->id ?>"><?= $brand->name ?></a>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
                <div class="filter-dropdown">
                    <div class="dropdown-name colors">
                        <h4>Colors</h4><i class="dropdown-icon fa-solid fa-angle-down"></i>
                    </div>
                    <div class="dropdown">
                        <?php foreach ($colors as $color) : ?>
                            <div>
                                <div class="color" style="background: <?= $color->value ?>;"></div>
                                <a href="products.php?color=<?= $color->id ?>"><?= $color->name ?></a>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>

        <div class="product-filter">
            <div class="filter-dropdown sort">
                <div class="dropdown-name sort">
                    <h4><i class="fa-solid fa-arrow-down-short-wide"></i>Sort</h4><i class="dropdown-icon fa-solid fa-angle-down"></i>
                </div>
                <div class="dropdown">
                    <div>
                        <a href="#">Latest</a>
                    </div>
                    <div>
                        <a href="#">High Price First</a>
                    </div>
                    <div>
                        <a href="#">Low Price First</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Showcase -->
<section class="container showcase">
    <!-- <h4 class="choices">filtered / categories / list / also / color / br nyr</h4> -->
    <?php if (count($products) != 0) : ?>
        <div class="card-container">
            <?php foreach ($products as $product) : ?>
                <div class="card">
                    <div class="img-holder">
                        <a href="#"><img src="../assets/img/<?php $images = $data->getImageByProduct($product->id);
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
                                <div class="cart">
                                    <a href="../_actions/add-to-cart.php?id=<?= $product->id ?>">
                                        <i class="fa-solid fa-bag-shopping"></i>
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