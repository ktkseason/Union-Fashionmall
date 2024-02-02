<?php
include("../vendor/autoload.php");

use Helpers\Auth;
use Helpers\HTTP;
use Libs\Database\Stocks;
use Libs\Database\MySQL;

$auth = Auth::adminCheck();

if (isset($_GET['gender']) && isset($_GET['topic'])) {
    $gender_id = $_GET['gender'];
    $topic_id = $_GET['topic'];
    $updated = $_GET['$updated'] ?? 0;
    $data = new Stocks(new MySQL());

    $gender = $data->getGender($gender_id);
    $topic = $data->getTopic($topic_id);
    $colors = $data->getColorAll();

    $products = $data->getProductByGenderAndTopic($gender_id, $topic_id);
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

        <section class="container">
            <!-- Head -->
            <div class="stock-head">
                <a href="stocks.php?gender=<?= $gender_id ?>&topic=<?= $topic_id ?>">
                    <h2><?= $gender . " " . $topic ?></h2>
                </a>
                <div class="add-update-btns">
                    <a href="new-stock.php?gender=<?= $gender_id ?>&topic=<?= $topic_id ?>" class="btn btn-primary">Add
                        New</a>
                </div>
            </div>

            <!-- Table -->
            <?php if (count($products) != 0) : ?>
                <section class="stocks-product">
                    <?php if ($updated) : ?>
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
                            <div class="img-holder">
                                <div class="img-container">
                                    <?php $images = $data->getImageByProduct($product->id);
                                    foreach ($images as $image) : ?>
                                        <div class="img">
                                            <img src="../assets/img/<?= $image->image ?>" style="width: 100px; height: 100px; object-fit: cover;" alt="">
                                            <a href="../_actions/_admin/manage-image.php?gender=<?= $gender_id ?>&topic=<?= $topic_id ?>&id=<?= $image->image_id ?>&del=1"><i class="fa-solid fa-circle-minus"></i></a><br>
                                        </div>
                                    <?php endforeach; ?>
                                </div>
                                <form action="../_actions/_admin/manage-image.php" method="post" enctype="multipart/form-data">
                                    <input type="hidden" name="id" value="<?= $product->id ?>">
                                    <input type="hidden" name="gender" value="<?= $gender_id ?>">
                                    <input type="hidden" name="topic" value="<?= $topic_id ?>">
                                    <input type="file" name="images[]" multiple required>
                                    <input type="submit" name="add" class="btn btn-primary" value="Add Image">
                                </form>
                            </div>
                            <form action="../_actions/_admin/update-stock.php" method="post" class="edit">
                                <div class="info editables">
                                    <input type="hidden" name="id" value="<?= $product->id ?>">
                                    <input type="hidden" name="gender_id" value="<?= $gender_id ?>">
                                    <input type="hidden" name="topic_id" value="<?= $topic_id ?>">
                                    <input type="text" name="name" value="<?= $product->name ?>" required>
                                    <div class="with-header">
                                        <h4><?= $product->color ?></h4>
                                        <select name="color_id" id="color">
                                            <?php foreach ($colors as $color) : ?>
                                                <option value="<?= $color->id ?>">
                                                    <?= $color->name ?>
                                                </option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                    <input type="number" name="price" value="<?= $product->price ?>">
                                    <textarea name="detail"><?= $product->detail ?></textarea>
                                </div>
                                <div class="with-header editables">
                                    <h3>Sizes & Stocks</h3>
                                    <div class="sizes">
                                        <?php $sizes = $data->getSizeAll($topic_id);
                                        foreach ($sizes as $size) : ?>
                                            <label for="<?= $size->name ?>"><?= $size->name ?></label>
                                            <input type="number" id="<?= $size->name ?>" name="<?= $size->id ?>" class="stockNo" min=0 value=<?php
                                                                                                                                                $sizes_stocks = $data->getSizesAndStocksByProduct($product->id);
                                                                                                                                                $value = 0;
                                                                                                                                                foreach ($sizes_stocks as $size_stock) {
                                                                                                                                                    if ($size_stock->size_id == $size->id) {
                                                                                                                                                        $value = $size_stock->stock;
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                                echo $value; ?> required>
                                        <?php endforeach; ?>
                                    </div>
                                </div>
                                <input type="submit" class="btn btn-text" value="Update">
                            </form>
                        </div>
                    <?php endforeach; ?>
                    </tbody>
                </section>
            <?php endif; ?>
        </section>

    </main>
</body>

</html>