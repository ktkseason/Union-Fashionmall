<?php
include("../vendor/autoload.php");

use Libs\Database\Stocks;
use Libs\Database\MySQL;

$data = new Stocks(new MySQL());
$brands = $data->getBrandAll();
?>

<!-- Index Banner Slider -->
<section class="banner">
    <div class="slide-holder">
        <div class="slide active">
            <img src="../assets/img/no-revisions-kWVImL5QxJI-unsplash.jpg">
        </div>
        <div class="slide">
            <img src="../assets/img/laura-chouette-yCdsqWfxJOw-unsplash.jpg">
        </div>
        <div class="slide">
            <img src="../assets/img/edgar-chaparro-Lh-CTP558tc-unsplash.jpg">
        </div>
        <div class="slide">
            <img src="../assets/img/mnz-ToLMORRb97Q-unsplash.jpg">
        </div>
        <div class="slide">
            <img src="../assets/img/rene-bohmer-rnXLOEOY75k-unsplash.jpg">
        </div>
    </div>
    <div class="control-arrows">
        <div class="left arrow"><i class="fa-solid fa-arrow-left"></i></div>
        <div class="right arrow"><i class="fa-solid fa-arrow-right"></i></div>
    </div>
    <ul class="control-dots">
        <li class="active"></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
    </ul>
</section>

<!-- Index Brands Slider -->
<section class="py brand-slider">
    <div class="brands">
        <div class="brands-slide">
            <?php foreach ($brands as $brand) : ?>
                <img src=".<?= $brand->image ?>">
            <?php endforeach; ?>
        </div>
    </div>
</section>

<!-- Indexx Category Gallery -->
<section class="py category-gallery">
    <div class="image-container tall">
        <a href="products.php?gender=1&topic=3"><img src="../assets/img/oliur-1JNk998-g70-unsplash.jpg"></a>
        <div class="text">
            <h2>Men Bags</h3>
        </div>
    </div>
    <div class="image-container">
        <a href="products.php?gender=2&topic=2"><img src="../assets/img/jaclyn-moy-ugZxwLQuZec-unsplash.jpg"></a>
        <div class="text">
            <h2>Women Shoes</h3>
        </div>
    </div>
    <div class="image-container tall">
        <a href="products.php?gender=1&topic=3"><img src="../assets/img/andreas-rasmussen-KAfwg_EtkeE-unsplash.jpg"></a>
        <div class="text">
            <h2>Men Bags</h3>
        </div>
    </div>
    <div class="image-container">
        <a href="products.php?gender=2&topic=3"><img src="../assets/img/laura-chouette-dRi1hAzjozc-unsplash.jpg"></a>
        <div class="text">
            <h2>Women Bags</h3>
        </div>
    </div>
    <div class="image-container tall">
        <a href="products.php?gender=1&topic=2"><img src="../assets/img/hemesh-patil-Kv1GtuqBVIY-unsplash.jpg"></a>
        <div class="text">
            <h2>Men Shoes</h3>
        </div>
    </div>
    <div class="image-container">
        <a href="products.php?gender=2&topic=1"><img src="../assets/img/satria-aditya-moHSPOxxnhI-unsplash.jpg"></a>
        <div class="text">
            <h2>Women Clothings</h3>
        </div>
    </div>
    <div class="image-container">
        <a href="products.php?gender=1&topic=2"><img src="../assets/img/daniel-storek-JM-qKEd1GMI-unsplash.jpg"></a>
        <div class="text">
            <h2>Men Shoes</h3>
        </div>
    </div>
    <div class="image-container">
        <a href="products.php?gender=2&topic=1"><img src="../assets/img/leon-kohle-X3yvXBG56nM-unsplash.jpg"></a>
        <div class="text">
            <h2>Women Clothings</h3>
        </div>
    </div>
    <div class="image-container">
        <a href="products.php?gender=1&topic=1"><img src="../assets/img/waldemar-cue0DuZ8cUU-unsplash.jpg"></a>
        <div class="text">
            <h2>Men Clothings</h3>
        </div>
    </div>
</section>