<%-- 
    Document   : contact
    Created on : Jun 9, 2014, 6:53:01 PM
    Author     : Osanda Wedamulla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Contact Us</title>

        <link href="css/style.css" rel="stylesheet" type="text/css" /><!-- All css -->
        <link href="css/bs.css" rel="stylesheet" type="text/css" /><!-- Bootstrap Css -->
        <link rel="stylesheet" type="text/css" href="css/main-slider.css" /><!-- Main Slider Css -->

    </head>
    <body>

        <div class="wrapper">

            <section class="top-nav-bar" style="margin-top: -20px" >
                <section class="container-fluid container">
                    <section class="row-fluid">
                        <section class="span6">
                            <ul class="top-nav">
                                <li><a href="index.jsp" class="active">Home page</a></li>
                                <li><a href="store">Online Store</a></li>
                                <li><a href="blog">Blog</a></li>
                                <li><a href="aboutus">About Us</a></li>
                                <li><a href="contact">Contact Us</a></li>
                            </ul>
                        </section>

                        <section class="span6 e-commerce-list">
                            <%
                                HttpSession session1 = request.getSession();
                                if (session1.getAttribute("username") == null) {
                            %>
                            <ul>
                                <li>Welcome! <b>Guest</b> &nbsp <a href="login"> Login</a> &nbsp or <a href="login"> &nbsp Create an account</a></li>
                            </ul>
                            <%
                            } else {
                            %>
                            <ul>
                                <li>
                                    Welcome! <b><%= session.getAttribute("username")%></b> 
                                </li>
                                <ul>
                                    <li style=" margin-top: 8px; margin-left: 40px;">
                                        <form action="<%=request.getContextPath()%>/Logout" method="post">
                                            <input type="submit" class="more-btn" value="logout" />
                                        </form> 
                                    </li>
                                </ul>

                            </ul>

                            <%
                                }
                            %>

                            <div class="c-btn"> 
                                <a href="cart" class="cart-btn">Cart</a>
                            </div>

                        </section>

                    </section>
                </section>
            </section>

            <header id="main-header">

                <section class="container-fluid container">
                    <section class="row-fluid">
                        <section class="span4">
                            <h1 id="logo"> <a href="index.jsp"><img src="images/logo.png" /></a> </h1>
                        </section>
                        <section class="span8">

                            <div class="search-bar">
                                <input name="" style="padding-bottom: 20px;padding-top: 19px;"type="text" placeholder="Search entire store here..." />
                                <input name="" type="button" value="Serach" />
                            </div>
                        </section>
                    </section>
                </section>

            </header>

            <div class="background">

                <section id="content-holder" class="container-fluid container">
                    <section class="row-fluid">
                        <div class="heading-bar">
                            <h2>Contact Us</h2>
                            <span class="h-line"></span> </div>

                        <section class="span9 first">

                            <div class="blog-sec-slider">
                                <div class="slider5">
                                    <div class="slide"><a href="#"><img src="images/image227.jpg" alt=""/></a></div>
                                    <div class="slide"><a href="#"><img src="images/image228.jpg" alt=""/></a></div>
                                    <div class="slide"><a href="#"><img src="images/image226.jpg" alt=""/></a></div>
                                </div>
                            </div>

                            <section class="map-holder">

                                <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
                                <div style="overflow:hidden;height:500px;width:600px;"><div id="gmap_canvas" style="height:500px;width:600px;"></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style><a class="google-map-code" href="http://www.mapsembed.com/baur-gutschein/" id="get-map-data">baur gutschein - mapsembed.com</a></div>
                                <script type="text/javascript"> function init_map() {
                        var myOptions = {zoom: 12, center: new google.maps.LatLng(6.911940482591403, 79.88333329716795), mapTypeId: google.maps.MapTypeId.ROADMAP};
                        map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions);
                        marker = new google.maps.Marker({map: map, position: new google.maps.LatLng(6.911940482591403, 79.88333329716795)});
                        infowindow = new google.maps.InfoWindow({content: "<b>Sri lanaka</b><br/>2880 Peace maker road<br/> Sri Lanka"});
                        google.maps.event.addListener(marker, "click", function() {
                            infowindow.open(map, marker);
                        });
                        infowindow.open(map, marker);
                    }
                    google.maps.event.addDomListener(window, 'load', init_map);</script>

                            </section>

                            <div class="span6 c-form-holder first">

                                <form action="<%=request.getContextPath()%>/Contactmessage" method="post" class="form-horizontal">
                                    <div class="control-group">
                                        <label class="control-label" for="inputName">Name</label>
                                        <div class="controls">
                                            <input type="text" name="inputname" id="inputname" placeholder=""/>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="inputEmail">Email</label>
                                        <div class="controls">
                                            <input type="text" name="inputemail" id="inputemail" placeholder=""/>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="inputSubject">Subject</label>
                                        <div class="controls">
                                            <input type="text" name="inputsubject" id="inputsubject" placeholder=""/>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="inputMessage">Message</label>
                                        <div class="controls">
                                            <textarea name="inputmessage" cols="2" rows="20"></textarea>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <div class="controls">
                                            <button type="submit" class="more-btn2">SAND REQUEST</button>
                                        </div>
                                    </div>
                                </form>

                            </div>
                            <div class="span6">
                                <strong>Contact Info</strong>
                                <p>Office No. 23, 1st Floor,<br /> 2880,Peace maker road,Colombo 08, <br />Sri Lanka.</p>
                                <p>Phone: (011) 456-7890 <br />Fax: +94 (011) 456-7890 <br />Email: <a href="#">osanda@bookshoppe.com</a> <br />Web: <a href="#">bookshoppe.lk</a></p>
                            </div>

                        </section>

                    </section>
                </section>
            </div>

            <section class="container-fluid footer-top2">
                <section class="container">
                    <section class="row-fluid">

                        <figure class="span4">
                            <h4>Site Map</h4>
                            <ul class="f2-pots-list">
                                <li>  <a href="index.jsp">Home</a>      </li>
                                <li>  <a href="aboutus">About us</a>  </li>
                                <li>  <a href="store">Visit Store</a>      </li>
                                <li>  <a href="contact">Contact Us</a>   </li>
                                <li>  <a href="login">Login or Register</a>      </li>
                            </ul>
                        </figure>

                        <figure class="span4">
                            <h4>Top Rated Books</h4>
                            <ul class="f2-img-list">
                                <li>
                                    <div class="left"><a href="bookdetail"><img src="images/image35.jpg" alt=""/></a></div>
                                    <div class="right"> <strong class="title"><a href="bookdetail">Panic </a></strong> <span class="by-author">by Lauren Olive</span> <span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span> </div>
                                </li>
                                <li>
                                    <div class="left"><a href="bookdetail"><img src="images/image33.jpg" alt="" /></a></div>
                                    <div class="right"> <strong class="title"><a href="bookdetail">Clariel</a></strong> <span class="by-author">by Garth Nix</span> <span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span> </div>
                                </li>
                                <li>
                                    <div class="left"><a href="bookdetail"><img src="images/image32.jpg" alt="" /></a></div>
                                    <div class="right"> <strong class="title"><a href="bookdetail">Ruins</a></strong> <span class="by-author">by Dan Wells</span> <span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span> </div>
                                </li>
                                <li>
                                    <div class="left"><a href="bookdetail"><img src="images/image34.jpg" alt="" /></a></div>
                                    <div class="right"> <strong class="title"><a href="bookdetail">Split Second</a></strong> <span class="by-author">by Kasie West</span> <span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span> </div>
                                </li>
                            </ul>
                        </figure>

                        <figure class="span4">
                            <h4>Newsletter</h4>
                            <h5 style="color: #ffffff;">Please enter your E-mail address to subscribe for News Letter feedback from BookShoppe ............</h5>
                            <form action="#" method="post">
                                <input type="text" placeholder="Enter your E-mail" name="email" id="email" class="newsletter_txt" /><br/>
                                <input type="submit" name="Subscribe" value=" Subscribe--> " id="subscribe_button" class="f2-pots-list-sub"  />
                            </form>
                        </figure>

                    </section>
                </section>
            </section>

            <footer id="main-footer">
                <section class="social-ico-bar">
                    <section class="container">
                        <section class="row-fluid">
                            <article class="span6">
                                <p>2014  BookShoppe  - All Rights Reserved. </p>
                            </article>
                            <article class="span6 copy-right">
                                <p>Designed by O.D Arts </p>
                            </article>
                        </section>
                    </section>
                </section>
            </footer>

        </div>
        <!-- JS Files Start -->
        <script type="text/javascript" src="js/lib.js"></script><!-- lib Js -->
        <script type="text/javascript" src="js/modernizr.js"></script><!-- Modernizr -->
        <script type="text/javascript" src="js/bs.js"></script><!-- Bootstrap -->
        <script type="text/javascript" src="js/bxslider.js"></script><!-- BX Slider -->
        <script src="js/range-slider.js"></script><!-- Range Slider -->
        <script src="js/jquery.zoom.js"></script><!-- Zoom Effect -->
        <script type="text/javascript" src="js/bookblock.js"></script><!-- Flip Slider -->
        <script type="text/javascript" src="js/custom.js"></script><!-- Custom js -->
        <!-- JS Files End -->
    </body>
</html>

