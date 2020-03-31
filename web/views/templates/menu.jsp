<%--
  Created by IntelliJ IDEA.
  User: arnau
  Date: 12-03-20
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Colorlib Template - EatWell</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700|Raleway" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">



    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body data-spy="scroll" data-target="#site-navbar" data-offset="200">

<nav class="navbar navbar-expand-lg navbar-dark site_navbar bg-dark site-navbar-light" id="site-navbar">
    <div class="container">
        <a class="navbar-brand" href="index.html">EatWell</a>
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
<!-- END nav -->

<section class="site-cover" style="background-image: url(images/bg_3.jpg);" id="section-home">
    <div class="container">
        <div class="row align-items-center justify-content-center text-center site-vh-100">
            <div class="col-md-12">
                <h1 class="site-heading site-animate mb-3">Welcome To EatWell</h1>
                <h2 class="h5 site-subheading mb-5 site-animate">Come and eat well with our delicious &amp; healthy foods.</h2>
                <p><a href="#section-menu">Menu</a></p>
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<section class="site-section" id="section-menu">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center mb-5 site-animate">
                <h2 class="display-4">Delicious Menu</h2>
                <div class="row justify-content-center">
                    <div class="col-md-7">
                        <p class="lead">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-12 text-center">

                <ul class="nav site-tab-nav nav-pills mb-5" id="pills-tab" role="tablist">
                    <li class="nav-item site-animate">
                        <a class="nav-link active" id="pills-breakfast-tab" data-toggle="pill" href="#pills-breakfast" role="tab" aria-controls="pills-breakfast" aria-selected="true">Breakfast</a>
                    </li>
                    <li class="nav-item site-animate">
                        <a class="nav-link" id="pills-lunch-tab" data-toggle="pill" href="#pills-lunch" role="tab" aria-controls="pills-lunch" aria-selected="false">Lunch</a>
                    </li>
                    <li class="nav-item site-animate">
                        <a class="nav-link" id="pills-dinner-tab" data-toggle="pill" href="#pills-dinner" role="tab" aria-controls="pills-dinner" aria-selected="false">Dinner</a>
                    </li>
                </ul>

                <div class="tab-content text-left">
                    <div class="tab-pane fade show active" id="pills-breakfast" role="tabpanel" aria-labelledby="pills-breakfast-tab">
                        <c:forEach items="$categories" var="categorie" varStatus="status">
                            <div class="row">
                                <div class="col-md-6 site-animate">
                                    <c:forEach items="$plats" var="plat" varStatus="status">
                                        <div class="media menu-item">
                                            <img class="mr-3 img-fluid" src="../img/plats/1.png" alt="image">
                                            <div class="media-body">
                                                <h5 class="mt-0">Salted Fried Chicken</h5>
                                                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                                <h6 class="text-primary menu-price">$12.50</h6>
                                            </div>
                                        </div>
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

<!-- loader -->
<div id="site-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"></circle><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"></circle></svg></div>


<script src="./web/views/js/jquery.min.js"></script>
<script src="./web/views/js/popper.min.js"></script>
<script src="./web/views/js/bootstrap.min.js"></script>
<script src="./web/views/js/jquery.easing.1.3.js"></script>
<script src="./web/views/js/jquery.waypoints.min.js"></script>
<script src="./web/views/js/owl.carousel.min.js"></script>
<script src="./web/views/js/jquery.magnific-popup.min.js"></script>

<script src="./web/views/js/bootstrap-datepicker.js"></script>
<script src="./web/views/js/jquery.timepicker.min.js"></script>

<script src="./web/views/js/jquery.animateNumber.min.js"></script>
<script src="./web/views/js/google-map.js"></script>

<script src="./web/views/js/main.js"></script>


</body>
</html>
