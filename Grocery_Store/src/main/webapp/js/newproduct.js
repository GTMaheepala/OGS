const form = document.getElementById("productForm");
const table = document.getElementById("productTable").getElementsByTagName('tbody')[0];
const imageInput = document.getElementById("image");

// Preview selected image
imageInput.addEventListener("change", function () {
  const previewArea = document.getElementById("preview");
  previewArea.innerHTML = "";

  if (this.files && this.files[0]) {
    const reader = new FileReader();
    reader.onload = function (e) {
      const img = document.createElement("img");
      img.src = e.target.result;
      img.className = "thumbnail";
      previewArea.appendChild(img);
    };
    reader.readAsDataURL(this.files[0]);
  }
});

form.addEventListener("submit", function (event) {
  event.preventDefault();

  const number = document.getElementById("number").value.trim();
  const name = document.getElementById("name").value.trim();
  const price = document.getElementById("price").value.trim();
  const quantity = document.getElementById("quantity").value.trim();
  const category = document.getElementById("category").value;

  // Validation
  if (!number || !name || !price || !quantity || !category) {
    showMessage("Please fill all required fields.", "error");
    return;
  }

  // Check for duplicate product number
  const rows = table.getElementsByTagName("tr");
  for (let row of rows) {
    if (row.cells[1] && row.cells[1].textContent === number) {
      showMessage("Duplicate product number. Please use a unique one.", "error");
      return;
    }
  }

  const newRow = table.insertRow();

  // Handle image
  if (imageInput.files && imageInput.files[0]) {
    const reader = new FileReader();
    reader.onload = function (e) {
      newRow.innerHTML = `
        <td><img src="${e.target.result}" class="thumbnail" /></td>
        <td>${number}</td>
        <td>${name}</td>
        <td>${price}</td>
        <td>${quantity}</td>
        <td>${category}</td>
        <td><button class="delete-btn">Delete</button></td>
      `;
      attachDeleteEvent(newRow);
    };
    reader.readAsDataURL(imageInput.files[0]);
  } else {
    newRow.innerHTML = `
      <td>No Image</td>
      <td>${number}</td>
      <td>${name}</td>
      <td>${price}</td>
      <td>${quantity}</td>
      <td>${category}</td>
      <td><button class="delete-btn">Delete</button></td>
    `;
    attachDeleteEvent(newRow);
  }

  form.reset();
  document.getElementById("preview").innerHTML = "";
  showMessage("Product uploaded successfully!", "success");
});

// Utility: Display messages
function showMessage(message, type) {
  let msgBox = document.getElementById("messageBox");
  msgBox.innerText = message;
  msgBox.className = type;
  msgBox.style.display = "block";
  setTimeout(() => {
    msgBox.style.display = "none";
  }, 3000);
}

// Utility: Attach delete event to rows
function attachDeleteEvent(row) {
  const btn = row.querySelector(".delete-btn");
  btn.addEventListener("click", function () {
    row.remove();
    showMessage("Product removed.", "success");
  });
}
