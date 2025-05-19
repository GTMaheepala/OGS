/**
 * 
 */
document.addEventListener('DOMContentLoaded', () => {
    const form = document.querySelector('form');
    const phoneInput = form.querySelector('input[name="Phone"]');
    const passwordInput = form.querySelector('input[name="Password"]');

    // Basic phone validation
    phoneInput.addEventListener('input', () => {
        const phonePattern = /^[0-9]{10}$/;
        if (!phonePattern.test(phoneInput.value)) {
            phoneInput.setCustomValidity("Please enter a 10-digit phone number.");
        } else {
            phoneInput.setCustomValidity("");
        }
    });

    // Password strength validation (optional)
    passwordInput.addEventListener('input', () => {
        if (passwordInput.value.length < 6) {
            passwordInput.setCustomValidity("Password must be at least 6 characters.");
        } else {
            passwordInput.setCustomValidity("");
        }
    });

    // Prevent submission if checkboxes are not checked
    form.addEventListener('submit', (e) => {
        const checkboxes = form.querySelectorAll('input[type="checkbox"]');
        let allChecked = true;
        checkboxes.forEach(cb => {
            if (!cb.checked) {
                allChecked = false;
            }
        });

        if (!allChecked) {
            e.preventDefault();
            alert("Please agree to the terms and policies before registering.");
        }
    });
});


document.addEventListener("DOMContentLoaded", function () {
    const form = document.querySelector("form");
    const phoneInput = form.querySelector("input[name='phone_no']");
    const passwordInput = form.querySelector("input[name='password']");
    const termsCheckbox = form.querySelector("input[type='checkbox']");
    const emailInput = form.querySelector("input[name='email']");
    const fnameInput = form.querySelector("input[name='first_name']");
    const lnameInput = form.querySelector("input[name='last_name']");

    form.addEventListener("submit", function (e) {
        let isValid = true;
        let messages = [];

        // First name validation
        if (!/^[A-Za-z]+$/.test(fnameInput.value.trim())) {
            messages.push("First name must contain only letters.");
            isValid = false;
        }

        // Last name validation
        if (!/^[A-Za-z]+$/.test(lnameInput.value.trim())) {
            messages.push("Last name must contain only letters.");
            isValid = false;
        }

        // Email validation
        if (!/^\S+@\S+\.\S+$/.test(emailInput.value.trim())) {
            messages.push("Please enter a valid email address.");
            isValid = false;
        }

        // Phone number validation (Sri Lankan format or 10 digits)
        if (!/^\d{10}$/.test(phoneInput.value.trim())) {
            messages.push("Contact number must be a 10-digit number.");
            isValid = false;
        }

        // Password validation (at least 6 characters for example)
        if (passwordInput.value.length < 6) {
            messages.push("Password must be at least 6 characters long.");
            isValid = false;
        }

        // Terms & Conditions check
        const checkboxes = form.querySelectorAll("input[type='checkbox']");
        for (let checkbox of checkboxes) {
            if (!checkbox.checked) {
                messages.push("You must agree to all policies.");
                isValid = false;
                break;
            }
        }

        // If not valid, prevent submission and alert messages
        if (!isValid) {
            e.preventDefault();
            alert(messages.join("\n"));
        }
    });
});

