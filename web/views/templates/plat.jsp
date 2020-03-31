<%--
  Created by IntelliJ IDEA.
  User: arnau
  Date: 27-03-20
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <title>EatWell</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/global.css">
</head>
<body data-spy="scroll" data-target="#site-navbar" data-offset="200">

<nav class="navbar navbar-expand-lg navbar-dark site_navbar bg-dark site-navbar-light" id="site-navbar">
    <div class="container">
        <a class="navbar-brand" href="menu">EatWell</a>

        <div class="collapse navbar-collapse" id="site-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a href="menu" class="nav-link">Home</a></li>
                <li class="nav-item"><a href="menu#section-menu" class="nav-link">Menu</a></li>
                <li class="nav-item"><a href="categorie" class="nav-link">Catégorie</a></li>
                <li class="nav-item active"><a href="#" class="nav-link">Plat</a></li>
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

            <div class="col-md-12 text-center">
                <div class="tab-content text-left">
                    <div class="tab-pane fade show active" id="pills-breakfast" role="tabpanel" aria-labelledby="pills-breakfast-tab">
                        <c:forEach items="$categories" var="categorie" varStatus="status">
                            <div class="row">
                                <div class="col-md-6 site-animate">
                                    <p>coucou</p>
                                    <c:forEach items="$plats" var="plat" varStatus="status">
                                        <p>test</p>
                                        <!--
                                        <div class="media menu-item">
                                        <img class="mr-3 img-fluid" src="../img/plats/1.png" alt="image">
                                        <div class="media-body">
                                        <h5 class="mt-0">Salted Fried Chicken</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                        <h6 class="text-primary menu-price">$12.50</h6>
                                        </div>
                                        </div>
                                        -->
                                    </c:forEach>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>

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
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
            </div>
        </div>
    </div>
</footer>
</body>
</html>