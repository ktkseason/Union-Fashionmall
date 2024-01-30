<?php
include("../vendor/autoload.php");

use Helpers\HTTP;
use Libs\Database\Stocks;
use Libs\Database\MySQL;

$data = new Stocks(new MySQL());

if (isset($_GET['gender']) && isset($_GET['topic'])) {
    $gender_id = $_GET['gender'];
    $topic_id = $_GET['topic'];


    $gender = $data->getGender($gender_id);
    $topic = $data->getTopic($topic_id);

    $products = $data->getProductByGenderAndTopic($gender_id, $topic_id);

    if (!$gender || !$topic) {
        HTTP::redirect("/admin/home.php", "query_error=1");
    }
} else {
    HTTP::redirect("/admin/home.php", "query_error=1");
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
                        <?php if (isset($gender_id) && isset($category_id)) :
                            foreach ($categories as $category) :
                                if ($category->gender_id == $gender_id && $category->topic_id == $topic_id) : ?>
                        <div>
                            <a
                                href="products.php?gender=<?= $category->gender_id ?>&topic=<?= $category->topic_id ?>&category=<?= $category->id ?>"><?= $category->name ?></a>
                        </div>
                        <?php endif;
                            endforeach;
                        else : ?>
                        <div>
                            No Category
                        </div>
                        <?php endif; ?>
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
                    <h4><i class="fa-solid fa-arrow-down-short-wide"></i>Sort</h4><i
                        class="dropdown-icon fa-solid fa-angle-down"></i>
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
    <h4 class="choices">filtered / categories / list / also / color / br nyr</h4>
    <div class="py card-container">
        <div class="card">
            <div class="img-holder">
                <a href="#"><img src="../assets/img/fachry-zella-devandra-bNSdIkCBJOs-unsplash.jpg" alt=""></a>
            </div>
            <div class="info">
                <div class="texts">
                    <a class="names">
                        <h2 class="brand">Blanciaga</h2>
                        <h4>Product name geofia</h4>
                    </a>
                    <div class="sizes">
                        <p>XS, M, L, XXL, XXXL</p>
                    </div>
                </div>
                <div class="bottom">
                    <h3>6700 <span>MMK</span></h3>
                    <div class="working-icons">
                        <div class="wishlist">
                            <i class="fa-solid fa-heart"></i>
                        </div>
                        <div class="cart">
                            <i class="fa-solid fa-bag-shopping"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="img-holder">
                <a href=""><img src="../assets/img/laura-chouette-yCdsqWfxJOw-unsplash.jpg" alt=""></a>
            </div>
            <div class="info">
                <div class="texts">
                    <a class="names">
                        <h2 class="brand">Blanciaga</h2>
                        <h4>Product name geofia</h4>
                    </a>
                    <div class="sizes">
                        <p>XS, M, L, XXL, XXXL</p>
                    </div>
                </div>
                <div class="bottom">
                    <h3>6700 <span>MMK</span></h3>
                    <div class="working-icons">
                        <div class="wishlist">
                            <i class="fa-solid fa-heart"></i>
                        </div>
                        <div class="cart">
                            <i class="fa-solid fa-bag-shopping"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="img-holder">
                <a href="#"><img src="../assets/img/no-revisions-kWVImL5QxJI-unsplash.jpg" alt=""></a>
            </div>
            <div class="info">
                <div class="texts">
                    <a class="names">
                        <h2 class="brand">Blanciaga</h2>
                        <h4>Product name geofia</h4>
                    </a>
                    <div class="sizes">
                        <p>XS, M, L, XXL, XXXL</p>
                    </div>
                </div>
                <div class="bottom">
                    <h3>6700 <span>MMK</span></h3>
                    <div class="working-icons">
                        <div class="wishlist">
                            <i class="fa-solid fa-heart"></i>
                        </div>
                        <div class="cart">
                            <i class="fa-solid fa-bag-shopping"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="img-holder">
                <a href="#"><img src="../assets/img/fachry-zella-devandra-bNSdIkCBJOs-unsplash.jpg" alt=""></a>
            </div>
            <div class="info">
                <div class="texts">
                    <a class="names">
                        <h2 class="brand">Blanciaga</h2>
                        <h4>Product name geofia</h4>
                    </a>
                    <div class="sizes">
                        <p>XS, M, L, XXL, XXXL</p>
                    </div>
                </div>
                <div class="bottom">
                    <h3>6700 <span>MMK</span></h3>
                    <div class="working-icons">
                        <div class="wishlist">
                            <i class="fa-solid fa-heart"></i>
                        </div>
                        <div class="cart">
                            <i class="fa-solid fa-bag-shopping"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="img-holder">
                <a href=""><img src="../assets/img/laura-chouette-yCdsqWfxJOw-unsplash.jpg" alt=""></a>
            </div>
            <div class="info">
                <div class="texts">
                    <a class="names">
                        <h2 class="brand">Blanciaga</h2>
                        <h4>Product name geofia</h4>
                    </a>
                    <div class="sizes">
                        <p>XS, M, L, XXL, XXXL</p>
                    </div>
                </div>
                <div class="bottom">
                    <h3>6700 <span>MMK</span></h3>
                    <div class="working-icons">
                        <div class="wishlist">
                            <i class="fa-solid fa-heart"></i>
                        </div>
                        <div class="cart">
                            <i class="fa-solid fa-bag-shopping"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="img-holder">
                <a href="#"><img src="../assets/img/no-revisions-kWVImL5QxJI-unsplash.jpg" alt=""></a>
            </div>
            <div class="info">
                <div class="texts">
                    <a class="names">
                        <h2 class="brand">Blanciaga</h2>
                        <h4>Product name geofia</h4>
                    </a>
                    <div class="sizes">
                        <p>XS, M, L, XXL, XXXL</p>
                    </div>
                </div>
                <div class="bottom">
                    <h3>6700 <span>MMK</span></h3>
                    <div class="working-icons">
                        <div class="wishlist">
                            <i class="fa-solid fa-heart"></i>
                        </div>
                        <div class="cart">
                            <i class="fa-solid fa-bag-shopping"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="img-holder">
                <a href="#"><img src="../assets/img/fachry-zella-devandra-bNSdIkCBJOs-unsplash.jpg" alt=""></a>
            </div>
            <div class="info">
                <div class="texts">
                    <a class="names">
                        <h2 class="brand">Blanciaga</h2>
                        <h4>Product name geofia</h4>
                    </a>
                    <div class="sizes">
                        <p>XS, M, L, XXL, XXXL</p>
                    </div>
                </div>
                <div class="bottom">
                    <h3>6700 <span>MMK</span></h3>
                    <div class="working-icons">
                        <div class="wishlist">
                            <i class="fa-solid fa-heart"></i>
                        </div>
                        <div class="cart">
                            <i class="fa-solid fa-bag-shopping"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="img-holder">
                <a href=""><img src="../assets/img/laura-chouette-yCdsqWfxJOw-unsplash.jpg" alt=""></a>
            </div>
            <div class="info">
                <div class="texts">
                    <a class="names">
                        <h2 class="brand">Blanciaga</h2>
                        <h4>Product name geofia</h4>
                    </a>
                    <div class="sizes">
                        <p>XS, M, L, XXL, XXXL</p>
                    </div>
                </div>
                <div class="bottom">
                    <h3>6700 <span>MMK</span></h3>
                    <div class="working-icons">
                        <div class="wishlist">
                            <i class="fa-solid fa-heart"></i>
                        </div>
                        <div class="cart">
                            <i class="fa-solid fa-bag-shopping"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="img-holder">
                <a href="#"><img src="../assets/img/edgar-chaparro-Lh-CTP558tc-unsplash.jpg" alt=""></a>
            </div>
            <div class="info">
                <div class="texts">
                    <div class="names">
                        <h2 class="brand">Blanciaga</h2>
                        <h4>Product name geofia</h4>
                    </div>
                    <div class="sizes">
                        <p>XXXS, XXS, XS, S, M, L, XL, XXL, XXXL</p>
                    </div>
                </div>
                <div class="bottom">
                    <h3>6700 <span>MMK</span></h3>
                    <div class="working-icons">
                        <div class="wishlist">
                            <i class="fa-solid fa-heart"></i>
                        </div>
                        <div class="cart">
                            <i class="fa-solid fa-bag-shopping"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="img-holder">
                <a href="#"><img src="../assets/img/fachry-zella-devandra-bNSdIkCBJOs-unsplash.jpg" alt=""></a>
            </div>
            <div class="info">
                <div class="texts">
                    <div class="names">
                        <h2 class="brand">Blanciaga</h2>
                        <h4>Product name geofia</h4>
                    </div>
                    <div class="sizes">
                        <p>XS, M, L, XXL, XXXL</p>
                    </div>
                </div>
                <div class="bottom">
                    <h3>6700 <span>MMK</span></h3>
                    <div class="working-icons">
                        <div class="wishlist">
                            <i class="fa-solid fa-heart"></i>
                        </div>
                        <div class="cart">
                            <i class="fa-solid fa-bag-shopping"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="img-holder">
                <a href=""><img src="../assets/img/laura-chouette-yCdsqWfxJOw-unsplash.jpg" alt=""></a>
            </div>
            <div class="info">
                <div class="texts">
                    <div class="names">
                        <h2 class="brand">Blanciaga</h2>
                        <h4>Product name geofia</h4>
                    </div>
                    <div class="sizes">
                        <p>XS, M, L, XXL, XXXL</p>
                    </div>
                </div>
                <div class="bottom">
                    <h3>6700 <span>MMK</span></h3>
                    <div class="working-icons">
                        <div class="wishlist">
                            <i class="fa-solid fa-heart"></i>
                        </div>
                        <div class="cart">
                            <i class="fa-solid fa-bag-shopping"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="img-holder">
                <a href="#"><img src="../assets/img/no-revisions-kWVImL5QxJI-unsplash.jpg" alt=""></a>
            </div>
            <div class="info">
                <div class="texts">
                    <div class="names">
                        <h2 class="brand">Blanciaga</h2>
                        <h4>Product name geofia</h4>
                    </div>
                    <div class="sizes">
                        <p>XS, M, L, XXL, XXXL</p>
                    </div>
                </div>
                <div class="bottom">
                    <h3>6700 <span>MMK</span></h3>
                    <div class="working-icons">
                        <div class="wishlist">
                            <i class="fa-solid fa-heart"></i>
                        </div>
                        <div class="cart">
                            <i class="fa-solid fa-bag-shopping"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="img-holder">
                <a href="#"><img src="../assets/img/rene-bohmer-rnXLOEOY75k-unsplash.jpg" alt=""></a>
            </div>
            <div class="info">
                <div class="texts">
                    <div class="names">
                        <h2 class="brand">Blanciaga</h2>
                        <h4>Product name geofia</h4>
                    </div>
                    <div class="sizes">
                        <p>XS, M, L, XXL, XXXL</p>
                    </div>
                </div>
                <div class="bottom">
                    <h3>6700 <span>MMK</span></h3>
                    <div class="working-icons">
                        <div class="wishlist">
                            <i class="fa-solid fa-heart"></i>
                        </div>
                        <div class="cart">
                            <i class="fa-solid fa-bag-shopping"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="img-holder">
                <a href="#"><img src="../assets/img/edgar-chaparro-Lh-CTP558tc-unsplash.jpg" alt=""></a>
            </div>
            <div class="info">
                <div class="texts">
                    <div class="names">
                        <h2 class="brand">Blanciaga</h2>
                        <h4>Product name geofia</h4>
                    </div>
                    <div class="sizes">
                        <p>XXXS, XXS, XS, S, M, L, XL, XXL, XXXL</p>
                    </div>
                </div>
                <div class="bottom">
                    <h3>6700 <span>MMK</span></h3>
                    <div class="working-icons">
                        <div class="wishlist">
                            <i class="fa-solid fa-heart"></i>
                        </div>
                        <div class="cart">
                            <i class="fa-solid fa-bag-shopping"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="img-holder">
                <a href="#"><img src="../assets/img/fachry-zella-devandra-bNSdIkCBJOs-unsplash.jpg" alt=""></a>
            </div>
            <div class="info">
                <div class="texts">
                    <div class="names">
                        <h2 class="brand">Blanciaga</h2>
                        <h4>Product name geofia</h4>
                    </div>
                    <div class="sizes">
                        <p>XS, M, L, XXL, XXXL</p>
                    </div>
                </div>
                <div class="bottom">
                    <h3>6700 <span>MMK</span></h3>
                    <div class="working-icons">
                        <div class="wishlist">
                            <i class="fa-solid fa-heart"></i>
                        </div>
                        <div class="cart">
                            <i class="fa-solid fa-bag-shopping"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="img-holder">
                <a href=""><img src="../assets/img/laura-chouette-yCdsqWfxJOw-unsplash.jpg" alt=""></a>
            </div>
            <div class="info">
                <div class="texts">
                    <div class="names">
                        <h2 class="brand">Blanciaga</h2>
                        <h4>Product name geofia</h4>
                    </div>
                    <div class="sizes">
                        <p>XS, M, L, XXL, XXXL</p>
                    </div>
                </div>
                <div class="bottom">
                    <h3>6700 <span>MMK</span></h3>
                    <div class="working-icons">
                        <div class="wishlist">
                            <i class="fa-solid fa-heart"></i>
                        </div>
                        <div class="cart">
                            <i class="fa-solid fa-bag-shopping"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="img-holder">
                <a href="#"><img src="../assets/img/no-revisions-kWVImL5QxJI-unsplash.jpg" alt=""></a>
            </div>
            <div class="info">
                <div class="texts">
                    <div class="names">
                        <h2 class="brand">Blanciaga</h2>
                        <h4>Product name geofia</h4>
                    </div>
                    <div class="sizes">
                        <p>XS, M, L, XXL, XXXL</p>
                    </div>
                </div>
                <div class="bottom">
                    <h3>6700 <span>MMK</span></h3>
                    <div class="working-icons">
                        <div class="wishlist">
                            <i class="fa-solid fa-heart"></i>
                        </div>
                        <div class="cart">
                            <i class="fa-solid fa-bag-shopping"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="img-holder">
                <a href="#"><img src="../assets/img/rene-bohmer-rnXLOEOY75k-unsplash.jpg" alt=""></a>
            </div>
            <div class="info">
                <div class="texts">
                    <div class="names">
                        <h2 class="brand">Blanciaga</h2>
                        <h4>Product name geofia</h4>
                    </div>
                    <div class="sizes">
                        <p>XS, M, L, XXL, XXXL</p>
                    </div>
                </div>
                <div class="bottom">
                    <h3>6700 <span>MMK</span></h3>
                    <div class="working-icons">
                        <div class="wishlist">
                            <i class="fa-solid fa-heart"></i>
                        </div>
                        <div class="cart">
                            <i class="fa-solid fa-bag-shopping"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>