const searchIcon = document.querySelector("header .same-part .working-icons li .search-icon");
const searchForm = document.querySelector("header .same-part .working-icons li form");
const navBurger = document.querySelector("header .left-part .burger i");
const nav = document.querySelector("header nav");
const products = document.querySelector("header nav .nav-dropdown .product-text");
const productsDropdown = document.querySelector("header nav .nav-dropdown .products-dropdown");

products.addEventListener("click", () => {
    productsDropdown.classList.toggle("open");
})

searchIcon.addEventListener("click", () => {
    searchForm.classList.toggle("open");

    if (searchForm.classList.contains("open")) {
        nav.classList.remove("open");
        navBurger.classList.replace("fa-arrow-left", "fa-bars");
        return searchIcon.classList.replace("fa-magnifying-glass", "fa-xmark");
    }
    searchIcon.classList.replace("fa-xmark", "fa-magnifying-glass");
});

navBurger.addEventListener("click", () => {
    nav.classList.toggle("open");

    if (nav.classList.contains("open")) {
        searchForm.classList.remove("open");
        searchIcon.classList.replace("fa-xmark", "fa-magnifying-glass");
        return navBurger.classList.replace("fa-bars", "fa-arrow-left");
    }

    navBurger.classList.replace("fa-arrow-left", "fa-bars");
})
