// UpdateDP.js

document.addEventListener('DOMContentLoaded', () => {
    const form = document.getElementById('deliveryPartnerForm');

    form.addEventListener('submit', function (event) {
        // Trim and validate form inputs
        const firstName = form.firstName.value.trim();
        const lastName = form.lastName.value.trim();
        const email = form.email.value.trim();
        const phone = form.phoneNO.value.trim();
        const companyName = form.companyName.value.trim();
        
        // Basic validation
        if (!firstName || !lastName || !email || !phone || !companyName) {
            alert('Please fill in all the required fields.');
            event.preventDefault(); // Stop form submission
            return;
        }

        // Email format check
        const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailPattern.test(email)) {
            alert('Please enter a valid email address.');
            event.preventDefault();
            return;
        }

        // Phone number format check (you can modify this pattern for your locale)
        const phonePattern = /^[0-9]{10}$/;
        if (!phonePattern.test(phone)) {
            alert('Phone number must be 10 digits.');
            event.preventDefault();
            return;
        }
    });

    // Optional: Highlight changed fields
    const inputs = form.querySelectorAll('input, select');
    inputs.forEach(input => {
        input.addEventListener('change', () => {
            input.classList.add('modified');
        });
    });
});
