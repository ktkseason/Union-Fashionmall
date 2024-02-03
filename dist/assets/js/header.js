const navBurger = document.querySelector("header .left-part .burger i");
const nav = document.querySelector("header nav");
const products = document.querySelector("header nav .nav-dropdown .product-text");
const productsDropdown = document.querySelector("header nav .nav-dropdown .products-dropdown");
const dropdownIcon = document.querySelector("header nav .nav-dropdown .product-text .dropdown-icon");

nav.classList.remove("open");
productsDropdown.classList.remove("open");
navBurger.classList.replace("fa-arrow-left", "fa-bars");
dropdownIcon.classList.replace("fa-angle-up", "fa-angle-down");

products.addEventListener("click", () => {
    productsDropdown.classList.toggle("open");
    if (productsDropdown.classList.contains("open")) {
        return dropdownIcon.classList.replace("fa-angle-down", "fa-angle-up");
    }
    dropdownIcon.classList.replace("fa-angle-up", "fa-angle-down");
})

navBurger.addEventListener("click", () => {
    nav.classList.toggle("open");
    if (nav.classList.contains("open")) {
        return navBurger.classList.replace("fa-bars", "fa-arrow-left");
    }
    navBurger.classList.replace("fa-arrow-left", "fa-bars");
})
