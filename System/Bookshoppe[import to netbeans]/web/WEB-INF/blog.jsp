<%-- 
    Document   : blog
    Created on : Jun 9, 2014, 7:20:44 PM
    Author     : Osanda Wedamulla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Blog</title>

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
                            <h1 id="logo"> <a href="indexjsp"><img src="images/logo.png" /></a> </h1>
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
                            <h2>Blog</h2>
                            <span class="h-line"></span>
                        </div>

                        <section class="span9 first">
                            <!-- Start Ad Slider Section -->
                            <div class="blog-sec-slider">
                                <div class="slider5">
                                    <div class="slide"><a href="#"><img src="images/image230.jpg" alt=""/></a></div>
                                    <div class="slide"><a href="#"><img src="images/image36.jpg" alt=""/></a></div>
                                    <div class="slide"><a href="#"><img src="images/image229.jpg" alt=""/></a></div>
                                </div>
                            </div>

                            <article class="b-post">
                                <h3>What Book Would You Send Your Younger Self</h3>
                                <div class="b-post-img">
                                    <img src="images/image371.jpg" alt="Blog Post"/>
                                </div>
                                <p>Knowing what you know, and having read what you have read… if you could send one book back to your younger self, what 
                                    would you send?.We have all read a book that struck us with its wisdom, beauty, or just plain wow factor. Something
                                    that made us think “Where was this when I See more. would you send your younger self a work of fiction? Nonfiction? A 
                                    textbook, even? What age of “Younger You” would you send it to?. We’ve gotten a few responses so far, and have been 
                                    talking about it around the Better World Books office as well. And now we want to know what your answer is??......</p>
                                <div class="b-post-bottom">
                                    <ul class="post-nav">
                                        <li>Posted by <a href="#">Admin </a></li>
                                        <li>on June 07, 2014</li>
                                        <li><a href="#">2 Comments</a></li>
                                    </ul>
                                    <a href="#" class="more-btn">Read More</a>
                                </div>
                            </article>

                            <article class="b-post">
                                <h3>Demo post title</h3>
                                <div class="b-post-img">
                                    <img src="images/image23.jpg" alt="Blog Post"/>
                                </div>
                                <p>The international nature of book collecting is displayed on AbeBooks’ list of most expensive sales during June. France is 
                                    strongly represented with a collection of French archaeological magazines along with a rare book about Paris’ great opera 
                                    house and an art book by André Masson and philosopher Jean-Paul Sartre. Masson was an interesting character who dabbled 
                                    in Cubism and then moved to surrealism, before switching to the pen and ink style that included working under the 
                                    influence of drugs and long periods of time without food and water to enhance his art. Italy appears on the list in the
                                    bizarre form of Codex Seraphinianus by Italian artist Luigi Serafini. This baffling book remains one of the most 
                                    collectable art books of the past 40 years due to its striking imagery and incomprehensible text.....</p>
                                <div class="b-post-bottom">
                                    <ul class="post-nav">
                                        <li>Posted by <a href="#">Admin </a></li>
                                        <li>on january 25, 2014</li>
                                        <li><a href="#">2 Comments</a></li>
                                    </ul>
                                    <a href="#" class="more-btn">Read More</a>
                                </div>
                            </article>

                            <article class="b-post">
                                <h3>Best Buys on Brand New Books</h3>
                                <div class="b-post-img">
                                    <img src="images/image37.jpg" alt="Blog Post"/>
                                </div>
                                <p>At AbeBooks.co.uk, our booksellers offer all the best brand new books at amazing prices. Whether you’re a 
                                    crime fiction fanatic, a science fiction fiend or a lover of literature, you'll find brand new copies of 
                                    the hottest just released titles at huge discounts off the publisher's list price. From the BBC, The
                                    Guardian and The Daily Telegraph to the biggest book blogs and beyond, we're constantly scouring the media
                                    in search of the books with the most buzz. Each month we feature the titles with the best book reviews. 
                                    Explore our selected new books and discover literature that has everyone talking. Check back often - our 
                                    featured Best Buys are regulary updated with the latest and greatest bestselling books in fiction and 
                                    non-fiction by famous authours and up-and-coming new literary stars.........</p>
                                <div class="b-post-bottom">
                                    <ul class="post-nav">
                                        <li>Posted by <a href="#">Admin </a></li>
                                        <li>on May 07, 2013</li>
                                        <li><a href="#">2 Comments</a></li>
                                    </ul>
                                    <a href="#" class="more-btn">Read More</a>
                                </div>
                            </article>

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


