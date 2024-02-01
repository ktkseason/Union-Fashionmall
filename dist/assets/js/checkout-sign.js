const createSection = document.querySelector("section.create-account");
const createBtn = document.querySelector("a.create-account");

const signInSection = document.querySelector("section.sign-in");
const signInBtn = document.querySelector("a.sign-in");

createBtn.addEventListener("click", () => {
    signInSection.classList.remove("active");
    createSection.classList.add("active");
});
signInBtn.addEventListener("click", () => {
    createSection.classList.remove("active");
    signInSection.classList.add("active");
});