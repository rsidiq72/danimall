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
            <h5 style="color: white"> 
                <a href="/danimall/home/cart">Lihat keranjang</a> 
            </h5>
            <h3>Produk Detail :</h3>
            <h4>Nama Produk: ${product.productname}</h4>
            <h4>Harga Produk: Rp. ${product.price}</h4>
            <h4>Stok Produk: ${product.unitstock} pcs</h4>
            <a href="/danimall/home/add">
                <button type="submit">Tambahkan ke keranjang</button>
            </a>
            <br/>
            <br/>
            <br/>
            <a href="/danimall/home">
                <button type="submit">kembali ke home</button>
            </a>
        </div>
    </body>
</html>