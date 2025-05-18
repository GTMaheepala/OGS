document.addEventListener("DOMContentLoaded", function () {
    const form = document.getElementById("addProductForm");
  
    form.addEventListener("submit", function (e) {
      e.preventDefault(); // Stop the form from refreshing the page
  
      const name = document.getElementById("productName").value.trim();
      const category = document.getElementById("category").value.trim();
      const price = parseFloat(document.getElementById("price").value);
      const stock = parseInt(document.getElementById("stock").value, 10);
  
      if (!name || !category || isNaN(price) || isNaN(stock)) {
        alert("Please fill in all fields correctly.");
        return;
      }

      window.location.href = "newProduct.html";
  
      const status = stock < 10 ? "Low Stock" : "In Stock";
      const statusClass = stock < 10 ? "low-stock" : "in-stock";
  
      const row = document.createElement("tr");
      row.innerHTML = `
        <td>${name}</td>
        <td>${category}</td>
        <td>${stock}</td>
        <td><span class="status ${statusClass}">${status}</span></td>
        <td>
          <button class="btn blue" onclick="updateProduct(this)">Update</button>
          <button class="btn red" onclick="removeProduct(this)">Remove</button>
        </td>
      `;
  
      document.getElementById("inventoryTable").appendChild(row);
      form.reset(); // Clear the form after adding
    });
  });
  
  
  function clearFormFields() {
    document.getElementById("productName").value = "";
    document.getElementById("category").value = "";
    document.getElementById("price").value = "";
    document.getElementById("stock").value = "";
  }
  
  function removeProduct(button) {
    const row = button.closest("tr");
    if (confirm("Are you sure you want to remove this product?")) {
      row.remove();
    }
  }
  
  function updateProduct(button) {
    const row = button.closest("tr");
    const cells = row.querySelectorAll("td");
    const newStock = prompt("Enter new stock value:", cells[2].textContent);
  
    if (newStock !== null && !isNaN(newStock) && newStock.trim() !== "") {
      const stock = parseInt(newStock, 10);
      cells[2].textContent = stock;
  
      const statusCell = cells[3].querySelector(".status");
      if (stock < 10) {
        statusCell.textContent = "Low Stock";
        statusCell.className = "status low-stock";
      } else {
        statusCell.textContent = "In Stock";
        statusCell.className = "status in-stock";
      }
    }
  }
  
  // Promotion Creation Logic
 document.addEventListener("DOMContentLoaded", function () {
  const button = document.getElementById("addPromotionBtn"); 
  if (!button) {
    console.error("Promotion button not found");
    return;
  }

  button.addEventListener("click", function () {
    const inputs = document.querySelectorAll(".half input");
    const [type, value, start, end] = Array.from(inputs).map(i => i.value.trim());

    if (!type || !value || !start || !end) {
      alert("Please complete all promotion fields.");
      return;
    }

    const promoContainer = document.querySelector(".half:last-child");
    const promo = document.createElement("div");
    promo.classList.add("promotion");

    promo.innerHTML = `
      <strong>${type}</strong>
      <p>${value}<br />${formatDate(start)} - ${formatDate(end)}</p>
      <span class="badge scheduled">Scheduled</span>
    `;

    promoContainer.appendChild(promo);
    inputs.forEach(input => input.value = "");
  });

  function formatDate(dateStr) {
    const date = new Date(dateStr);
    const options = { month: "short", day: "numeric" };
    return date.toLocaleDateString("en-US", options);
  }
});
