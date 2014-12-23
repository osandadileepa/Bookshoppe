<%-- 
    Document   : store
    Created on : Jun 9, 2014, 6:54:00 PM
    Author     : Osanda Wedamulla
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Database.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Store</title>

        <link href="css/style.css" rel="stylesheet" type="text/css" /><!-- All css -->
        <link href="css/bs.css" rel="stylesheet" type="text/css" /><!-- Bootstrap Css -->
        <link rel="stylesheet" type="text/css" href="css/main-slider.css" /><!-- Main Slider Css -->

    </head>
    <body>

        <div class="wrapper">

            <section class="top-nav-bar">
                <section class="container-fluid container">

                    <section class="row-fluid" >
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
                                <input name="" class="text-i" type="text" placeholder="Search entire store here..." />
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
                            <h2>Grid View</h2>
                            <span class="h-line"></span>
                        </div>

                        <section class="span9 first">

                            <div class="blog-sec-slider">
                                <div class="slider5">
                                    <div class="slide"><a href="#"><img src="images/image22.jpg" alt=""/></a></div>
                                    <div class="slide"><a href="#"><img src="images/image221.jpg" alt=""/></a></div>
                                    <div class="slide"><a href="#"><img src="images/image222.jpg" alt=""/></a></div>
                                </div>
                            </div>

                            <section class="grid-holder features-books">

                                <div class="store-grid">

                                    <%
                                        try {

                                            String sql = "SELECT * FROM book_details;";
                                            ResultSet rs = Dbconnection.query(sql);
                                            while (rs.next()) {
                                    %>

                                    <form action="<%=request.getContextPath()%>/Addcartstore" method="post">

                                        <figure class="span4 slide">
                                            <center>
                                                <input type="hidden" name="bookid" value="<%=rs.getString(1)%>"/>
                                                <input type="hidden" name="bookavailability" value="<%=rs.getString(6)%>"/>
                                                <a href="bookdetail?Id=+<%=rs.getString(1)%>&Ic=+<%=rs.getString(10)%>">
                                                    <img src="images/store/<%=rs.getString(9)%>.jpg" alt="" class="pro-img"/>
                                                    <input type="hidden" name="bookimage" value="<%=rs.getString(9)%>"/>
                                                </a>
                                                <span class="title">
                                                    <a href="bookdetail?Id=+<%=rs.getString(1)%>&Ic=+<%=rs.getString(10)%>"><%=rs.getString(2)%></a>
                                                    <input type="hidden" name="bookname" value="<%=rs.getString(2)%>"/>
                                                </span>
                                                <span class="rating-bar">
                                                    <img src="images/rating-star.png" alt="Rating Star"/>
                                                </span>
                                                <div class="cart-price">
                                                    <button type="submit" class="cart-btn2" style="border: none">Add to Cart</button>
                                                    <span class="price">$<%=rs.getString(8)%></span>
                                                    <input type="hidden" name="unitprice" value="<%=rs.getString(8)%>"/>
                                                </div>
                                            </center>
                                        </figure>

                                    </form>
                                    <%
                                            }
                                        } catch (Exception e) {
                                        }
                                    %>
                                </div>

                            </section>

                            <div class="pagination">  
                                <ul>  
                                    <li><a href="#">Previous</a></li>  
                                    <li class="active">  
                                        <a href="#tabs-1">1</a>  
                                    </li>  
                                    <li><a href="#tabs-1">2</a></li>  
                                    <li><a href="#tabs-2">3</a></li>  
                                    <li><a href="#tabs-3">4</a></li>  
                                    <li><a href="#tabs-4">Next</a></li>  
                                </ul>  
                            </div>

                        </section>

                        <section class="span3">          

                            <div class="side-holder">

                                <article class="shop-by-list">
                                    <h2>Shop by</h2>
                                    <div class="side-inner-holder">
                                        <strong class="title">Category</strong>
                                        <ul class="side-list">
                                            <li><a href="store">Fiction & Fantasy (15)</a></li>
                                            <li><a href="store">Poetry (15)</a></li>
                                            <li><a href="store">Music (15)</a></li>
                                            <li><a href="store">Religious (15)</a></li>
                                            <li><a href="store">Education & Teaching (15)</a></li>
                                            <li><a href="store">Sport & Adventure (15)</a></li>
                                            <li><a href="store">History (15)</a></li>
                                        </ul>
                                        <strong class="title">Price</strong>
                                        <ul class="side-list">
                                            <li><a href="#">$00.00 - $10.00 (13)</a></li>
                                            <li><a href="#">$10.00 - $20.00 (2)</a></li>
                                            <li><a href="#">$20.00 - $30.00 (2)</a></li>
                                        </ul>
                                        <strong class="title">Author</strong>
                                        <ul class="side-list">
                                            <li><a href="#">Cassandra Clare (9)</a></li>
                                            <li><a href="#">William Blake (2)</a></li>
                                            <li><a href="#">Marcus Luttrell (1)</a></li>
                                            <li><a href="#">Gray Alvin (3)</a></li>
                                            <li><a href="#">Andrew Carroll  (2)</a></li>
                                            <li><a href="#">Sarah Young (1)</a></li>
                                            <li><a href="#">Dave Burgess (3)</a></li>
                                        </ul>
                                        <strong class="title">Availability</strong>
                                        <ul class="side-list">
                                            <li><a href="#">Less than 5 (9)</a></li>
                                            <li><a href="#">Less than 10 (2)</a></li>
                                            <li><a href="#">Less than 15 (1)</a></li>
                                            <li><a href="#">More than 20 (3)</a></li>
                                            <li><a href="#">Less than 30 (9)</a></li>
                                            <li><a href="#">More than 40  (2)</a></li>
                                            <li><a href="#">Less than 50 (1)</a></li>
                                            <li><a href="#">More than 60 (3)</a></li>
                                        </ul>
                                    </div>
                                </article>

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
                            <form action="<%=request.getContextPath()%>/Newsletter" method="post">
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
        <script>
            $(function() {
                $("#tabs").tabs();
            });
        </script>

    </body>
</html>

