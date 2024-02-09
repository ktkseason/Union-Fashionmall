<!-- Sign in form -->
<section class="container sign">
    <div class="form-container">
        <h1>Sign In</h1>
        <form action="../_actions/verify-user.php" method="post">

            <?php if (isset($_GET['incorrect'])) : ?>
            <div class="alert error">
                <h4>Login Failed. Please try again.</h4>
            </div>
            <?php endif; ?>
            <?php if (isset($_GET['success'])) : ?>
            <div class="alert success">
                <h4>Account is created successfully. Please Sign in.</h4>
            </div>
            <?php endif; ?>

            <div class="inputs">
                <input type="email" name="email" placeholder="john.doe@gmail.com"
                    value="<?php if (isset($_GET['email'])) echo $_GET['email'] ?>" required>
                <input type="password" name="password" placeholder="xxxxxxxx" required>
                <input type="submit" class="btn btn-primary">
            </div>
        </form>
        <p>New Customer? <a href="signup.php">Create an account</a></p>
    </div>
</section>