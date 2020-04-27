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
                <form method="post" class="form" action="validatePlat" style="margin-top: 5%">
                    <div class="form-row">
                        <div class="col-md-2">
                            <input type="hidden" name="id_plat" value="${object.getId()}">
                            <fieldset class="form-group">
                                <label for="nom_plat">Name : </label>
                                <input class="form-control" type="text" id="nom_plat" name="nom_plat" value="${object.getNom()}" required>
                            </fieldset>
                        </div>
                        <div class="col-md-7">
                            <fieldset class="form-group">
                                <label for="details_plat">Détails : </label>
                                <input class="form-control" type="text" id="details_plat" name="details_plat" value="${object.getDetails()}" required>
                            </fieldset>
                        </div>
                        <div class="col-md-1">
                            <fieldset class="form-group">
                                <label for="prix_plat">Prix : </label>
                                <input class="form-control" type="text" id="prix_plat" name="prix_plat" value="${object.getPrix()}" required>
                            </fieldset>
                        </div>
                        <div class="col-md-2">
                            <fieldset class="form-group">
                                <label for="categ_plat">Catégorie : </label>
                                <select class="form-control" id="categ_plat" name="categ_plat" required>
                                    <option value="1">Viande</option>
                                    <option value="2">Poisson</option>
                                    <option value="3">Volaille</option>
                                    <option value="4">Végé</option>
                                    <option value="5">Vegan</option>
                                    <option value="6">Soupe</option>
                                    <option value="7">Dessert</option>
                                </select>
                            </fieldset>
                        </div>
                    </div>
                    <div class="form-row">
                        <input type="submit" class="btn btn-secondary" value="Valider">
                        <a href="delPlat?${object.getId()}" class="btn btn-danger">Supprimer</a>
                    </div>
                </form>
                <!-- <form class="form form-inline" action="delPlat" method="get">
                    <input type="hidden" name="id_plat" value="${object.getId()}">
                    <input type="submit" class="form-inline btn btn-danger" value="Supprimer">
                </form> -->
            </div>
        </div>
    </div>

    <footer class="site-footer site-bg-dark site-section">
        <div class="container">
            <div class="row site-animate">
                <div class="col-md-12 text-center">
                    <p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;2020 All rights reserved | This template is made by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                    </p>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>