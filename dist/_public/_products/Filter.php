<?php
include("../vendor/autoload.php");

use Helpers\HTTP;
use Libs\Database\Stocks;
use Libs\Database\MySQL;

$data = new Stocks(new MySQL());

$brands = $data->getBrandAll();
$colors = $data->getColorAll();
$head = "";

if (isset($_GET['gender']) && isset($_GET['topic']) && isset($_GET['category'])) {
    $gender_id = $_GET['gender'];
    $topic_id = $_GET['topic'];
    $category_id = $_GET['category'];

    $gender = $data->getGender($gender_id);
    $topic = $data->getTopic($topic_id);
    $category = $data->getCategory($category_id);

    $head = "$gender $topic $category";
} else if (isset($_GET['gender']) && isset($_GET['topic'])) {
    $gender_id = $_GET['gender'];
    $topic_id = $_GET['topic'];

    $gender = $data->getGender($gender_id);
    $topic = $data->getTopic($topic_id);

    $head = "$gender $topic";
} else if (isset($_GET['new'])) {
    $head = "New Arrivals";
} else {
    $head = "Products"; // all stocks
}

# to add more for filtering
?>

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
                                        <a href="products.php?gender=<?= $category->gender_id ?>&topic=<?= $category->topic_id ?>&category=<?= $category->id ?>"><?= $category->name ?></a>
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