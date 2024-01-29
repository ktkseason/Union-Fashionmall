<!-- Sign in form -->
<section class="container sign">
    <div class="form-container">
        <h1>Sign Up</h1>
        <form action="../_actions/add-user.php" method="post">
            <div class="inputs">
                <input type="text" name="name" placeholder="John Doe" required>
                <input type="email" name="email" placeholder="john.doe@gmail.com" required>
                <input type="password" name="password" placeholder="xxxxxxxx" required>
                <p>By creating an account, you agree to our <a href="#">Privacy Policy</a> and <a href="#">Terms of
                        Use.</a></p>
                <input type="submit" class="btn btn-primary">
            </div>
        </form>
        <p>Already have an account? <a href="signin.php">Sign in</a></p>
    </div>
</section>