<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Promotions - TheFreshMart</title>
    <link rel="stylesheet" href="css/promotion_cards.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
<div class="promo-container">
    <h1><i class="fas fa-tags"></i> Available Promotions</h1>
    <div class="promo-grid">
        <c:forEach var="promotions" items="${allPromotions}">
            <div class="promo-card">
                <div class="promo-header">
				    <div>
					        <h2>${promotions.promoCode}</h2>

					        </p>
					    </div>
					    <span class="type-badge ${promotions.discountType}">

					    </span>
					</div>

                <p class="description">
                    <i class="fas fa-info-circle"></i> ${promotions.description}
                </p>

                <div class="promo-info">
                    <p><i class="fas fa-tag"></i> <strong>Discount Type:</strong> ${promotions.discountType}</p>
                    <p><i class="fas fa-dollar-sign"></i> <strong>Value:</strong> ${promotions.value}</p>
                    <p><i class="fas fa-calendar-day"></i> <strong>From:</strong> ${promotions.validFrom}</p>
                    <p><i class="fas fa-calendar-check"></i> <strong>To:</strong> ${promotions.validTo}</p>
                    <p><i class="fas fa-redo-alt"></i> <strong>Usage Limit:</strong> ${promotions.usageLimit}</p>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>