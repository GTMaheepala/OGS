/**
 * 
 */
document.addEventListener('DOMContentLoaded', () => {
    // Initialize elements
    const addUserBtn = document.getElementById('addUserBtn');
    const addUserModal = document.getElementById('addUserModal');
    const addUserForm = document.getElementById('addUserForm');
    const closeModalBtn = document.querySelector('.close-modal');
    const cancelBtn = document.querySelector('.cancel-btn');
    const searchInput = document.querySelector('.search-box input');
    const userTable = document.querySelector('.user-table tbody');

    // Show modal
    addUserBtn.addEventListener('click', () => {
        addUserModal.style.display = 'block';
        document.body.style.overflow = 'hidden';
    });

    // Close modal
    const closeModal = () => {
        addUserModal.style.display = 'none';
        document.body.style.overflow = 'auto';
        addUserForm.reset();
    };

    closeModalBtn.addEventListener('click', closeModal);
    cancelBtn.addEventListener('click', closeModal);

    // Close modal when clicking outside
    window.addEventListener('click', (e) => {
        if (e.target === addUserModal) {
            closeModal();
        }
    });

    // Handle form submission
    addUserForm.addEventListener('submit', (e) => {
        e.preventDefault();
        
        // Get form values
        const firstName = document.getElementById('firstName').value;
        const lastName = document.getElementById('lastName').value;
        const email = document.getElementById('email').value;
        const phone = document.getElementById('phone').value;
        const password = document.getElementById('password').value;

        // Generate unique ID
        const userId = 'USR' + String(Math.floor(Math.random() * 1000)).padStart(3, '0');

        // Create new row
        const newRow = document.createElement('tr');
        newRow.innerHTML = `
            <td>${userId}</td>
            <td>${firstName}</td>
            <td>${lastName}</td>
            <td>${email}</td>
            <td>${phone}</td>
            <td>••••••••</td>
            <td class="action-buttons">
                <button class="edit-btn"><i class="fas fa-edit"></i></button>
                <button class="delete-btn"><i class="fas fa-trash"></i></button>
            </td>
        `;

        // Add event listeners to new buttons
        const editBtn = newRow.querySelector('.edit-btn');
        const deleteBtn = newRow.querySelector('.delete-btn');

        editBtn.addEventListener('click', () => editUser(newRow));
        deleteBtn.addEventListener('click', () => deleteUser(newRow));

        // Add row to table
        userTable.appendChild(newRow);

        // Show success message
        showAlert('User added successfully!', 'success');

        // Close modal
        closeModal();
    });

    // Edit user function
    const editUser = (row) => {
        const cells = row.cells;
        const currentData = {
            firstName: cells[1].textContent,
            lastName: cells[2].textContent,
            email: cells[3].textContent,
            phone: cells[4].textContent
        };

        // Create edit form
        const editForm = document.createElement('form');
        editForm.className = 'edit-form';
        editForm.innerHTML = `
            <input type="text" value="${currentData.firstName}" required>
            <input type="text" value="${currentData.lastName}" required>
            <input type="email" value="${currentData.email}" required>
            <input type="tel" value="${currentData.phone}" required>
            <button type="submit" class="save-edit-btn"><i class="fas fa-check"></i></button>
            <button type="button" class="cancel-edit-btn"><i class="fas fa-times"></i></button>
        `;

        // Replace cells with form
        for (let i = 1; i < 5; i++) {
            cells[i].innerHTML = '';
            cells[i].appendChild(editForm.children[i - 1]);
        }

        // Handle form submission
        editForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const inputs = editForm.querySelectorAll('input');
            for (let i = 1; i < 5; i++) {
                cells[i].textContent = inputs[i - 1].value;
            }
            showAlert('User updated successfully!', 'success');
        });

        // Handle cancel
        editForm.querySelector('.cancel-edit-btn').addEventListener('click', () => {
            for (let i = 1; i < 5; i++) {
                cells[i].textContent = Object.values(currentData)[i - 1];
            }
        });
    };

    // Delete user function
    const deleteUser = (row) => {
        if (confirm('Are you sure you want to delete this user?')) {
            row.remove();
            showAlert('User deleted successfully!', 'success');
        }
    };

    // Add event listeners to existing buttons
    document.querySelectorAll('.edit-btn').forEach(btn => {
        btn.addEventListener('click', () => editUser(btn.closest('tr')));
    });

    document.querySelectorAll('.delete-btn').forEach(btn => {
        btn.addEventListener('click', () => deleteUser(btn.closest('tr')));
    });

    // Search functionality
    searchInput.addEventListener('input', (e) => {
        const searchTerm = e.target.value.toLowerCase();
        const rows = userTable.querySelectorAll('tr');

        rows.forEach(row => {
            const text = Array.from(row.cells)
                .slice(0, -1) // Exclude actions column
                .map(cell => cell.textContent.toLowerCase())
                .join(' ');

            row.style.display = text.includes(searchTerm) ? '' : 'none';
        });
    });

    // Show alert function
    const showAlert = (message, type) => {
        const alert = document.createElement('div');
        alert.className = `alert alert-${type}`;
        alert.innerHTML = `
            <span>${message}</span>
            <button class="close-alert"><i class="fas fa-times"></i></button>
        `;

        document.body.appendChild(alert);

        // Remove alert after 3 seconds
        setTimeout(() => {
            alert.remove();
        }, 3000);

        // Close button
        alert.querySelector('.close-alert').addEventListener('click', () => {
            alert.remove();
        });
    };
});
