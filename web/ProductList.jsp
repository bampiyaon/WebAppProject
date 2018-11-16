<%-- 
    Document   : ProductList
    Created on : Nov 13, 2018, 3:27:54 PM
    Author     : piyao
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Our Products</title>
        <link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.min.css">
    </head>
    <body>
        <jsp:include page="include/Header.jsp?title=Our Products"/>
        <table class="table table-hover">
            <thead>
            <th scope="col">Image</th>
            <th scope="col">No.</th>
            <th scope="col">Product Name</th>
            <th scope="col">Price(baht)</th>
            <th scope="col">calories</th>
            <th scope="col">Add</th>
        </thead>

        <c:forEach items="${products}" var="p" varStatus="vs">
            <tr class="table-info">
                <td><img src="picture/${p.productid}.jpg" width="120"></td>
                <td>${vs.count}</td>
                <td>${p.productname}</td>
                <td>${p.price}</td>                
                <td>${p.description}</td>
                <td>
                    <form action="AddItemToCart" method = "post">
                        <input type = "hidden" name = "productId" value="${p.productid}">
                        <input type = "image" src="basket.png" width="25" alt = "Add">
                    </form>
                </td>
                
            </tr>
        </c:forEach>        
    </table>
</body>
</html>
