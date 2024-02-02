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

    $data = new Stocks(new MySQL());

    $gender = $data->getGender($gender_id);
    $topic = $data->getTopic($topic_id);

    $products = $data->getProductByGenderAndTopicLatest($gender_id, $topic_id);
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

            <!-- Table -->
            <?php if (count($products) != 0) : ?>
                <table class="container">
                    <thead>
                        <tr>
                            <th>Images</th>
                            <th>Name</th>
                            <th>Category</th>
                            <th>Brand</th>
                            <th>Color</th>
                            <th>Price</th>
                            <th>Detail</th>
                            <th>Sizes and Stocks</th>

                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($products as $product) : ?>
                            <tr>
                                <td>
                                    <?php $images = $data->getImageByProduct($product->id);
                                    foreach ($images as $image) : ?>
                                        <img src="../assets/img/<?= $image->image ?>" style="width: 100px; height: 100px; object-fit: cover;" alt="">
                                    <?php endforeach; ?>
                                </td>
                                <td><?= $product->name ?></td>
                                <td><?= $product->category ?></td>
                                <td><?= $product->brand ?></td>
                                <td><?= $product->color ?></td>
                                <td><?= $product->price ?></td>
                                <td><?= $product->detail ?></td>
                                <td>
                                    <?php $sizes_stocks = $data->getSizesAndStocksByProduct($product->id);
                                    foreach ($sizes_stocks as $size_stock)
                                        echo $size_stock->size . ": " . $size_stock->stock . "<br>";
                                    ?>
                                </td>
                                <td>
                                    <a href="../_actions/_admin/delete-stock.php?gender=<?= $gender_id ?>&topic=<?= $topic_id ?>&id=<?= $product->id ?>" class="btn btn-text">Delete</a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            <?php else : ?>
                <h2>There is no product yet.</h2>
            <?php endif; ?>
        </section>

    </main>
</body>

</html>