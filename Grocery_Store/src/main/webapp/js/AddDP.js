document.addEventListener("DOMContentLoaded", function () {
    const form = document.getElementById("deliveryPartnerForm");

    form.addEventListener("submit", function (e) {
        const firstName = document.getElementById("firstName").value.trim();
        const lastName = document.getElementById("lastName").value.trim();
        const email = document.getElementById("email").value.trim();
        const phone = document.getElementById("phone").value.trim();
        const companyName = document.getElementById("companyName").value.trim();

        // Basic validation
        if (!firstName || !lastName || !email || !phone || !companyName) {
            e.preventDefault();
            showAlert("Please fill in all required fields.", "error");
            return;
        }

        if (!validateEmail(email)) {
            e.preventDefault();
            showAlert("Please enter a valid email address.", "error");
            return;
        }

        if (!validatePhone(phone)) {
            e.preventDefault();
            showAlert("Please enter a valid phone number.", "error");
            return;
        }
    });

    function validateEmail(email) {
        // Simple regex for email validation
        const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return re.test(email);
    }

    function validatePhone(phone) {
        // Simple validation for 10-digit phone numbers
        const re = /^\d{10}$/;
        return re.test(phone);
    }

    function showAlert(message, type) {
        const alert = document.createElement("div");
        alert.className = `alert ${type === "error" ? "alert-error" : "alert-success"}`;
        alert.textContent = message;
        document.body.appendChild(alert);
        setTimeout(() => {
            alert.remove();
        }, 3000);
    }
});
