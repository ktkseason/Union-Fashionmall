<?php
include("../../vendor/autoload.php");

use Libs\Database\MySQL;
use Libs\Database\Stocks;
use Helpers\HTTP;
use Helpers\Auth;

$auth = Auth::adminCheck();

$data = new Stocks(new MySQL());

$gender_id =  $_POST['gender'] ?? $_GET['gender'];
$topic_id = $_POST['topic'] ?? $_GET['topic'];
$id = $_GET['id'] ?? $_POST['id'];

$query = "gender=" . $gender_id . "&topic=" . $topic_id;

if (isset($_GET['del'])) {
    $data->deleteImage($id);
    $query .= "&deleted=1";
    HTTP::redirect("/admin/stock-edit.php", $query);
}

if (isset($_POST['add'])) {
    $targetDir = "../../assets/img/";
    $allowTypes = array('jpg', 'png', 'jpeg', 'gif');
    $fileNames = array_filter($_FILES['images']['name']);
    foreach ($_FILES['images']['name'] as $key => $val) {
        $fileName = basename($_FILES['images']['name'][$key]);
        $targetFilePath = $targetDir . $fileName;
        $fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION);
        if (in_array($fileType, $allowTypes)) {
            if (move_uploaded_file($_FILES["images"]["tmp_name"][$key], $targetFilePath)) {
                $input = [
                    "name" => $fileName,
                    "product_id" => $id
                ];
                $data->addImage($input);
                $query .= "&added=1";
            }
        } else {
            $query .= "&invalid=1";
            HTTP::redirect("/admin/stock-edit.php", $query);
        }
    }
    HTTP::redirect("/admin/stock-edit.php", $query);
}
