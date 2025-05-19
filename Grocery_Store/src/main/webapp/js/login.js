/**
 * 
 */
const wrapper = document.querySelector('.wrapper');
const loginLink = document.querySelector('.login-link');
const registerLink = document.querySelector('.register-link');
const btnPopup = document.querySelector('.btnLogin-popup');

registerLink.addEventListener('click', ()=> {
    wrapper.classList.add('active');
});

loginLink.addEventListener('click', ()=> {
    wrapper.classList.remove('active');
});

btnPopup.addEventListener('click', ()=> {
    wrapper.classList.add('active-popup');
});


document.addEventListener("DOMContentLoaded", function () {
    const form = document.querySelector("form");
    const emailInput = form.querySelector("input[name='email']");
    const passwordInput = form.querySelector("input[name='password']");

    form.addEventListener("submit", function (e) {
        let isValid = true;
        let messages = [];

        // Email format check
        const emailPattern = /^\S+@\S+\.\S+$/;
        if (!emailPattern.test(emailInput.value.trim())) {
            messages.push("Please enter a valid email address.");
            isValid = false;
        }

        // Password basic check
        if (passwordInput.value.trim().length < 6) {
            messages.push("Password must be at least 6 characters long.");
            isValid = false;
        }

        // Show alert if validation fails
        if (!isValid) {
            e.preventDefault(); // Stop form submission
            alert(messages.join("\n"));
        }
    });
});
