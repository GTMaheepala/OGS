/*
 
document.addEventListener('DOMContentLoaded', function() {
    // Initialize elements
    const addEmployeeBtn = document.getElementById('addEmployeeBtn');
    const addEmployeeModal = document.getElementById('addEmployeeModal');
    const closeModalBtn = document.querySelector('.close-modal');
    const cancelBtn = document.querySelector('.cancel-btn');
    const addEmployeeForm = document.getElementById('addEmployeeForm');
    const searchInput = document.querySelector('.search-box input');
    const positionFilter = document.getElementById('positionFilter');
    const employeeTable = document.querySelector('.employee-table tbody');

    // Show modal
    addEmployeeBtn.addEventListener('click', () => {
        addEmployeeModal.style.display = 'block';
    });/*

    // Close modal
    function closeModal() {
        addEmployeeModal.style.display = 'none';
        addEmployeeForm.reset();
    }

    closeModalBtn.addEventListener('click', closeModal);
    cancelBtn.addEventListener('click', closeModal);

    // Close modal when clicking outside
    window.addEventListener('click', (e) => {
        if (e.target === addEmployeeModal) {
            closeModal();
        }
    });

    // Handle form submission
    addEmployeeForm.addEventListener('submit', function(e) {
        e.preventDefault();

        // Get form values
        const firstName = document.getElementById('firstName').value;
        const lastName = document.getElementById('lastName').value;
        const email = document.getElementById('email').value;
        const phone = document.getElementById('phone').value;
        const position = document.getElementById('position').value;
        const password = document.getElementById('password').value;

        // Generate employee ID
        const employeeId = 'EMP' + String(Math.floor(Math.random() * 1000)).padStart(3, '0');

        // Create new row
        const newRow = document.createElement('tr');
        newRow.innerHTML = `
            <td>${employeeId}</td>
            <td>${firstName}</td>
            <td>${lastName}</td>
            <td>${email}</td>
            <td>${phone}</td>
            <td><span class="position-badge ${position.replace('_', '-')}">${position.replace('_', ' ').replace(/\b\w/g, l => l.toUpperCase())}</span></td>
            <td>••••••••</td>
            <td class="action-buttons">
                <button class="edit-btn"><i class="fas fa-edit"></i></button>
                <button class="delete-btn"><i class="fas fa-trash"></i></button>
            </td>
        `;

        // Add to table
        employeeTable.appendChild(newRow);

        // Close modal and reset form
        closeModal();

        // Show success message
        showAlert('Employee added successfully!');
    });

    // Handle edit button clicks
    employeeTable.addEventListener('click', function(e) {
        if (e.target.closest('.edit-btn')) {
            const row = e.target.closest('tr');
            const cells = row.cells;
            
            // Get current values
            const firstName = cells[1].textContent;
            const lastName = cells[2].textContent;
            const email = cells[3].textContent;
            const phone = cells[4].textContent;
            const position = cells[5].querySelector('.position-badge').textContent.toLowerCase().replace(' ', '_');

            // Fill form with current values
            document.getElementById('firstName').value = firstName;
            document.getElementById('lastName').value = lastName;
            document.getElementById('email').value = email;
            document.getElementById('phone').value = phone;
            document.getElementById('position').value = position;

            // Show modal
            addEmployeeModal.style.display = 'block';
        }
    });

    // Handle delete button clicks
    employeeTable.addEventListener('click', function(e) {
        if (e.target.closest('.delete-btn')) {
            if (confirm('Are you sure you want to delete this employee?')) {
                const row = e.target.closest('tr');
                row.remove();
                showAlert('Employee deleted successfully!');
            }
        }
    });*/
/*
    // Search functionality
    searchInput.addEventListener('input', function() {
        const searchTerm = this.value.toLowerCase();
        const rows = employeeTable.querySelectorAll('tr');

        rows.forEach(row => {
            const text = row.textContent.toLowerCase();
            row.style.display = text.includes(searchTerm) ? '' : 'none';
        });
    });

    // Filter by position
    positionFilter.addEventListener('change', function() {
        const selectedPosition = this.value;
        const rows = employeeTable.querySelectorAll('tr');

        rows.forEach(row => {
            const position = row.querySelector('.position-badge').textContent.toLowerCase().replace(' ', '_');
            row.style.display = selectedPosition === '' || position === selectedPosition ? '' : 'none';
        });
    });

    // Function to show alert
    function showAlert(message) {
        const alertDiv = document.createElement('div');
        alertDiv.className = 'alert-box';
        alertDiv.innerHTML = `
            <div class="alert-icon">
                <i class="fas fa-check"></i>
            </div>
            <div class="alert-content">
                <h3>Success!</h3>
                <p>${message}</p>
            </div>
            <button class="close-alert">
                <i class="fas fa-times"></i>
            </button>
        `;

        document.body.appendChild(alertDiv);

        // Remove alert after 3 seconds
        setTimeout(() => {
            alertDiv.remove();
        }, 3000);

        // Close alert button
        const closeAlertBtn = alertDiv.querySelector('.close-alert');
        closeAlertBtn.addEventListener('click', () => {
            alertDiv.remove();
        });
    }*/
	
	document.addEventListener('DOMContentLoaded', function() {
	    // Initialize elements
	    const addEmployeeBtn = document.getElementById('addEmployeeBtn');
	    const addEmployeeModal = document.getElementById('addEmployeeModal');
	    const closeModalBtn = document.querySelector('.close-modal');
	    const cancelBtn = document.querySelector('.cancel-btn');
	    const addEmployeeForm = document.getElementById('addEmployeeForm');
	    const searchInput = document.querySelector('.search-box input');
	    const positionFilter = document.getElementById('positionFilter');
	    const employeeTable = document.querySelector('.employee-table tbody');

	    // Show modal
	    if (addEmployeeBtn) {
	        addEmployeeBtn.addEventListener('click', () => {
	            addEmployeeModal.style.display = 'block';
	        });
	    }

	    // Close modal
	    function closeModal() {
	        addEmployeeModal.style.display = 'none';
	        addEmployeeForm.reset();
	    }

	    if (closeModalBtn) closeModalBtn.addEventListener('click', closeModal);
	    if (cancelBtn) cancelBtn.addEventListener('click', closeModal);

	    // Close modal when clicking outside
	    window.addEventListener('click', (e) => {
	        if (e.target === addEmployeeModal) {
	            closeModal();
	        }
	    });

	    // Handle form submission
	    if (addEmployeeForm) {
	        addEmployeeForm.addEventListener('submit', function(e) {
	            e.preventDefault();

	            // Get form values
	            const firstName = document.getElementById('firstName').value;
	            const lastName = document.getElementById('lastName').value;
	            const email = document.getElementById('email').value;
	            const phone = document.getElementById('phone').value;
	            const position = document.getElementById('position').value;
	            const password = document.getElementById('password').value;

	            // Generate employee ID
	            const employeeId = 'EMP' + String(Math.floor(Math.random() * 1000)).padStart(3, '0');

	            // Create new row
	            const newRow = document.createElement('tr');
	            newRow.innerHTML = `
	                <td>${employeeId}</td>
	                <td>${firstName}</td>
	                <td>${lastName}</td>
	                <td>${email}</td>
	                <td>${phone}</td>
	                <td><span class="position-badge ${position.replace('_', '-')}">${position.replace('_', ' ').replace(/\b\w/g, l => l.toUpperCase())}</span></td>
	                <td>••••••••</td>
	                <td class="action-buttons">
	                    <button class="edit-btn"><i class="fas fa-edit"></i></button>
	                    <button class="delete-btn"><i class="fas fa-trash"></i></button>
	                </td>
	            `;

	            // Add to table
	            employeeTable.appendChild(newRow);

	            // Close modal and reset form
	            closeModal();

	            // Show success message
	            showAlert('Employee added successfully!');
	        });
	    }

	    // Handle edit button clicks
	    employeeTable.addEventListener('click', function(e) {
	        if (e.target.closest('.edit-btn')) {
	            const row = e.target.closest('tr');
	            const cells = row.cells;

	            // Get current values
	            const firstName = cells[1].textContent;
	            const lastName = cells[2].textContent;
	            const email = cells[3].textContent;
	            const phone = cells[4].textContent;
	            const position = cells[5].querySelector('.position-badge').textContent.toLowerCase().replace(' ', '_');

	            // Fill form with current values
	            document.getElementById('firstName').value = firstName;
	            document.getElementById('lastName').value = lastName;
	            document.getElementById('email').value = email;
	            document.getElementById('phone').value = phone;
	            document.getElementById('position').value = position;

	            // Show modal
	            addEmployeeModal.style.display = 'block';
	        }
	    });

	    // Handle delete button clicks
	    employeeTable.addEventListener('click', function(e) {
	        if (e.target.closest('.delete-btn')) {
	            if (confirm('Are you sure you want to delete this employee?')) {
	                const row = e.target.closest('tr');
	                row.remove();
	                showAlert('Employee deleted successfully!');
	            }
	        }
	    });

	   })