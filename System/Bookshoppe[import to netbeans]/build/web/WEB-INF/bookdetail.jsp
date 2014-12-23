<%-- 
    Document   : bookdetail
    Created on : Jun 9, 2014, 7:20:11 PM
    Author     : Osanda Wedamulla
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Database.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Book Detail</title>

        <link href="css/style.css" rel="stylesheet" type="text/css" /><!-- All css -->
        <link href="css/bs.css" rel="stylesheet" type="text/css" /><!-- Bootstrap Css -->
        <link rel="stylesheet" type="text/css" href="css/main-slider.css" /><!-- Main Slider Css -->

        <style>

            .zoom { display:inline-block; position: relative; }
            .zoom:after { content:''; display:block; width:33px; height:33px; position:absolute; top:0; right:0; background:url(icon.png); }
            .zoom img { display: block; }
            .zoom img::selection {background-color: transparent;}
            #ex2 img:hover { cursor: url(grab.cur), default; }
            #ex2 img:active { cursor: url(grabbed.cur), default; }
        </style>
    </head>
    <body>

        <div class="wrapper">

            <section class="top-nav-bar">
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
            <!-- End Top Nav Bar -->
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
                            <h2>Book Detail</h2>
                            <span class="h-line"></span>
                        </div>

                        <section class="span9 first">

                            <div class="blog-sec-slider">
                                <div class="slider5">
                                    <div class="slide"><a href="#"><img src="images/image22.jpg" alt=""/></a></div>
                                    <div class="slide"><a href="#"><img src="images/image36.jpg" alt=""/></a></div>
                                    <div class="slide"><a href="#"><img src="images/image22.jpg" alt=""/></a></div>
                                </div>
                            </div>

                            <section class="b-detail-holder">

                                <div class="book-detail">

                                    <%
                                        String ss = request.getParameter("Id");
                                        String sql = "SELECT * FROM book_details WHERE Book_Id='" + ss + "';";
                                        ResultSet rs = Dbconnection.query(sql);
                                        while (rs.next()) {
                                    %>
                                    <form action="<%=request.getContextPath()%>/Addcart" method="post">

                                        <input type="hidden" name="bookid" value="<%=rs.getString(1)%>"/>
                                        <input type="hidden" name="bookavailability" value="<%=rs.getString(6)%>"/>
                                        <article class="title-holder">
                                            <div class="span6">
                                                <h3><strong><%=rs.getString(2)%></strong> by <%=rs.getString(5)%></h3>
                                                <input type="hidden" name="bookname" value="<%=rs.getString(2)%>"/>
                                            </div>
                                        </article>
                                        <div class="book-i-caption">

                                            <div class="span6 b-img-holder">
                                                <span class='zoom' id='ex1'>
                                                    <img src='images/store/<%=rs.getString(9)%>.jpg' height="219" width="300" id='jack' alt=''/>
                                                    <input type="hidden" name="bookimage" value="<%=rs.getString(9)%>"/>
                                                </span>
                                            </div>

                                            <div class="span6">
                                                <strong class="title">Quick Overview</strong>
                                                <p> <%=rs.getString(4)%> </p>

                                                <table >
                                                    <tr>
                                                        <td>Author </td>
                                                        <td>:- </td>
                                                        <td style=" font-weight: bolder"><%=rs.getString(5)%></td> 
                                                    </tr>
                                                    <tr>
                                                        <td>Availability</td>
                                                        <td>:- </td>
                                                        <td style=" font-weight: bolder">In stock (<%=rs.getString(6)%>)</td> 
                                                    </tr>
                                                    <tr>
                                                        <td>Published Date </td>
                                                        <td>:- </td>
                                                        <td style=" font-weight: bolder"><%=rs.getString(7)%></td> 
                                                    </tr>
                                                </table>
                                                <div class="comm-nav">
                                                    <strong class="title2">Quantity</strong>
                                                    <ul>
                                                        <li><input name="bookquantity" type="text" /></li>
                                                        <li class="b-price">$<%=rs.getString(8)%></li>
                                                        <input type="hidden" name="unitprice" value="<%=rs.getString(8)%>"/>
                                                        <li>
                                                            <input type="submit" class="more-btn" value="+ Add to Cart"/>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>

                                        </div>

                                    </form>
                                    <%
                                        }
                                    %>

                                </div>


                                <section class="related-book">

                                    <div class="heading-bar">
                                        <h2>Related Books</h2>
                                        <span class="h-line"></span>
                                    </div>

                                    <div class="slider6">

                                        <%
                                            String sc = request.getParameter("Ic");
                                            String sqlc = "SELECT * FROM book_details WHERE Category_Id='" + sc + "';";
                                            ResultSet rsc = Dbconnection.query(sqlc);
                                            while (rsc.next()) {
                                        %>
                                        <form action="" method="">
                                            <div class="slide">

                                                <a href="bookdetail?Id=+<%=rsc.getString(1)%>&Ic=+<%=rsc.getString(10)%>">
                                                    <img src="images/store/<%=rsc.getString(9)%>.jpg" alt="" class="pro-img"/>
                                                </a>
                                                <span class="title">
                                                    <a href="bookdetail?Id=+<%=rsc.getString(1)%>&Ic=+<%=rsc.getString(10)%>"><%=rsc.getString(2)%></a>
                                                </span>
                                                <span class="rating-bar">
                                                    <img src="images/rating-star.png" alt="Rating Star"/>
                                                </span>
                                                <div class="cart-price">
                                                    <a class="cart-btn2" href="cart.">Add to Cart</a>
                                                    <span class="price">$<%=rsc.getString(8)%></span>
                                                </div>

                                            </div>
                                        </form>
                                        <%
                                            }
                                        %>

                                    </div>
                                </section>

                            </section>

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
    </body>
</html>

