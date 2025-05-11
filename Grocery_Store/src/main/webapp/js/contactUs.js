
document.addEventListener("DOMContentLoaded", function () {
  const form = document.querySelector(".contactform form");

  form.addEventListener("submit", function (e) {
    e.preventDefault(); // Prevent actual form submission
    
    function handleSubmit(e){
        e.preventDefault();
    }
    
    
    const form = document.querySelector(".contactform  form");
    const name = form.querySelector("input[name='name']").value.trim();
    const email = form.querySelector("input[name='email']").value.trim();
    const message = form.querySelector("textarea[name = 'message']").value.trim();

    // Basic validation
    if (!name || !email || !message) {
      alert("Please fill in all fields.");
      return;
    }

    if (!validateEmail(email)) {
      alert("Please enter a valid email address.");
      return;
    }

    // Show success (simulate sending message)
    alert("Thank you for contacting us! We’ll get back to you soon.");
    
    // Optionally reset form
    form.reset();
  });

  // Email format checker
  function validateEmail(email) {
    const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return re.test(email);
  }
});

