<%--
  Created by IntelliJ IDEA.
  User: arnau
  Date: 27-03-20
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>$Title</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark site_navbar bg-dark site-navbar-light" id="site-navbar">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">EatWell</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#site-nav" aria-controls="site-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="oi oi-menu"></span> Menu
            </button>

            <div class="collapse navbar-collapse" id="site-nav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active"><a href="#section-home" class="nav-link">Home</a></li>
                    <li class="nav-item"><a href="#section-menu" class="nav-link">Menu</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <ul class="nav site-tab-nav nav-pills mb-5" id="pills-tab" role="tablist">
                    <c:forEach items="$categories" var="categorie" varStatus="status">
                        <li class="nav-item site-animate">
                            <div class="row">
                                <div class="col-md-6 site-animate">
                                    <div class="media menu-item">
                                        <img src="../img/plats/1.png" class="img-fluid mr-3" alt="Free Template by colorlib.com">
                                        <div class="media-body">
                                            <h5 class="mt-0">Salted Fried Chicken</h5>
                                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                            <h6 class="text-primary menu-price">$35.50</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>

</body>
</html>
