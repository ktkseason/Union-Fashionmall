const dropdownNames = document.querySelectorAll(".filter .filter-container .product-filter .filter-dropdown .dropdown-name");
const dropdowns = document.querySelectorAll(".filter .filter-container .product-filter .filter-dropdown .dropdown");
const dropdownIcons = document.querySelectorAll(".filter .filter-container .product-filter .filter-dropdown .dropdown-name .dropdown-icon");

const filterIcon = document.querySelector(".filter .filter-container .filter-options .filter-icon");
const filter = document.querySelector(".filter .filter-container .filter-options .product-filter");

filterIcon.addEventListener("click", () => {
    filter.classList.toggle("open");
    dropdowns[dropdowns.length - 1].classList.remove("open");
    dropdownIcons[dropdownIcons.length - 1].classList.replace("fa-angle-up", "fa-angle-down");
})

dropdownNames.forEach((dropdownName, pkey) => {
    dropdownName.addEventListener("click", () => {

        if (pkey == dropdownNames.length - 1) {
            filter.classList.remove("open");
        }
        dropdowns.forEach((dropdown, key) => {
            if (!(key == pkey)) {
                dropdown.classList.remove("open");
            }
        });

        dropdownIcons.forEach((dropdownIcon, key) => {
            if (!(key == pkey)) {
                dropdownIcon.classList.replace("fa-angle-up", "fa-angle-down");
            }
        });

        dropdowns[pkey].classList.toggle("open");
        if (dropdowns[pkey].classList.contains("open")) {
            return dropdownIcons[pkey].classList.replace("fa-angle-down", "fa-angle-up");
        }
        dropdownIcons[pkey].classList.replace("fa-angle-up", "fa-angle-down");
    })
});