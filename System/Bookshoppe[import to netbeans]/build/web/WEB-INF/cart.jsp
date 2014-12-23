<%-- 
    Document   : cart
    Created on : Jun 9, 2014, 6:53:33 PM
    Author     : Osanda Wedamulla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Database.Dbconnection"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Cart</title>

        <link href="css/style.css" rel="stylesheet" type="text/css" /><!-- All css -->
        <link href="css/bs.css" rel="stylesheet" type="text/css" /><!-- Bootstrap Css -->
        <link rel="stylesheet" type="text/css" href="css/main-slider.css" /><!-- Main Slider Css -->
        <link rel="stylesheet" type="text/css" href="css/font-awesome.css" /><!-- Font Awesome Css -->

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
                        <!-- Start Main Content -->
                        <section class="span12 cart-holder">
                            <div class="heading-bar">
                                <h2>SHOPPING CART</h2>
                                <span class="h-line"></span>
                            </div>

                            <%
                                try {
                                    String sqlr = "SELECT * FROM cart_order;";
                                    ResultSet rsr = Dbconnection.query(sqlr);
                                    HttpSession session2 = request.getSession();
                                    if (rsr.last() == true) {

                            %>

                            <div class="cart-table-holder">

                                <table width="100%" border="1" cellpadding="10">

                                    <th width="30%">Book Image</th>
                                    <th width="30%">Book Name</th>
                                    <th width="10%">Unit Price</th>
                                    <th width="07%">Quantity</th>
                                    <th width="15%">Subtotal</th>
                                    <th width="20%"></th>

                                </table>
                                <%                                    try {
                                        String sql = "SELECT * FROM cart_order;";
                                        ResultSet rs = Dbconnection.query(sql);
                                        while (rs.next()) {
                                %>

                                <form action="" method="post">
                                    <table width="100%" border="" cellpadding="10">

                                        <tr bgcolor="#FFFFFF" class="product-detail">
                                            <td width="30%" valign="top"><img width="140" height="207" src="images/store/<%=rs.getString(5)%>.jpg" /></td>
                                            <td width="30%" valign="top"><%=rs.getString(3)%></td>
                                            <td width="10%" align="center" valign="top">$<%=rs.getString(4)%></td>
                                            <td width="07%" align="center" valign="top"><%=rs.getString(7)%></td>
                                            <td width="15%" align="center" valign="top">$
                                                <%

                                                    double subTotal = Double.parseDouble(rs.getString(4)) * Double.parseDouble(rs.getString(7));
                                                    out.print(subTotal);
                                                    double total = 0;
                                                    int i = 1;
                                                    while (i <= rs.getRow()) {
                                                        total = total + subTotal;
                                                        i++;

                                                    }

                                                %>
                                            </td>

                                            </form>   
                                            <td width="20%" align="center" valign="top">

                                                <form action="<%=request.getContextPath()%>/Remover" method="post">
                                                    <input type="hidden" name="bookid" value="<%=rs.getString(2)%>" />
                                                    <button type="submit" style="border: hidden; background: transparent;"> 
                                                        <i class="icon-trash"></i>
                                                    </button>
                                                </form>

                                            </td>
                                        </tr>

                                    </table>

                                    <%
                                            }
                                        } catch (Exception e) {
                                        }
                                    %>

                            </div>
                            <%
                            } else {
                            %>
                            <div class="cart-table-holder">
                                <center><h1> **** The Cart is EMPTY ****</h1></center>
                            </div>
                            <%
                                }
                            } catch (Exception e) {

                            %>
                            <div class="cart-table-holder">
                                <center><h1> **** The Cart is EMPTY ****</h1></center>
                            </div>
                            <%                                }
                            %>

                            <figure class="span4 first">
                                <div class="cart-option-box">
                                    <h4><i class="icon-shopping-cart"></i> ESTIMATE TRANSPORT & TAX</h4>
                                    <p>Enter your destination to get a shipping estimate.</p>
                                    <form class="form-horizontal">
                                        <ul class="billing-form">
                                            <li>   
                                                <div class="control-group">
                                                    <label class="control-label" for="inputState/Province">Province<sup>*</sup></label>
                                                    <div class="controls">
                                                        <select name="state" size="1">
                                                            <option selected value="">Province...</option>
                                                            <option value="Alabama">Southeren Province</option>
                                                            <option value="Nova Scotia">Central Province</option>
                                                            <option value="Nunavut">Nunavut</option>
                                                            <option value="Ontario">Ontario</option>
                                                            <option value="Prince Edward Island">Prince Edward Island</option>
                                                            <option value="Quebec">Quebec</option>
                                                            <option value="Saskatchewan">Saskatchewan</option>
                                                            <option value="Yukon Territory">Yukon Territory</option>
                                                            <option value="">-- AUSTRALIA --</option>
                                                            <option value="Australian Capital Territory">Australian Capital Territory</option>
                                                            <option value="New South Wales">New South Wales</option>
                                                            <option value="Northern Territory">Northern Territory</option>
                                                            <option value="Queensland">Queensland</option>
                                                            <option value="South Australia">South Australia</option>
                                                            <option value="Tasmania">Tasmania</option>
                                                            <option value="Victoria">Victoria</option>
                                                            <option value="Western Australia">Western Australia</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>   
                                                <div class="control-group">
                                                    <label class="control-label" for="inputCountry">City <sup>*</sup></label>
                                                    <div class="controls">
                                                        <select name="country">
                                                            <option selected value="">City...</option>
                                                            <option value="Afganistan">Matara</option>
                                                            <option value="Albania">Colombo</option>
                                                            <option value="Algeria">Galle</option>
                                                            <option value="American Samoa">Hambanthota</option>
                                                            <option value="Andorra">Ambalagoda</option>
                                                            <option value="Angola">Rathnapura</option>
                                                            <option value="Anguilla">Keagalle</option>
                                                            <option value="Tahiti">Tahiti</option>
                                                            <option value="Taiwan">Taiwan</option>
                                                            <option value="Tajikistan">Tajikistan</option>
                                                            <option value="Tanzania">Tanzania</option>
                                                            <option value="Thailand">Thailand</option>
                                                            <option value="Togo">Togo</option>
                                                            <option value="Tokelau">Tokelau</option>
                                                            <option value="Tonga">Tonga</option>
                                                            <option value="Trinidad &amp; Tobago">Trinidad &amp; Tobago</option>
                                                            <option value="Tunisia">Tunisia</option>
                                                            <option value="Zaire">Zaire</option>
                                                            <option value="Zambia">Zambia</option>
                                                            <option value="Zimbabwe">Zimbabwe</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="inputZip">Postal Code <sup>*</sup></label>
                                                    <div class="controls">
                                                        <input type="text" name="postalship" id="inputZip" placeholder="" />
                                                    </div>
                                                </div>

                                            </li>
                                            <li>
                                                <div class="control-group">
                                                    <div class="controls">
                                                        <button type="submit" class="more-btn">get a quote</button>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </form>
                                </div>
                            </figure>
                            <figure class="span4">
                                <table >
                                    <tr>
                                        <td><h4>Add more books to the cart ------></h4></td>
                                        <td>
                                            <a href="store">
                                                <button type="submit" class="more-btn">Update-Cart</button>
                                            </a>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td><h4>Clear the whole cart --------------></h4></td>
                                        <td>
                                            <form action="Clearcart" method="post">
                                                <button type="submit" class="more-btn">&nbsp;Clear - Cart </button>
                                            </form>
                                        </td>
                                    </tr>
                                </table>

                            </figure>


                            <figure class="span4 price-total">
                                <div class="cart-option-box">
                                    <table width="100%" border="0" cellpadding="10" class="total-payment">
                                        <tr>
                                            <td align="right"><strong class="large-f">GRAND TOTAL</strong></td>
                                            <td align="left">
                                                <strong class="large-f">$
                                                    <%
                                                        try {
                                                            String sql = "SELECT * FROM cart_order;";
                                                            ResultSet rs1 = Dbconnection.query(sql);
                                                            double total = 0.00;
                                                            while (rs1.next()) {

                                                                double subTotal = Double.parseDouble(rs1.getString(4)) * Double.parseDouble(rs1.getString(7));
                                                                int orderId = Integer.parseInt(rs1.getString(1));

                                                                int i = 1;
                                                                while (i <= orderId) {
                                                                    total = total + subTotal;
                                                                    i++;

                                                                }

                                                            }
                                                            out.print(total);
                                                        } catch (Exception e) {
                                                        }
                                                    %>

                                                </strong>
                                            </td>
                                        </tr>
                                    </table>
                                    <hr />
                                    <form action="login" method="get">
                                        <input type="submit" class="more-btn" value=" proceed to checkout ">
                                    </form>

                                </div>
                            </figure>
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

