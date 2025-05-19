document.addEventListener("DOMContentLoaded", function () {
    const form = document.getElementById("addEmployeeForm");

    form.addEventListener("submit", function (e) {
        const firstName = document.getElementById("firstName").value.trim();
        const lastName = document.getElementById("lastName").value.trim();
        const email = document.getElementById("email").value.trim();
        const phone = document.getElementById("phone").value.trim();
        const password = document.getElementById("password").value.trim();
        const position = document.getElementById("position").value;

        let errors = [];

        // First name and last name must be letters only
        const nameRegex = /^[A-Za-z]+$/;
        if (!nameRegex.test(firstName)) {
            errors.push("First name must contain only letters.");
        }
        if (!nameRegex.test(lastName)) {
            errors.push("Last name must contain only letters.");
        }

        // Email format
        const emailRegex = /^\S+@\S+\.\S+$/;
        if (!emailRegex.test(email)) {
            errors.push("Invalid email format.");
        }

        // Phone: must be 10 digits
        const phoneRegex = /^\d{10}$/;
        if (!phoneRegex.test(phone)) {
            errors.push("Phone number must be 10 digits.");
        }

        // Password: minimum 6 characters
        if (password.length < 6) {
            errors.push("Password must be at least 6 characters long.");
        }

        // Position must be selected
        if (position === "") {
            errors.push("Please select a position.");
        }

        // Show errors if any
        if (errors.length > 0) {
            e.preventDefault();
            alert(errors.join("\n"));
        }
    });

    // Back button functionality
    document.getElementById("backBtn").addEventListener("click", function () {
        window.history.back();
    });
	
	
	
});




