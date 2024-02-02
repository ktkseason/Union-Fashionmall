<!-- Contact Form -->
<section class="container contact-form">
    <div class="form-container">
        <h1>Get in touch <span>Feel free to leave your feedback.</span></h1>
        <form action="../_actions/add-feedback.php" method="post">
            <?php if (isset($_GET['success'])) : ?>
            <div class="alert success">
                <h4>Feedback Sent.</h4>
            </div>
            <?php endif; ?>
            <div class="inputs">
                <input type="text" name="name" placeholder="John Doe" required>
                <input type="email" name="email" placeholder="john.doe@gmail.com" required>
                <input type="text" name="subject" placeholder="Subject" required>
                <textarea name="feedback" placeholder="Feedback ..." required></textarea>
            </div>
            <div class="submit">
                <input type="submit" class="btn btn-primary">
            </div>
        </form>
    </div>
</section>

<!-- Contact Info -->
<section class="py contact-info">
    <div class="sector">
        <h3>Phone</h3>
        <p>Feel free to connect with us for any assistance. Dial these numbers to reach Union Fashion Mall's dedicated
            customer service team.</p>
        <div class="contacts-holder">
            <div class="phone"><a href="#"><i class="fa-solid fa-phone"></i>+95 123456789</a></div>
            <div class="phone"><a href="#"><i class="fa-solid fa-phone"></i>+95 987654321</a></div>
            <div class="phone"><a href="#"><i class="fa-solid fa-phone"></i>+95 678965432</a></div>
            <div class="phone"><a href="#"><i class="fa-solid fa-phone"></i>+95 345675432</a></div>
        </div>
    </div>
    <div class="sector">
        <h3>Mail</h3>
        <p>
            For any questions or assistance, feel free to reach out to us via emails. Our dedicated team is here to
            enhance your shopping experience and provide the utmost support.</p>
        <div class="contacts-holder">
            <div class="mail"><a href="#"><i class="fa-solid fa-envelope"></i>union.fashion.com</a></div>
            <div class="mail"><a href="#"><i class="fa-solid fa-envelope"></i>union.fashion.customerservice.com</a>
            </div>
            <div class="mail"><a href="#"><i class="fa-solid fa-envelope"></i>union.fashion.businesspartner.com</a>
            </div>
        </div>
    </div>
</section>