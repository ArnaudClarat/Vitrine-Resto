<%--
  Created by IntelliJ IDEA.
  User: arnau
  Date: 12-03-20
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <title>EatWell - Accueil</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="views/css/global.css">
</head>
<body data-spy="scroll" data-target="#site-navbar" data-offset="200">

<nav class="navbar navbar-expand-lg navbar-dark site_navbar bg-dark site-navbar-light" id="site-navbar">
    <div class="container">
        <a class="navbar-brand" href="menu">EatWell</a>
        <div class="collapse navbar-collapse" id="site-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a href="#section-home" class="nav-link">Home</a></li>
                <li class="nav-item"><a href="#section-menu" class="nav-link">Menu</a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- END nav -->

<section id="section-home">
    <div class="container">
        <div class="row align-items-center justify-content-center text-center site-vh-100">
            <div class="col-md-12">
                <h1 class="site-heading site-animate mb-3">Welcome To EatWell</h1>
                <h5 class="site-subheading mb-5 site-animate">Come and eat well with our delicious &amp; healthy foods.</h5>
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<section class="site-section" id="section-menu">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center mb-5 site-animate">
                <h2>Delicious Menu</h2>
                <div class="row justify-content-center">
                    <div class="col-md-7">
                        <p class="lead">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <c:forEach items="${categories}" var="categorie">
                    <h5 style="margin-top: 5%"><strong><u>${categorie.getNom()}</u></strong></h5><br>
                    <div class="row">
                        <c:forEach items="${plats}" var="plat">
                            <c:if test="${categorie.getId().equals(plat.getCateg())}">
                                <div class="card col-md-4" style="width: 18rem;">
                                    <img class="m-3 img-fluid" src="views/img/plats/${plat.getId()}.png" alt="${plat.getNom()}">
                                    <div class="card-body">
                                        <h5 class="card-title">${plat.getNom()}</h5>
                                        <p class="card-text">${plat.getDetails()}</p>
                                        <h6 class="menu-price">${plat.getPrix()}€</h6>
                                        <a href="modPlat?id=${plat.getId()}">Modifier</a>
                                    </div>
                                </div>
                            </c:if>
                        </c:forEach>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<footer class="site-footer site-bg-dark site-section">
    <div class="container">
        <div class="row site-animate">
            <div class="col-md-12 text-center">
                <p>&copy; <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;2020 All rights reserved | This template is made by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
            </div>
        </div>
    </div>
</footer>
</body>
</html>
