/**
 * 
 */
// Show scroll button when scrolled down
const scrollBtn = document.getElementById("scrollToTopBtn");
window.onscroll = function () {
  if (document.body.scrollTop > 200 || document.documentElement.scrollTop > 200) {
    scrollBtn.style.display = "block";
  } else {
    scrollBtn.style.display = "none";
  }
};

// Scroll to top smoothly
scrollBtn.onclick = function () {
  window.scrollTo({ top: 0, behavior: 'smooth' });
};