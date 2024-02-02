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
    $categories = $data->getCategoryByGenderAndTopic($gender_id, $topic_id);
    $colors = $data->getColorAll();
    $brands = $data->getBrandAll();
    $sizes = $data->getSizeAll($topic_id);

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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
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

        <section class="container stock-head">
            <!-- Head -->
            <div class="head">
                <h2>Add New <?= $gender . " " . $topic ?></h2>
            </div>
        </section>

        <!-- Add Form -->
        <section class="container stock-form">
            <form action="../_actions/_admin/add-stock.php" method="post" enctype="multipart/form-data">
                <input type="hidden" name="gender_id" value="<?= $gender_id ?>">
                <input type="hidden" name="topic_id" value="<?= $topic_id ?>">
                <div class="img-holder">
                    <input type="file" name="images[]" multiple required>
                </div>
                <div class="inputs">
                    <input type="text" name="name" placeholder="Product Name" required>
                    <input type="number" step="0.01" min="10" name="price" placeholder="Product Price in MMK" required>
                    <textarea name="detail" placeholder="Product Detail" required></textarea>
                </div>
                <div class="selects">
                    <div class="select">
                        <label for="category">Category</label>
                        <select name="category_id" id="category" required>
                            <?php foreach ($categories as $category) : ?>
                            <option value="<?= $category->id ?>">
                                <?= $category->name ?>
                            </option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="select">
                        <label for="brand">Brand</label>
                        <select name="brand_id" id="brand">
                            <?php foreach ($brands as $brand) : ?>
                            <option value="<?= $brand->id ?>">
                                <?= $brand->name ?>
                            </option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="select">
                        <label for="color">Color</label>
                        <select name="color_id" id="color">
                            <?php foreach ($colors as $color) : ?>
                            <option value="<?= $color->id ?>">
                                <?= $color->name ?>
                            </option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                </div>
                <div class="sizes">
                    <?php foreach ($sizes as $size) : ?>
                    <div>
                        <label for="<?= $size->name ?>"><?= $size->name ?></label>
                        <input type="number" id="<?= $size->name ?>" name="<?= $size->id ?>" class="stockNo" min=0
                            value=0 required>
                    </div>
                    <?php endforeach; ?>
                </div>
                <input class="btn btn-primary" type="submit">
            </form>
        </section>
    </main>
</body>

</html>