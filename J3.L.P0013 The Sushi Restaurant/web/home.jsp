<%-- 
    Document   : home
    Created on : Feb 18, 2021, 10:33:58 PM
    Author     : sogor
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Sushi Restaurant</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <header>
            <div class="title-wrapper">
                <h1>The Sushi Restaurant</h1>
                <p>Welcome to this website</p>
            </div>
            <div class="nav">
                <ul class="navbar-items">
                    <li>
                        <a class="navbar-link active" href="home">Home</a>
                    </li>
                    <li>
                        <a class="navbar-link" href="menu">Menu and Price list</a>
                    </li>
                    <li>
                        <a class="navbar-link" href="find-us">Find us</a>
                    </li>

                </ul>
            </div>
        </header>
        <div class="container">
            <div class="page-content">
                <div class="banner"><img src="image/banner.jpg"></div>
                <c:forEach var="item" items="${postList}">
                <div class="row">
                    <h2 class="post-heading">${item.title}</h2>
                    <p class="post-container"> 
                        <img src="image/${item.imagePath}" />
                        <span>${item.content}</span>
                    </p>
                </div>
                </c:forEach>
                <!--PAGING-->
                <ul class="paging">
                    <c:forEach var="page" begin="1" end="${maxPage}" >
                        <li class="${param.page == page || (page == 1 && empty param.page) ? "active" : ""}">
                            <a href="home?page=${page}">${page}</a>
                        </li>
                    </c:forEach>
                </ul>    
                <!--PAGING-->
            </div>
            <div class="side-banner">
                <div class="side-container">
                    <div class="banner-title">Share this page</div>
                    <ul>
                        <c:forEach var="social" items="${socialList}" >
                            <li><a href="#"> <img src="image/${social.icon}" alt=""> <span>Share on ${social.name}</span></a></li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
        <jsp:include page="common/footer.jsp"/>

    </body>
</html>
