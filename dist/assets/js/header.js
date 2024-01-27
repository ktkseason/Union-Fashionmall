const searchIcon = document.querySelector("header .same-part .working-icons li .search-icon");
const searchForm = document.querySelector("header .same-part .working-icons li form");
const navBurger = document.querySelector("header .left-part .burger i");
const nav = document.querySelector("header nav");
const products = document.querySelector("header nav .nav-dropdown .product-text");
const productsDropdown = document.querySelector("header nav .nav-dropdown .products-dropdown");
const dropdownIcon = document.querySelector("header nav .nav-dropdown .product-text .dropdown-icon");


products.addEventListener("click", () => {
    productsDropdown.classList.toggle("open");
    searchForm.classList.remove("open");
    searchIcon.classList.replace("fa-circle-xmark", "fa-magnifying-glass");

    if (productsDropdown.classList.contains("open")) {
        console.log("clicked");
        return dropdownIcon.classList.replace("fa-angle-down", "fa-angle-up");
    }
    dropdownIcon.classList.replace("fa-angle-up", "fa-angle-down");
})

searchIcon.addEventListener("click", () => {
    searchForm.classList.toggle("open");
    nav.classList.remove("open");
    productsDropdown.classList.remove("open");
    navBurger.classList.replace("fa-arrow-left", "fa-bars");
    dropdownIcon.classList.replace("fa-angle-up", "fa-angle-down");

    if (searchForm.classList.contains("open")) {
        return searchIcon.classList.replace("fa-magnifying-glass", "fa-circle-xmark");
    }
    searchIcon.classList.replace("fa-circle-xmark", "fa-magnifying-glass");
});

navBurger.addEventListener("click", () => {
    nav.classList.toggle("open");
    searchForm.classList.remove("open");
    searchIcon.classList.replace("fa-circle-xmark", "fa-magnifying-glass");

    if (nav.classList.contains("open")) {
        return navBurger.classList.replace("fa-bars", "fa-arrow-left");
    }
    navBurger.classList.replace("fa-arrow-left", "fa-bars");
})
