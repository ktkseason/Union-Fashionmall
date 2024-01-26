let slider = document.querySelector('.banner .slide-holder');
let slides = document.querySelectorAll('.banner .slide-holder .slide');
let next = document.querySelector('.right');
let prev = document.querySelector('.left');
let dots = document.querySelectorAll('.banner .control-dots li');

let lengthItems = slides.length - 1;
let active = 0;
next.onclick = function () {
    active = active + 1 <= lengthItems ? active + 1 : 0;
    reloadSlider();
}
prev.onclick = function () {
    active = active - 1 >= 0 ? active - 1 : lengthItems;
    reloadSlider();
}
let refreshInterval = setInterval(() => { next.click() }, 5000);
function reloadSlider() {
    slides.forEach(slide => slide.classList.remove('active'));
    slides[active].classList.add('active');

    let last_active_dot = document.querySelector('.banner .control-dots li.active');
    last_active_dot.classList.remove('active');
    dots[active].classList.add('active');

    clearInterval(refreshInterval);
    refreshInterval = setInterval(() => { next.click() }, 3000);
}

dots.forEach((li, key) => {
    li.addEventListener('click', () => {
        active = key;
        reloadSlider();
    })
})
window.onresize = function (event) {
    reloadSlider();
};

