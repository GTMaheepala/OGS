document.addEventListener('DOMContentLoaded', () => {
    // DOM Elements
    const searchBar = document.getElementById('searchBar');
    const statusFilter = document.getElementById('statusFilter');
    const dateFilter = document.getElementById('dateFilter');
    const deliveryCompanyFilter = document.getElementById('deliveryCompanyFilter');
    const orderTable = document.getElementById('orderTable');
    const deliveryPartnerTable = document.getElementById('deliveryPartnerTable');
    const refreshBtn = document.querySelector('.refresh-btn');
    const exportBtn = document.querySelector('.export-btn');

    // Sample order data 
    const orders = [
        {
            id: 'ORD001',
            customer: 'Thisara',
            status: 'pending',
            date: '2024-03-15',
            total: '$150.00',
            shippingAddress: '123 Main St, Colombo',
            shippingMethod: 'Standard',
            deliveryPartnerId: 'DP001',
            trackingNumber: 'TRK123456'
        },
		{
		            id: 'ORD002',
		            customer: 'Natashs',
		            status: 'deliverd',
		            date: '2025-03-13',
		            total: '$1234.00',
		            shippingAddress: '342 Main St, Gampaha',
		            shippingMethod: 'Standard',
		            deliveryPartnerId: 'DP002',
		            trackingNumber: 'TRK124436'
		        },
				{
				            id: 'ORD003',
				            customer: 'Tharusha',
				            status: 'pending',
				            date: '2023-04-25',
				            total: '$1240.00',
				            shippingAddress: '141 Main St, Kaluthara',
				            shippingMethod: 'Standard',
				            deliveryPartnerId: 'DP003',
				            trackingNumber: 'TRK893456'
				        },
		
        // Add more sample orders as needed
    ];

    // Function to render orders
    function renderOrders(filteredOrders = orders) {
        orderTable.innerHTML = '';
        filteredOrders.forEach(order => {
            const row = document.createElement('tr');
            row.innerHTML = `
                <td>${order.id}</td>
                <td>${order.customer}</td>
                <td><span class="status-badge ${order.status}">${order.status}</span></td>
                <td>${order.date}</td>
                <td>${order.total}</td>
                <td>${order.shippingAddress}</td>
                <td>${order.shippingMethod}</td>
                <td>${order.deliveryPartnerId}</td>
                <td>${order.trackingNumber}</td>
                <td>
                    
                    <button class="action-btn edit-btn" onclick="editOrder('${order.id}')">
                        <i class="fas fa-edit"></i>
                    </button>
                    <button class="action-btn delete-btn" onclick="deleteOrder('${order.id}')">
                        <i class="fas fa-trash"></i>
                    </button>
                </td>
            `;
            orderTable.appendChild(row);
        });
    }

    // Search functionality
    searchBar.addEventListener('input', (e) => {
        const searchTerm = e.target.value.toLowerCase();
        const filteredOrders = orders.filter(order => 
            order.id.toLowerCase().includes(searchTerm) ||
            order.customer.toLowerCase().includes(searchTerm)
        );
        renderOrders(filteredOrders);
    });

    // Status filter
    statusFilter.addEventListener('change', (e) => {
        const status = e.target.value;
        const filteredOrders = status === 'all' 
            ? orders 
            : orders.filter(order => order.status === status);
        renderOrders(filteredOrders);
    });

    // Date filter
    dateFilter.addEventListener('change', (e) => {
        const dateRange = e.target.value;
        const today = new Date();
        const filteredOrders = orders.filter(order => {
            const orderDate = new Date(order.date);
            switch(dateRange) {
                case 'today':
                    return orderDate.toDateString() === today.toDateString();
                case 'week':
                    const weekAgo = new Date(today.setDate(today.getDate() - 7));
                    return orderDate >= weekAgo;
                case 'month':
                    const monthAgo = new Date(today.setMonth(today.getMonth() - 1));
                    return orderDate >= monthAgo;
                default:
                    return true;
            }
        });
        renderOrders(filteredOrders);
    });

    // Delivery company filter
    deliveryCompanyFilter.addEventListener('change', (e) => {
        const company = e.target.value;
        const rows = deliveryPartnerTable.getElementsByTagName('tr');
        for (let row of rows) {
            const companyCell = row.querySelector('td:nth-child(6)');
            if (company === 'all' || (companyCell && companyCell.textContent === company)) {
                row.style.display = '';
            } else {
                row.style.display = 'none';
            }
        }
    });

    // Refresh button
    refreshBtn.addEventListener('click', () => {
        
        setTimeout(() => {
            // Simulate data refresh
            renderOrders();
            refreshBtn.classList.remove('loading');
            
        }, 1000);
    });

    // Export button
    exportBtn.addEventListener('click', () => {
        // Implement export functionality
        const data = orders.map(order => ({
            'Order ID': order.id,
            'Customer': order.customer,
            'Status': order.status,
            'Date': order.date,
            'Total': order.total,
            'Shipping Address': order.shippingAddress,
            'Shipping Method': order.shippingMethod,
            'Delivery Partner ID': order.deliveryPartnerId,
            'Tracking Number': order.trackingNumber
        }));

        const csv = convertToCSV(data);
        downloadCSV(csv, 'orders_export.csv');
        showAlert('Data exported successfully!', 'success');
    });

    // Helper functions
    function convertToCSV(arr) {
        const array = [Object.keys(arr[0])].concat(arr);
        return array.map(row => {
            return Object.values(row).map(value => {
                return `"${value}"`;
            }).join(',');
        }).join('\n');
    }

    function downloadCSV(csv, filename) {
        const blob = new Blob([csv], { type: 'text/csv;charset=utf-8;' });
        const link = document.createElement('a');
        link.href = URL.createObjectURL(blob);
        link.download = filename;
        link.click();
    }

    function showAlert(message, type) {
        const alert = document.createElement('div');
        alert.className = `alert alert-${type}`;
        alert.textContent = message;
        document.body.appendChild(alert);
        setTimeout(() => alert.remove(), 3000);
    }

    // Initialize
    renderOrders();
});