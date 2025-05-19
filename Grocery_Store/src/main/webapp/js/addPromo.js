document.addEventListener("DOMContentLoaded", function () {
    const form = document.querySelector("form");

    form.addEventListener("submit", function (e) {
        const promoCode = form.promo_code.value.trim();
        const description = form.description.value.trim();
        const discountType = form.discount_type.value;
        const value = parseFloat(form.value.value);
        const validFrom = new Date(form.valid_from.value);
        const validTo = new Date(form.valid_to.value);
        const usageLimit = form.usage_limit.value.trim();

        const errors = [];

        // Promo Code: Alphanumeric
        const promoRegex = /^[A-Za-z0-9]+$/;
        if (!promoRegex.test(promoCode)) {
            errors.push("Promo Code must be alphanumeric (no spaces or symbols).");
        }

        // Description: Non-empty
        if (description.length < 3) {
            errors.push("Description is too short.");
        }

        // Discount Type: Must be selected
        if (!discountType) {
            errors.push("Please select a Discount Type.");
        }

        // Value: Must be a number and > 0
        if (isNaN(value) || value <= 0) {
            errors.push("Value must be a positive number.");
        }

        // Date validation
        if (validFrom > validTo) {
            errors.push("Valid From date cannot be after Valid To date.");
        }

        // Usage Limit: Must be a positive integer
        const usageRegex = /^[1-9]\d*$/;
        if (!usageRegex.test(usageLimit)) {
            errors.push("Usage Limit must be a positive whole number.");
        }

        if (errors.length > 0) {
            e.preventDefault();
            alert(errors.join("\n"));
        }
    });

    // Back button
    const backBtn = document.getElementById("backBtn");
    backBtn.addEventListener("click", () => {
        window.history.back();
    });
});
