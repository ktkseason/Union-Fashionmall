const blocks = document.querySelectorAll(".profile .customer-info .change-block");
const btns = document.querySelectorAll(".profile .customer-info .change-block .change-btn");

btns.forEach((btn, key) => {
    btn.addEventListener("click", () => {
        blocks.forEach(block => {
            block.classList.remove("active");
        })
        if (key < blocks.length - 1) {
            blocks[key + 1].classList.add("active");
        } else {
            blocks[0].classList.add("active");
        }
    })
})