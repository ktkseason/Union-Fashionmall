<?php

include("../vendor/autoload.php");

use Libs\Database\Users;
use Helpers\Auth;
use Helpers\HTTP;
use Libs\Database\Stocks;
use Libs\Database\MySQL;

$auth = Auth::adminCheck();
$data = new Stocks(new MySQL());

if (isset($_GET['gender']) && isset($_GET['topic'])) {
    $gender_id = $_GET['gender'];
    $topic_id = $_GET['topic'];
    $deleted = $_GET['deleted'] ?? 0;

    $search = $_GET['search'] ?? '';

    $gender = $data->getGender($gender_id);
    $topic = $data->getTopic($topic_id);

    if ($search) {
        $products = $data->getProductByGenderAndTopicLatestOnSearch($search, $gender_id, $topic_id);
    } else {
        $products = $data->getProductByGenderAndTopicLatest($gender_id, $topic_id);
    }

    if (!$gender || !$topic) {
        HTTP::redirect("/admin/home.php", "query_error=1");
    }
} else {
    HTTP::redirect("/admin/home.php", "query_error=1");
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="../assets/css/main.css">
    <link rel="shortcut icon" href="../assets/img/logo-icon.png" type="image/x-icon">
    <title>Union Fashion Mall</title>
</head>

<body>
    <header>
        <h1><a href="home.php">Union Dashboard</a></h1>
        <a href="../_actions/_admin/logout.php"><i class="fa-solid fa-right-from-bracket"></i></a>
    </header>

    <main>

        <section class="stocks container">
            <!-- Head -->
            <div class="stock-head">
                <h2><?= $gender . " " . $topic ?></h2>
                <div class="add-update-btns">
                    <a href="stock-edit.php?gender=<?= $gender_id ?>&topic=<?= $topic_id ?>" class="btn btn-secondary">Edit</a>
                    <a href="new-stock.php?gender=<?= $gender_id ?>&topic=<?= $topic_id ?>" class="btn btn-primary">Add
                        New</a>
                </div>
            </div>

            <section class="head">
                <div class="caption admin-search">
                    <form class="search" action="">
                        <input type="hidden" name="gender" value="<?= $gender_id ?>">
                        <input type="hidden" name="topic" value="<?= $topic_id ?>">
                        <input type="text" name="search" value="<?= $search ?>" placeholder=" Search">
                        <input type="submit" class="btn btn-primary" value="Search">
                    </form>
                </div>
            </section>

            <?php if (count($products) != 0) : ?>
                <section class="admin-stocks">

                    <?php if ($deleted) : ?>
                        <div class="alert success">
                            <h4>Product is deleted successfully.</h4>
                        </div>
                    <?php endif; ?>
                    <?php if (isset($_GET['updated'])) : ?>
                        <div class="alert success">
                            <h4>Product is updated successfully.</h4>
                        </div>
                    <?php endif; ?>

                    <?php foreach ($products as $product) : ?>
                        <div class="stocks-product">
                            <div class="product-head">
                                <h1><?= $product->brand ?> / <span><?= $product->category ?></span>
                                </h1>
                                <a href="../_actions/_admin/delete-stock.php?gender=<?= $gender_id ?>&topic=<?= $topic_id ?>&id=<?= $product->id ?>"><i class="fa-solid fa-circle-minus"></i></a>
                            </div>
                            <div class="img-container">
                                <?php $images = $data->getImageByProduct($product->id);
                                foreach ($images as $image) : ?>
                                    <img src="../assets/img/<?= $image->image ?>" alt="">
                                <?php endforeach; ?>
                            </div>
                            <div class="edit">
                                <div class="info editables">
                                    <h3><?= $product->name ?></h3>
                                    <h4><?= $product->color ?></h4>
                                    <h3><?= $product->price ?> <span class="unit">MMK</span></h3>
                                    <div class="with-header">
                                        <h3>Detail</h3>
                                        <p><?= $product->detail ?></p>
                                    </div>
                                </div>
                                <div class="with-header editables">
                                    <h3>Sizes & Stocks</h3>
                                    <div class="sizes">
                                        <?php $sizes_stocks = $data->getSizesAndStocksByProduct($product->id);
                                        foreach ($sizes_stocks as $size_stock) : ?>
                                            <p><?= $size_stock->size ?>: <span><?= $size_stock->stock ?></span></p>
                                        <?php endforeach; ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                    </tbody>
                </section>
            <?php else : ?>
                <h2>There is no product yet.</h2>
            <?php endif; ?>
        </section>

    </main>
</body>

</html>