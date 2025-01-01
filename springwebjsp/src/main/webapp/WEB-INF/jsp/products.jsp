
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Prodcuts</title>
    <style>
        body {
            font-family: Helvetica;
            margin: 0;
        }
        a {
            text-decoration: none;
            color: #000;
        }
        .site-header {
            border-bottom: 1px solid #ccc;
            padding: .5em 1em;
            display: flex;
            justify-content: space-between;
        }

        .site-identity h1 {
            font-size: 1.5em;
            margin: .6em 0;
            display: inline-block;
        }


        .site-navigation ul,
        .site-navigation li {
            margin: 0;
            padding: 0;
        }

        .site-navigation li {
            display: inline-block;
            margin: 1.4em 1em 1em 1em;
        }
    </style>
</head>
<header class="site-header">
    <div class="site-identity">
        <h1><a href="#">Site Name</a></h1>
    </div>
    <nav class="site-navigation">
        <ul class="nav">
            <li><a href="#">About</a></li>
            <li><a href="#">News</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
    </nav>
</header>
<body>
<ul>
    <c:forEach var="product" items="${productList}">
        <li>${product.pid} ${product.pname} ${product.price}</li>
    </c:forEach>
</ul>
</body>
</html>
