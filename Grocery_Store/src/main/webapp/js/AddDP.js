/* Wait for the DOM to fully load
document.addEventListener('DOMContentLoaded', () => {
    if (typeof partnerId !== 'undefined') {
        const partner = deliveryPartners.find(p => p.id === partner);
        if (partner) {
            populateForm(partner);
        } else {
            showAlert('Delivery partner not found', 'error');
            setTimeout(() => {
                window.location.href = 'order.jsp';
            }, 2000);
        }
    }
});*/

/* Handle form submission
document.getElementById('deliveryPartnerForm').addEventListener('submit', function (e) {
    e.preventDefault();

    // Show success alert
    showAlert('Delivery partner updated successfully!', 'success');

    // Redirect to order.jsp after 2 seconds
    setTimeout(() => {
        window.location.href = 'order.jsp';
    }, 2000);
});*/


/* Function to show an alert message
function showAlert(message, type = 'success') {
    const alertDiv = document.createElement('div');
    alertDiv.className = `alert alert-${type}`;
    alertDiv.textContent = message;

    // Styling the alert
    Object.assign(alertDiv.style, {
        position: 'fixed',
        top: '20px',
        right: '20px',
        padding: '15px 25px',
        borderRadius: '5px',
        color: 'white',
        backgroundColor: type === 'error' ? '#e74c3c' : '#2ecc71',
        zIndex: 1000,
        animation: 'slideIn 0.5s ease'
    });

    document.body.appendChild(alertDiv);

    // Remove alert after 3 seconds with slide out animation
    setTimeout(() => {
        alertDiv.style.animation = 'slideOut 0.5s ease';
        setTimeout(() => {
            document.body.removeChild(alertDiv);
        }, 500);
    }, 3000);
}*/
