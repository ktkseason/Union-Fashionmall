const imgViews = document.querySelectorAll(".detail-container .detail .img-showcase .img-view img");
const imgThumbnails = document.querySelectorAll(".detail-container .detail .img-showcase .thumbnail-holder .img-thumbnail");


imgThumbnails.forEach((imgThumbnail, key) => {
    imgThumbnail.addEventListener("click", () => {
        imgViews.forEach(imgView => {
            imgView.classList.remove("active");
        });
        imgThumbnails.forEach(imgThumbnail => {
            imgThumbnail.classList.remove("active");
        })
        imgViews[key].classList.add("active");
        imgThumbnail.classList.add("active");
    })
});
