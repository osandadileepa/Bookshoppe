<%-- 
    Document   : index
    Created on : Jun 9, 2014, 6:09:28 PM
    Author     : Osanda Wedamulla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="Database.Dbconnection" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Book Store</title>

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
            <li><a href="index.jsp" class="active">Home Page</a></li>
            <li><a href="store">Online Store</a></li>
            <li><a href="blog">Blog</a></li>
            <li><a href="aboutus">About Us</a></li>
            <li><a href="contact">Contact Us</a></li>
          </ul>
        </section>
          
        <section class="span6 e-commerce-list">
             <%
                HttpSession session1 = request.getSession();
                if(session1.getAttribute("username")==null)
                {
             %>
          <ul>
              <li>Welcome! <b>Guest</b> &nbsp <a href="login"> Login</a> &nbsp or <a href="login"> &nbsp Create an account</a></li>
          </ul>
            <%
                }
                else {
            %>
          <ul>
              <li>
                  Welcome! <b><%= session.getAttribute("username")%></b> 
              </li>
           <ul>
               <li style=" margin-top: 8px; margin-left: 40px;">
                 <form action="<%=request.getContextPath() %>/Logout" method="post">
                      <input type="submit" class="more-btn" value="logout" />
                  </form>
                      <%
                response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
                response.addHeader("Pragma", "no-cache"); 
                response.addDateHeader ("Expires", 0);
                      %>
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
            <input name="text" class="text-i" type="text" placeholder="Search entire store here..." />
            <input name="search" type="button" value="Serach" />
          </div>
        </section>
          
      </section>
    </section>

  </header>
  <div class="background">
  
  <section id="content-holder" class="container-fluid container">
    <section class="row-fluid">
      <section class="span12 slider">
        <section class="main-slider">
            
          <div class="bb-custom-wrapper">
            <div id="bb-bookblock" class="bb-bookblock">
                
                <div class="bb-item">
                <div class="bb-custom-content">
                    <div class="slide-inner">
                    <div class="span4 book-holder"> <a href="#"><img src="images/imagecor7.jpg" alt="Book" /></a>
                      <div class="cart-price"> <a class="cart-btn2" href="#">Add to Cart</a> <span class="price">$22.45</span> </div>
                    </div>
                    <div class="span8 book-detail">
                      <h2>Windows 8 For Dummies</h2>
                      <strong class="title">by Andy Rathbone</strong> <span class="rating-bar"> <img src="images/raing-star2.png" alt="Rating Star" /> </span> <a href="store" class="shop-btn">SHOP NOW</a>
                      <div class="cap-holder">
                        <p><img src="images/image27.png" alt="Best Choice" align="right"/> The bestselling tech book of all time, now updated for Windows 8 Microsoft Windows is the operating system that runs nearly 90 percent of the world's computers. Windows 8 will offer new interface and updates.</p>
                        <a href="#">Read More</a> 
                      </div>
                    </div>
                  </div>
                </div>
              </div>
                
                <div class="bb-item">
                <div class="bb-custom-content">
                    <div class="slide-inner">
                    <div class="span4 book-holder"> <a href="#"><img src="images/imagecor1.jpg" alt="Book" /></a>
                      <div class="cart-price"> <a class="cart-btn2" href="#">Add to Cart</a> <span class="price">$17.20</span> </div>
                    </div>
                    <div class="span8 book-detail">
                      <h2>The Accidental Duchess</h2>
                      <strong class="title">by Madeline Hunter</strong> <span class="rating-bar"> <img src="images/raing-star2.png" alt="Rating Star" /> </span> <a href="store" class="shop-btn">SHOP NOW</a>
                      <div class="cap-holder">
                        <p><img src="images/image27.png" alt="Best Choice" align="right"/> From New York Times bestselling author Madeline Hunter comes this seductive tale of a headstrong young lady, a scandalous manuscript, and the iron-willed duke determined to save her from her ruin.</p>
                        <a href="#">Read More</a> 
                      </div>
                    </div>
                  </div>
                </div>
              </div>
                
                <div class="bb-item">
                <div class="bb-custom-content">
                  <div class="slide-inner">
                    <div class="span4 book-holder"> <a href="#"><img src="images/imagecor6.jpg" alt="Book" /></a>
                      <div class="cart-price"> <a class="cart-btn2" href="#">Add to Cart</a> <span class="price">$28.30</span> </div>
                    </div>
                    <div class="span8 book-detail">
                      <h2>Skin Game</h2>
                      <strong class="title">by Jim Butcher</strong> <span class="rating-bar"> <img src="images/raing-star2.png" alt="Rating Star" /> </span> <a href="store" class="shop-btn">SHOP NOW</a>
                      <div class="cap-holder">
                        <p><img src="images/image27.png" alt="Best Choice" align="right"/> Butcher is the dean of contemporary urban fantasy.Booklist Harry Dresden, Chicago's only professional wizard, is about to have a very bad day. Because as Winter Knight to the Queen of Air and Darkness.</p>
                        <a href="#">Read More</a> </div>
                    </div>
                  </div>
                </div>
              </div>
                
                <div class="bb-item">
                <div class="bb-custom-content">
                  <div class="slide-inner">
                    <div class="span4 book-holder"> <a href="#"><img src="images/imagecor8.jpg" alt="Book" /></a>
                      <div class="cart-price"> <a class="cart-btn2" href="#">Add to Cart</a> <span class="price">$10.93</span> </div>
                    </div>
                    <div class="span8 book-detail">
                      <h2>Barron's AP Biology</h2>
                      <strong class="title">by Deborah Goldberg</strong> <span class="rating-bar"> <img src="images/raing-star2.png" alt="Rating Star" /> </span> <a href="store" class="shop-btn">SHOP NOW</a>
                      <div class="cap-holder">
                        <p><img src="images/image27.png" alt="Best Choice" align="right"/>  Barron's best-selling study guide updated book has been completely revised to reflect recent changes to the AP Biology exam. It includes: Two full-length exams that follow the content and style.</p>
                        <a href="#">Read More</a> </div>
                    </div>
                  </div>
                </div>
              </div>
                
              <div class="bb-item">
                <div class="bb-custom-content">
                  <div class="slide-inner">
                    <div class="span4 book-holder"> <a href="#"><img src="images/imagecor5.jpg" alt="Book" /></a>
                      <div class="cart-price"> <a class="cart-btn2" href="#">Add to Cart</a> <span class="price">$15.85</span> </div>
                    </div>
                    <div class="span8 book-detail">
                      <h2>Paddle Your Own Canoe</h2>
                      <strong class="title">by Nick Offerman</strong> <span class="rating-bar"> <img src="images/raing-star2.png" alt="Rating Star" /> </span> <a href="store" class="shop-btn">SHOP NOW</a>
                      <div class="cap-holder">
                        <p><img src="images/image27.png" alt="Best Choice" align="right"/> Parks and Recreation actor Nick Offerman shares his humorous fulminations on life, manliness, meat, and much more in his first book. Growing a perfect moustache and grilling red meat. </p>
                        <a href="#">Read More</a> </div>
                    </div>
                  </div>
                </div>
              </div>
                
                <div class="bb-item">
                <div class="bb-custom-content">
                	<div class="slide-inner">
                    <div class="span8 book-detail">
                      <h2>Night Broken</h2>
                      <strong class="title">by Patricia Briggs</strong> <span class="rating-bar"> <img src="images/raing-star2.png" alt="Rating Star" /> </span> <a href="store" class="shop-btn">SHOP NOW</a>
                      <div class="cap-holder">
                        <p><img src="images/image27.png" alt="Best Choice" align="right"/> #1 New York Times bestselling author Patricia Briggs Mercy Thompson series has been hailed as one of the best (Fiction Vixen). Now, Mercy must deal with an unwanted guest one that brings a threat unlike anything she's ever known.</p>
                        <a href="#">Read More</a> </div>
                    </div>
                    <div class="span4 book-holder"> <a href="#"><img src="images/imagecor2.jpg" alt="Book" /></a>
                      <div class="cart-price"> <a class="cart-btn2" href="#">Add to Cart</a> <span class="price">$19.50</span> </div>
                    </div>
                  </div>
                </div>
              </div>
                
              <div class="bb-item">
                <div class="bb-custom-content">
                	<div class="slide-inner">
                    <div class="span8 book-detail">
                      <h2>I Could Chew on This</h2>
                      <strong class="title">by  Francesco Marciuliano</strong> <span class="rating-bar"> <img src="images/raing-star2.png" alt="Rating Star" /> </span> <a href="store" class="shop-btn">SHOP NOW</a>
                      <div class="cap-holder">
                        <p><img src="images/image27.png" alt="Best Choice" align="right"/> A New York Times bestseller? Oh, you know the dogs weren't going to let the cats get away with that! This canine companion to I Could Pee on This, the beloved volume of poems by cats.</p>
                        <a href="#">Read More</a> </div>
                    </div>
                    <div class="span4 book-holder"> <a href="#"><img src="images/imagecor4.jpg" alt="Book" /></a>
                      <div class="cart-price"> <a class="cart-btn2" href="#">Add to Cart</a> <span class="price">$30.25</span> </div>
                    </div>
                  </div>
                </div>
              </div>
                
              <div class="bb-item">
                <div class="bb-custom-content">
                	<div class="slide-inner">
                    <div class="span8 book-detail">
                      <h2>Oil Pulling Therapy</h2>
                      <strong class="title">by Bruce Fife</strong> <span class="rating-bar"> <img src="images/raing-star2.png" alt="Rating Star" /> </span> <a href="store" class="shop-btn">SHOP NOW</a>
                      <div class="cap-holder">
                        <p><img src="images/image27.png" alt="Best Choice" align="right"/> If you have bad breath, bleeding gums, cavities, or tooth pain-you need this book! If you suffer from asthma, diabetes, arthritis, migraine headaches, or any chronic illness, and have not found relief.</p>
                        <a href="#">Read More</a> </div>
                    </div>
                    <div class="span4 book-holder"> <a href="#"><img src="images/imagecor9.jpg" alt="Book" /></a>
                      <div class="cart-price"> <a class="cart-btn2" href="#">Add to Cart</a> <span class="price">$14.50</span> </div>
                    </div>
                  </div>
                </div>
              </div>
                
                <div class="bb-item">
                <div class="bb-custom-content">
                	<div class="slide-inner">
                    <div class="span8 book-detail">
                      <h2>The Yankee Way: Playing, Coaching</h2>
                      <strong class="title">by Willie Randolph</strong> <span class="rating-bar"> <img src="images/raing-star2.png" alt="Rating Star" /> </span> <a href="store" class="shop-btn">SHOP NOW</a>
                      <div class="cap-holder">
                        <p><img src="images/image27.png" alt="Best Choice" align="right"/> rom a dusty diamond in Brooklyn to the hallowed grounds of Yankee Stadium, Willie Randolph has always loved the game of baseball, and over the course of his storied career, he has amassed a remarkable.</p>
                        <a href="#">Read More</a> </div>
                    </div>
                    <div class="span4 book-holder"> <a href="#"><img src="images/imagecor10.jpg" alt="Book" /></a>
                      <div class="cart-price"> <a class="cart-btn2" href="#">Add to Cart</a> <span class="price">$16.75</span> </div>
                    </div>
                  </div>
                </div>
              </div>
                
              <div class="bb-item">
                <div class="bb-custom-content">
                    <div class="slide-inner">
                    <div class="span4 book-holder"> <a href="#"><img src="images/imagecor3.jpg" alt="Book" /></a>
                      <div class="cart-price"> <a class="cart-btn2" href="#">Add to Cart</a> <span class="price">$21.32</span> </div>
                    </div>
                    <div class="span8 book-detail">
                      <h2>The Book of Life</h2>
                      <strong class="title">by Deborah Harkness</strong> <span class="rating-bar"> <img src="images/raing-star2.png" alt="Rating Star" /> </span> <a href="store" class="shop-btn">SHOP NOW</a>
                      <div class="cap-holder">
                        <p><img src="images/image27.png" alt="Best Choice" align="right"/> The highly anticipated finale to the #1 New York Times bestselling trilogy that began with A Discovery of Witches   After traveling through time in Shadow of Night, the second book in Deborah Harknes enchanting series.</p>
                        <a href="#">Read More</a> 
                      </div>
                    </div>
                  </div>
                </div>
              </div>
                
            </div>
              
          </div>
          <nav class="bb-custom-nav"> <a href="#" id="bb-nav-prev" class="left-arrow">Previous</a> <a href="#" id="bb-nav-next" class="right-arrow">Next</a> </nav>
        </section>
        <span class="slider-bottom"><img src="images/slider-bg.png" alt="Shadow"/></span> 
      </section>
        
    </section>
      
    <section class="row-fluid ">
        
      <figure class="span4 s-product">
        <div class="s-product-img"><a href="store"><img src="images/image03.jpg" alt="Image02"/></a></div>
        <article class="s-product-det">
          <h3><a href="#">High Performance MySQL</a></h3>
          <p> How can you bring out MySQL full power?.With High Performance MySql learn advanced techniques.</p>
          <span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span>
          <div class="cart-price"> <a href="#" class="cart-btn2">Add to Cart</a> <span class="price">$28.50</span> </div>
          <span class="sale-icon">Sale</span> </article>
      </figure>
        
      <figure class="span4 s-product">
        <div class="s-product-img"><a href="store"><img src="images/image01.jpg" alt="Image01"/></a></div>
        <article class="s-product-det">
          <h3><a href="#">Harry Potter (Sorcerer's Stone)</a></h3>
          <p>Harry, an orphan, lives with the Dursleys, his horrible aunt and uncle, and their abominable son, Dudley.</p>
          <span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span>
          <div class="cart-price"> <a href="#" class="cart-btn2">Add to Cart</a> <span class="price">$15.45</span> </div>
          <span class="sale-icon">Sale</span> </article>
      </figure>
        
      <figure class="span4 s-product">
        <div class="s-product-img"><a href="store"><img src="images/image02.jpg" alt="Image02"/></a></div>
        <article class="s-product-det">
          <h3><a href="#">Code Talker</a></h3>
          <p>He is the only original World War II Navajo code talker still alive and this is his story..</p>
          <span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span>
          <div class="cart-price"> <a href="#" class="cart-btn2">Add to Cart</a> <span class="price">$08.55</span> </div>
          <span class="sale-icon">Sale</span> </article>
      </figure>
        
    </section>
    
    <section class="row-fluid features-books">
      <section class="span12 m-bottom">
        <div class="heading-bar">
          <h2>Featured Books</h2>
          <span class="h-line"></span> </div>
          
        <div class="slider1">
            
           
            <%
                try{
                      String sql="SELECT * FROM book_details WHERE Book_Id>'1' AND Book_Id<'13';";
                      ResultSet rs=Dbconnection.query(sql);
                      while(rs.next()){
            %>
            
            <form  action="" method="post" >   
            <div class="slide">
              
              <a href="bookdetail?Id=+<%=rs.getString(1)%>&Ic=+<%=rs.getString(10)%>"> 
                  <img src="images/store/<%=rs.getString(9)%>.jpg" alt="" class="pro-img"/>
              </a> 
              <span class="title">
                  <a href="#"><%=rs.getString(2)%></a>
              </span>
              <span class="rating-bar">
                  <img src="images/rating-star.png" alt="Rating Star"/>
              </span>
              
            <div class="cart-price"> 
                <a class="cart-btn2" href="cart.html">Add to Cart</a> 
                <span class="price">$<%=rs.getString(8)%></span>
            </div>
              
           </div>
           </form>
            
                <%
                      }
                      }
                      catch (Exception e){
                      
                      }
               
                %>
            
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
          <form action="<%=request.getContextPath() %>/Newsletter" method="post">
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


