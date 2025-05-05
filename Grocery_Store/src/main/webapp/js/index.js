/**
 * 
 */
// const cart = [];
// let total = 0;

// function addToCart(item, price) {
//   cart.push({ item, price });
//   total += price;
//   updateCartDisplay();
// }

// function updateCartDisplay() {
//   const cartItems = document.getElementById("cart-items");
//   cartItems.innerHTML = "";
//   cart.forEach(entry => {
//     const li = document.createElement("li");
//     li.textContent = `${entry.item} - Rs. ${entry.price}`;
//     cartItems.appendChild(li);
//   });
//   document.getElementById("total").textContent = `Total: Rs. ${total}`;
// }

//scroll function
function scrollToProducts() {
  document.getElementById("products").scrollIntoView({ behavior: "smooth" });
}


//cart function
const cart = [];
let total = 0;

function addToCart(item, price) {
  cart.push({ item, price });
  total += price;
  updateCartDisplay();
}

function updateCartDisplay() {
  const panelItems = document.getElementById("cart-items-panel");
  panelItems.innerHTML = "";
  cart.forEach(entry => {
    const li = document.createElement("li");
    li.textContent = `${entry.item} - Rs. ${entry.price}`;
    panelItems.appendChild(li);
  });
  document.getElementById("panel-total").textContent = `Total: Rs. ${total}`;
}

function toggleCartPanel() {
  const panel = document.getElementById("cart-panel");
  panel.classList.toggle("open");
}

function scrollToProducts() {
  document.getElementById("products").scrollIntoView({ behavior: "smooth" });
}

//pay function
document.addEventListener("DOMContentLoaded", function () {
  const payButton = document.querySelector(".pay-button");
  payButton.addEventListener("click", () => {
    alert("Redirecting to payment gateway...");
    // Here you can redirect to a payment page if needed
  });
});



// Auto Slide Offers
let currentOffer = 0;

function showOffer(index) {
  const slides = document.querySelectorAll(".offer-slide");
  slides.forEach((slide, i) => {
    slide.classList.remove("active");
    if (i === index) {
      slide.classList.add("active");
    }
  });
}

function nextOffer() {
  const totalSlides = document.querySelectorAll(".offer-slide").length;
  currentOffer = (currentOffer + 1) % totalSlides;
  showOffer(currentOffer);
}

setInterval(nextOffer, 4000); // Change slide every 4 seconds

//banner
let currentIndex = 0;
const carousel = document.getElementById("carousel");
const totalBanners = carousel.children.length;

function updateCarousel() {
  carousel.style.transform = `translateX(-${currentIndex * 100}%)`;
}

function nextSlide() {
  currentIndex = (currentIndex + 1) % totalBanners;
  updateCarousel();
}

function prevSlide() {
  currentIndex = (currentIndex - 1 + totalBanners) % totalBanners;
  updateCarousel();
}

// Auto slide every 4 seconds
setInterval(nextSlide, 4000);

