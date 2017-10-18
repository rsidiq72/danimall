<%-- 
    Document   : home
    Created on : 17-Oct-2017, 15:36:27
    Author     : user
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Danimall.com</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class ="jumbotron" style="background-image:url('http://images.all-free-download.com/images/graphicthumb/3d_abstract_background_dots_connection_decoration_polygon_draft_6829548.jpg')" width=auto>
            <marquee direction="up">
                <h2>
                    <h2 class="container" style="color: #FFFFFF">Selamat datang di danimall.com</h2>
                </h2>
            </marquee>
        </div>
        <h5 class="container" style="color: white"> 
            <a href="home/cart">Lihat keranjang</a> 
        </h5>
        <div class="table-responsive">
            <div class="container">
                <h3>Product Name</h3>
                <table class="table">
                    <tr class="info">
                        <td>Product Name</td>
                        <td>Product Price</td>
                        <td></td>
                        <c:forEach var="p" items="${products}">
                        <tr>
                            <td>${p.productname}</td>
                            <td>Rp. ${p.price}</td>
                            <td>
                                <a  href="home/${p.productid}">Lihat Detail</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tr>
                </table>
            </div>
        </div>
    </body>
</html>
