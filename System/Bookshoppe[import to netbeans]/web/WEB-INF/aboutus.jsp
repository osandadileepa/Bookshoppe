<%-- 
    Document   : aboutus
    Created on : Jun 9, 2014, 6:36:50 PM
    Author     : Osanda Wedamulla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>About Us</title>

        <link href="css/style.css" rel="stylesheet" type="text/css" /><!-- All css -->
        <link href="css/bs.css" rel="stylesheet" type="text/css" /><!-- Bootstrap Css -->
        <link rel="stylesheet" type="text/css" href="css/main-slider.css" /><!-- Main Slider Css -->

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
                            <h2>About Us</h2>
                            <span class="h-line"></span>
                        </div>

                        <section class="span9 first">

                            <div class="blog-sec-slider">
                                <div class="slider5">
                                    <div class="slide"><a href="#"><img src="images/image223.jpg" alt=""/></a></div>
                                    <div class="slide"><a href="#"><img src="images/image224.jpg" alt=""/></a></div>
                                    <div class="slide"><a href="#"><img src="images/image225.jpg" alt=""/></a></div>
                                </div>
                            </div>

                            <section class="content-holder">
                                <h2>The Online Bookstore with a Soul</h2>
                                <p><img src="images/image28.jpg" align="left" class="content-img"/> Better World Books uses the power of business to change the world. We collect and sell books online to donate books and fund literacy initiatives worldwide. With more than 8 million 
                                    new and used titles in stock, we’re a self-sustaining, triple-bottom-line company that creates social, economic and environmental value for all our stakeholders.</p>
                                <p>We were founded in 2002 by three friends from the University of Notre Dame who started selling textbooks online to earn some money, and ended up forming a pioneering social enterprise — a business with a mission to promote literacy. 
                                    We’re not a traditional company with an add-on “cause” component. Social and environmental responsibility is at the core of our business. You could say it's in our DNA.</p>
                                <p>We’re breaking new ground in online bookselling. We believe that education and access to books are basic human rights. That's why books sold on BetterWorldBooks.com
                                    help fund high-impact literacy projects in the United States and around the world. That's why we commit to matching every purchase on our website with a book donation to someone in need - Book for Book™</p>
                                <p>Because we believe that most every book has lasting value and the potential to help change the world, we see our job as helping to find new homes for unwanted books. Thus far, we’ve donated over 10 million books to partner programs around the world. Our four primary literacy partners
                                    are Books for Africa, Room to Read, Worldfund, and the National Center for Families Learning. Good company, no doubt.</p>
                                <h4>We are looking for newest trends </h4>
                                <p> All books are available with free shipping worldwide. And in case you're concerned about your eco-footprint, every order shipped from Mishawaka is carbon balanced with Green-e Climate certified offsets from 3Degrees, a leading green power and carbon balancing services firm..</p>
                                <p>Here’s the best part: In addition to selling new titles, Better World Books supports book drives and collects used books and textbooks through a network of over 2,300 college campuses and partnerships with over 3,000 libraries nationwide. So far, the company has converted more than
                                    117 million books into over $15 million in funding for literacy and education. In the process, we’ve also diverted more than 73,000 tons of books from landfills.</p>
                                <p>Every book purchased from Better World Books contributes to individual literacy throughout the world and the potential for a better life. Clearly, we can’t do this work without our customers. That's why we’re so passionate about trying to offer the best price, selection, customer service, 
                                    and overall shopping experience.</p>
                            </section>

                        </section>

                        <section class="span3">


                            <div class="side-holder">
                                <article class="price-range">
                                    <h2>Community Poll</h2>
                                    <div class="side-inner-holder">
                                        <p>Who is your favourite American author?</p>
                                        <label class="radio">
                                            <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                                Jane Austin
                                        </label>
                                        <label class="radio">
                                            <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                                                William Blake
                                        </label>
                                        <label class="radio">
                                            <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                                Keith Urban
                                        </label>
                                        <label class="radio">
                                            <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                                                Anna Smith
                                        </label>
                                        <a href="#" class="vote-btn">Vote</a>
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

    </body>
</html>

