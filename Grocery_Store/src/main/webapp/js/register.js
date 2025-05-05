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
