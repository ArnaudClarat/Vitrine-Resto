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
<head>
    <title>$Title$</title>
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

    <section class="site-cover" style="background-image: url(../img/bg_3.jpg);" id="section-home">
        <div class="container">
            <div class="row align-items-center justify-content-center text-center site-vh-100">
                <div class="col-md-12">
                    <h1 class="site-heading site-animate mb-3">Welcome To EatWell</h1>
                    <h2 class="h5 site-subheading mb-5 site-animate">Come and eat well with our delicious &amp; healthy foods.</h2>
                    <p><a href="https://colorlib.com/" target="_blank" class="btn btn-outline-white btn-lg site-animate" data-toggle="modal" data-target="#reservationModal">Reservation</a></p>
                </div>
            </div>
        </div>
    </section>

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
                        <c:forEach items="$categories" var="categorie" varStatus="status">
                            <li class="nav-item site-animate">
                                <a class="nav-link active" id="pills-breakfast-tab" data-toggle="pill" href="#pills-breakfast" role="tab" aria-controls="pills-breakfast" aria-selected="true"><c:out value = "${categorie}"/></a>
                            </li>
                        </c:forEach>
                    </ul>
                    <div class="tab-content text-left">
                        <div class="tab-pane fade show active" id="pills-breakfast" role="tabpanel" aria-labelledby="pills-breakfast-tab">
                            <div class="row">
                                <div class="col-md-6 site-animate">

                                    <div class="media menu-item">
                                        <img src="images/1.jpg" class="img-fluid mr-3" alt="Free Template by colorlib.com">
                                        <div class="media-body">
                                            <h5 class="mt-0">Salted Fried Chicken</h5>
                                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                            <h6 class="text-primary menu-price">$35.50</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-lunch" role="tabpanel" aria-labelledby="pills-lunch-tab">
                            <div class="row">
                                <div class="col-md-6 site-animate">
                                    <div class="media menu-item">
                                        <img class="mr-3" src="images/menu_3.jpg" class="img-fluid" alt="Free Template by colorlib.com">
                                        <div class="media-body">
                                            <h5 class="mt-0">Fried Potato w/ Garlic</h5>
                                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                            <h6 class="text-primary menu-price">$14.50</h6>
                                        </div>
                                    </div>
                                    <div class="media menu-item">
                                        <img class="mr-3" src="images/menu_1.jpg" class="img-fluid" alt="Free Template by colorlib.com">
                                        <div class="media-body">
                                            <h5 class="mt-0">Salted Fried Chicken</h5>
                                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                            <h6 class="text-primary menu-price">$35.50</h6>
                                        </div>
                                    </div>
                                    <div class="media menu-item">
                                        <img class="mr-3" src="images/menu_2.jpg" class="img-fluid" alt="Free Template by colorlib.com">
                                        <div class="media-body">
                                            <h5 class="mt-0">Italian Sauce Mushroom</h5>
                                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                            <h6 class="text-primary menu-price">$24.50</h6>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 site-animate">
                                    <div class="media menu-item">
                                        <img class="mr-3" src="images/menu_3.jpg" class="img-fluid" alt="Free Template by colorlib.com">
                                        <div class="media-body">
                                            <h5 class="mt-0">Fried Potato w/ Garlic</h5>
                                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                            <h6 class="text-primary menu-price">$18.50</h6>
                                        </div>
                                    </div>
                                    <div class="media menu-item">
                                        <img class="mr-3" src="images/menu_2.jpg" class="img-fluid" alt="Free Template by colorlib.com">
                                        <div class="media-body">
                                            <h5 class="mt-0">Italian Sauce Mushroom</h5>
                                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                            <h6 class="text-primary menu-price">$35.50</h6>
                                        </div>
                                    </div>
                                    <div class="media menu-item">
                                        <img class="mr-3" src="images/menu_1.jpg" class="img-fluid" alt="Free Template by colorlib.com">
                                        <div class="media-body">
                                            <h5 class="mt-0">Salted Fried Chicken</h5>
                                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                            <h6 class="text-primary menu-price">$12.50</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-dinner" role="tabpanel" aria-labelledby="pills-dinner-tab">
                            <div class="row">
                                <div class="col-md-6 site-animate">
                                    <div class="media menu-item">
                                        <img class="mr-3" src="images/menu_2.jpg" class="img-fluid" alt="Free Template by colorlib.com">
                                        <div class="media-body">
                                            <h5 class="mt-0">Italian Sauce Mushroom</h5>
                                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                            <h6 class="text-primary menu-price">$24.50</h6>
                                        </div>
                                    </div>
                                    <div class="media menu-item">
                                        <img class="mr-3" src="images/menu_1.jpg" class="img-fluid" alt="Free Template by colorlib.com">
                                        <div class="media-body">
                                            <h5 class="mt-0">Salted Fried Chicken</h5>
                                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                            <h6 class="text-primary menu-price">$35.50</h6>
                                        </div>
                                    </div>
                                    <div class="media menu-item">
                                        <img class="mr-3" src="images/menu_3.jpg" class="img-fluid" alt="Free Template by colorlib.com">
                                        <div class="media-body">
                                            <h5 class="mt-0">Fried Potato w/ Garlic</h5>
                                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                            <h6 class="text-primary menu-price">$14.50</h6>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 site-animate">

                                    <div class="media menu-item">
                                        <img class="mr-3" src="images/menu_3.jpg" class="img-fluid" alt="Free Template by colorlib.com">
                                        <div class="media-body">
                                            <h5 class="mt-0">Fried Potato w/ Garlic</h5>
                                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                            <h6 class="text-primary menu-price">$18.50</h6>
                                        </div>
                                    </div>
                                    <div class="media menu-item">
                                        <img class="mr-3" src="images/menu_2.jpg" class="img-fluid" alt="Free Template by colorlib.com">
                                        <div class="media-body">
                                            <h5 class="mt-0">Italian Sauce Mushroom</h5>
                                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                            <h6 class="text-primary menu-price">$35.50</h6>
                                        </div>
                                    </div>
                                    <div class="media menu-item">
                                        <img class="mr-3" src="images/menu_1.jpg" class="img-fluid" alt="Free Template by colorlib.com">
                                        <div class="media-body">
                                            <h5 class="mt-0">Salted Fried Chicken</h5>
                                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                            <h6 class="text-primary menu-price">$12.50</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
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
