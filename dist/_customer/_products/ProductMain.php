<?php

use Libs\Database\Users;

include("../vendor/autoload.php");

use Helpers\HTTP;
use Libs\Database\Stocks;
use Libs\Database\MySQL;

$data = new Stocks(new MySQL());
$user = new Users(new MySQL());

$gender_id = $_GET['gender'] ?? 1;
$topic_id = $_GET['topic'] ?? 1;
$category_id = $_GET['category'] ?? 0;
$brand_id = $_GET['brand'] ?? 0;
$color_id = $_GET['color'] ?? 0;

$latest = $_GET['latest'] ?? 0;
$highfirst = $_GET['highfirst'] ?? 0;
$lowfirst = $_GET['lowfirst'] ?? 0;

$gender = $data->getGender($gender_id);
$topic = $data->getTopic($topic_id);
$category = $brand = $color = "";

$categories = $data->getCategoryByGenderAndTopic($gender_id, $topic_id);
$brands = $data->getBrandAll();
$colors = $data->getColorAll();

if ($category_id) {
    if ($latest)
        $products = $data->getProductByGenderTopicAndCategoryLatest($gender_id, $topic_id, $category_id);
    elseif ($highfirst)
        $products = $data->getProductByGenderTopicAndCategoryHighFirst($gender_id, $topic_id, $category_id);
    elseif ($lowfirst)
        $products = $data->getProductByGenderTopicAndCategoryLowFirst($gender_id, $topic_id, $category_id);
    else
        $products = $data->getProductByGenderTopicAndCategory($gender_id, $topic_id, $category_id);
} elseif ($brand_id) {
    if ($latest)
        $products = $data->getProductByGenderTopicAndBrandLatest($gender_id, $topic_id, $brand_idd);
    elseif ($highfirst)
        $products = $data->getProductByGenderTopicAndBrandHighFirst($gender_id, $topic_id, $brand_idd);
    elseif ($lowfirst)
        $products = $data->getProductByGenderTopicAndBrandLowFirst($gender_id, $topic_id, $brand_idd);
    else
        $products = $data->getProductByGenderTopicAndBrand($gender_id, $topic_id, $brand_id);
} elseif ($color_id) {
    if ($latest)
        $products = $data->getProductByGenderTopicAndColorLatest($gender_id, $topic_id, $category_id);
    elseif ($highfirst)
        $products = $data->getProductByGenderTopicAndColorHighFirst($gender_id, $topic_id, $category_id);
    elseif ($lowfirst)
        $products = $data->getProductByGenderTopicAndColorLowFirst($gender_id, $topic_id, $category_id);
    else
        $products = $data->getProductByGenderTopicAndColor($gender_id, $topic_id, $color_id);
} else {
    if ($latest)
        $products = $data->getProductByGenderAndTopicLatest($gender_id, $topic_id);
    elseif ($highfirst)
        $products = $data->getProductByGenderAndTopicHighFirst($gender_id, $topic_id);
    elseif ($lowfirst)
        $products = $data->getProductByGenderAndTopicLowFirst($gender_id, $topic_id);
    else
        $products = $data->getProductByGenderAndTopic($gender_id, $topic_id);
}

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
        <?php endif;
        if ($latest) : ?>
            &raquo; Latest First
        <?php elseif ($highfirst) : ?>
            &raquo; High Price First
        <?php elseif ($lowfirst) : ?>
            &raquo; Low Price First
        <?php endif; ?>
    </h4>
    <div class="caption">
        <h1><?= $gender . " " . $topic ?></h1>
        <h4 class="choices">( <?= count($products); ?> Products )</h4>
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
                                <a href="products.php?gender=<?= $gender_id ?>&topic=<?= $topic_id ?>&category=<?= $category->id ?>" style="text-decoration:<?php if ($category_id == $category->id) echo "line-through" ?>;">
                                    <?= $category->name ?>
                                </a>
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
                                <a href="products.php?gender=<?= $gender_id ?>&topic=<?= $topic_id ?>&brand=<?= $brand->id ?>"><?= $brand->name ?></a>
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
                                <a href="products.php?gender=<?= $gender_id ?>&topic=<?= $topic_id ?>&color=<?= $color->id ?>"><?= $color->name ?></a>
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
                        <a href="products.php?gender=<?= $gender_id ?>&topic=<?= $topic_id ?>&category=<?= $category_id ?>&brand=<?= $brand_id ?>&color=<?= $color_id ?>&latest=1">Latest
                            First</a>
                    </div>
                    <div>
                        <a href="products.php?gender=<?= $gender_id ?>&topic=<?= $topic_id ?>&category=<?= $category_id ?>&brand=<?= $brand_id ?>&color=<?= $color_id ?>&highfirst=1">High
                            Price First</a>
                    </div>
                    <div>
                        <a href="products.php?gender=<?= $gender_id ?>&topic=<?= $topic_id ?>&category=<?= $category_id ?>&brand=<?= $brand_id ?>&color=<?= $color_id ?>&lowfirst=1">Low
                            Price First</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Showcase -->
<section class="container showcase">
    <?php if (count($products) != 0) : ?>
        <div class="card-container">
            <?php foreach ($products as $product) : ?>
                <div class="card">
                    <div class="img-holder">
                        <a href="product-detail.php?id=<?= $product->id ?>"><img src="../assets/img/<?php $images = $data->getImageByProduct($product->id);
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