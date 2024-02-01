<!-- <a href=">Send Email</a> -->
<?php
include("../vendor/autoload.php");

use Helpers\Auth;
use Helpers\HTTP;
use Libs\Database\MySQL;
use Libs\Database\Users;

$auth = Auth::adminCheck();

$user = new Users(new MySQL());

$feedbacks = $user->getFeedbackAll();
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
            <div class="feedbacks showcase">
                <h1>Feedbacks</h1>
                <?php if (count($feedbacks)) : ?>
                    <div class="feedback-container">
                        <?php foreach ($feedbacks as $feedback) : ?>
                            <div class="feedback">
                                <div class="info">
                                    <h4><?= $feedback->name ?> - <?= $feedback->email ?></h4>
                                    <h3><?= $feedback->subject ?></h3>
                                    <p><?= $feedback->feedback ?></p>
                                </div>
                                <a href="mailto:<?= $feedback->email ?>?subject=Union Fashionmall replying your feedback." class="btn btn-outline btn-outline-secondary">Reply</a>
                            </div>
                        <?php endforeach; ?>
                    </div>
                <?php else : ?>
                    <h2 class=" no-feedback">There is no current feedback.</h2>
                <?php endif; ?>
            </div>
        </section>
    </main>
</body>

</html>