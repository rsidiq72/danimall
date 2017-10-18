<%-- 
    Document   : detail
    Created on : 17-Oct-2017, 16:45:42
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
        <div class="container">
            <h3>Keranjang Anda</h3>
            <h5>jumlah barang di keranjang anda : ${user.carts.size()} </h5> 
            <h5>daftar item pada keranjang anda : </h5>
            <c:forEach items="${barang}" var="b">
                ${b.productname} <br/>
            </c:forEach>
            </br>
            <a href="/danimall/home">
                <button type="submit">kembali ke home</button>
            </a>
        </div>
    </body>
</html>
