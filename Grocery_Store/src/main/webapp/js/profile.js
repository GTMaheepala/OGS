/**
 * 
 */
// Back button logic
document.getElementById("backBtn").addEventListener("click", () => {
  history.back(); // Goes to the previous page
});

/*delete confirm box */
function confirmDelete() {
    return confirm("Are you sure you want to delete this account?");
}