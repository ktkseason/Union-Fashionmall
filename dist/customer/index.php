<?php
include("../vendor/autoload.php");

use Helpers\Auth;

$auth = Auth::check();
?>

<?php include_once "../_customer/Header.php"; ?>
<main>
    <?php include_once "../_public/_index/Banner.php"; ?>
    <?php include_once "../_public/_index/BrandSlider.php"; ?>
    <?php include_once "../_public/_index/CategoryGallery.php"; ?>
    <?php include_once "../_public/_index/IndexNewArrivals.php" ?>
</main>
<?php include_once('../_public/Footer.php'); ?>

<script src="../assets/js/header.js"></script>
<script src="../assets/js/banner.js"></script>
<script src="../assets/js/brandSlider.js"></script>