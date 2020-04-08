<%--
  Created by IntelliJ IDEA.
  User: arnau
  Date: 07-04-20
  Time: 23:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="fr">
<head>
    <title>EatWell - Modifier</title>
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

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <%-- TODO afficher plat à modifier --%>
                <p>${objet}</p>

                <p>Coucou</p>
            </div>
        </div>
    </div>

    <footer class="site-footer site-bg-dark site-section">
        <div class="container">
            <div class="row site-animate">
                <div class="col-md-12 text-center">
                    <p> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;2020 All rights reserved | This template is made by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>