/**
 * 
 */

document.addEventListener("DOMContentLoaded", () => {
    const navItems = document.querySelectorAll(".sidebar ul li");
  
    navItems.forEach(item => {
      item.addEventListener("click", () => {
        navItems.forEach(el => el.classList.remove("active"));
        item.classList.add("active");
      });
    });
  });
  
