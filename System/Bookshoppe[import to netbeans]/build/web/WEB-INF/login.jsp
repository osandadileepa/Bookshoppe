<%--  
    Document   : login
    Created on : Jun 9, 2014, 6:16:42 PM
    Author     : Osanda Wedamulla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Login</title>

        <link href="css/style.css" rel="stylesheet" type="text/css" /><!-- All css -->
        <link href="css/bs.css" rel="stylesheet" type="text/css" /><!-- Bootstrap Css -->
        <link rel="stylesheet" type="text/css" href="css/main-slider.css" /><!-- Main Slider Css -->
        <!--Validation Javascrip-->
        <script type="text/javascript">
                function validate_basicInfo(){
					var fault = 0;
					var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
					var check_id = /(["\'\$\%\#\&\*\^\!\(\)\@\+\?\>\<\,\:\;\|])/;
					
					document.getElementById("content_div_3").style.display = "block";
					document.getElementById("next_button").style.display = "none";
					
					var f_name = document.getElementById("firstname");
					var l_name = document.getElementById("lastname");
					var id = document.getElementById("username");
					var password = document.getElementById("password");
					var cPassword = document.getElementById("confirmpassword");
                                        var street = document.getElementById("address");
					var city = document.getElementById("city");
					var postal = document.getElementById("postal");
					
					if(f_name.value.replace(/\s+$/g,'') == "" || l_name.value.replace(/\s+$/g,'') == ""){
						fault++;
						document.getElementById("error_td_name").innerHTML = "Please enter your name";
					}else{document.getElementById("error_td_name").innerHTML = null;}
									
					if((id.value.replace(/\s+$/g,'')) == "" || check_id.test(id.value) == true){
						fault++;
						document.getElementById("error_td_id").innerHTML = "Please enter ID. [alphanumeric, numeric, dash and underscore] only allowed.";
					}else{document.getElementById("error_td_id").innerHTML = null;}
					
					if(password.value.length <6){
						fault++;
						document.getElementById("error_td_password").innerHTML = "Min 6 charactors";		
					}else{document.getElementById("error_td_password").innerHTML = null;}
					
					if(cPassword.value != password.value){
						fault++;
						document.getElementById("error_td_cPassword").innerHTML = "Password didn't match";		
					}else{document.getElementById("error_td_cPassword").innerHTML = null;}
                                        
                                        if(street.value.replace(/\s+$/g,'') == ""){
						fault++;
						document.getElementById("error_td_street").innerHTML = "Please enter your address";
					}else{document.getElementById("error_td_street").innerHTML = null;}
					
					if(city.value.replace(/\s+$/g,'') == ""){
						fault++;
						document.getElementById("error_td_city").innerHTML = "Please enter your city";
					}else{document.getElementById("error_td_city").innerHTML = null;}
					
					if(postal.value.replace(/\s+$/g,'') == ""){
						fault++;
						document.getElementById("error_td_postal").innerHTML = "Please enter your postal code";
					}else{document.getElementById("error_td_postal").innerHTML = null;}
                                        				
					if(fault > 0){
						return false	
					}
					else{
						return true;	
					}
					
			}
        </script>

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
                                <input name="" class="text-i" type="text" placeholder="Search entire store here"/>
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
                            <h2>Checkout</h2>
                            <span class="h-line"></span> </div>

                        <section class="checkout-holder">
                            <section class="span9 first">

                                <div class="accordion" id="accordion2">
                                    <div class="accordion-group">
                                        <div class="accordion-heading"> 
                                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne"> Checkout Method </a>
                                        </div>
                                        <div id="collapseOne" class="accordion-body collapse in">

                                            <div class="accordion-inner">
                                                <div class="span6 check-method-left"> <strong class="green-t">Checkout as a Guest or Register</strong>
                                                    <p>Register with us for future convenience:</p>
                                                    <label class="radio">
                                                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                                            Checkout as Guest 
                                                    </label>
                                                    <label class="radio">
                                                        <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                                                            Register 
                                                    </label>
                                                    <p>Register and save time!</p>
                                                    <p>Register with us for future convenience:</p>
                                                    <a href="login#collapseTwo" class="more-btn">Continue</a>
                                                </div>
                                                <div class="span5 check-method-right"> <strong class="green-t">Login</strong>
                                                    <p>Already registered? Please log in below:</p>

                                                    <form class="form-horizontal" action="<%=request.getContextPath()%>/Login" method="post">

                                                        <div class="control-group">
                                                            <label class="control-label" for="inputEmail"><b>Username</b> </label>
                                                            <div class="controls">
                                                                <input type="text"  name="inputusername" id="inputusername" placeholder="" />
                                                            </div>
                                                        </div>

                                                        <div class="control-group">
                                                            <label class="control-label" for="inputPassword"><b>Password</b> </label>
                                                            <div class="controls">
                                                                <input type="password" name="inputpassword" id="inputpassword" placeholder="" />
                                                            </div>
                                                        </div>

                                                        <p><a href="#">Forgot your password?</a></p>

                                                        <div class="control-group">
                                                            <div class="controls">
                                                                <input type="submit" name="submitbtn" class="more-btn" value="login" />
                                                            </div>
                                                        </div>

                                                    </form>

                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="accordion-group">
                                        <div class="accordion-heading">
                                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo"> Registering Information </a> 
                                        </div>
                                        <div id="collapseTwo" class="accordion-body collapse">
                                            <div class="accordion-inner">
                                                <strong class="green-t">Checkout as Guest</strong>

                                                <form class="form-horizontal" action="<%=request.getContextPath()%>/Registration" method="post" onsubmit="return validate_basicInfo()">
                                                    <ul class="billing-form">
                                                        <li>   

                                                            <div class="control-group">
                                                                <label class="control-label" for="inputFirstname">First Name</label>
                                                                <div class="controls">
                                                                    <input type="text" name="firstname" id="firstname" placeholder="First Name" />
                                                                </div>
                                                            </div>

                                                            <div class="control-group">
                                                                <label class="control-label" for="inputLastname">Last Name</label>
                                                                <div class="controls">
                                                                    <input type="text" name="lastname" id="lastname" placeholder="Last Name" />
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="control-group">
                                                                <td style="color: red;" id="error_td_name"></td>    
                                                            </div>

                                                        </li>
                                                        <li>   

                                                            <div class="control-group">
                                                                <label class="control-label" for="Username">Username</label>
                                                                <div class="controls">
                                                                    <input type="text" name="username" id="username" placeholder="Username" />
                                                                </div>
                                                            </div>

                                                            <div class="control-group">
                                                                <label class="control-label" for="Email">Email Address</label>
                                                                <div class="controls">
                                                                    <input type="email" name="email" id="email" placeholder="someone@gmail.com" />
                                                                </div>
                                                            </div>

                                                        </li>
                                                        <li>   

                                                            <div class="control-group">
                                                                <label class="control-label" for="Address">Address</label>
                                                                <div class="controls">
                                                                    <input type="text" name="address" id="address" placeholder="Address" class="address-field" />
                                                                </div>
                                                            </div>

                                                        </li>

                                                        <li>   

                                                            <div class="control-group">
                                                                <label class="control-label" for="password">Password</label>
                                                                <div class="controls">
                                                                    <input type="password" name="password" id="password" placeholder="**********" />
                                                                </div>
                                                            </div>

                                                            <div class="control-group">
                                                                <label class="control-label" for="confirmpassword">Confirm Password</label>
                                                                <input type="password" name="confirmpassword" id="confirmpassword" placeholder="**********" />
                                                            </div>

                                                        </li>

                                                        <li>   
                                                            <div class="control-group">
                                                                <label class="control-label" for="city">City</label>
                                                                <div class="controls">
                                                                    <input type="text" name="city" id="city" placeholder="City" />
                                                                </div>

                                                            </div>

                                                            <div class="control-group">
                                                                <label class="control-label" for="country">Country</label>
                                                                <div class="controls">
                                                                    <input type="text" name="country" id="country" placeholder="Country" />
                                                                </div>
                                                            </div>

                                                        </li>

                                                        <li>   
                                                            <div class="control-group">
                                                                <label class="control-label" for="postal">Postal Code</label>
                                                                <div class="controls">
                                                                    <input type="text" name="postal" id="postal" placeholder="997747" />
                                                                </div>

                                                            </div>

                                                            <div class="control-group">
                                                                <label class="control-label" for="mobile">Telephone Number</label>
                                                                <div class="controls">
                                                                    <input type="text" name="phone" id="phone" placeholder="+(94)77 4574 785" />
                                                                </div>
                                                            </div>

                                                        </li>


                                                        <li>
                                                            <div class="control-group">
                                                                <div class="controls">
                                                                    <button type="submit" class="more-btn">Continue</button>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>

                                                </form>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="accordion-group">
                                        <div class="accordion-heading">
                                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree"> Sell Books </a> 
                                        </div>
                                        <div id="collapseThree" class="accordion-body collapse">
                                            <div class="accordion-inner"> 
                                                <form class="form-horizontal">
                                                    <ul class="billing-form">  
                                                        <li>   
                                                            <div class="control-group">
                                                                <label class="control-label" for="inputAddress">Book Name<sup>*</sup></label>
                                                                <div class="controls">
                                                                    <input type="text" name="bookname" id="inputAddress" placeholder="" class="address-field" />
                                                                </div>  
                                                            </div>

                                                        </li>

                                                        <li>   
                                                            <div class="control-group">
                                                                <label class="control-label" for="inputCity">ISBN Id <sup>*</sup></label>
                                                                <div class="controls">
                                                                    <input type="text" name="isbn"id="inputCity" placeholder="" />
                                                                </div>

                                                            </div>

                                                            <div class="control-group">
                                                                <label class="control-label" for="inputCity">Upload Image file <sup>*</sup></label>
                                                                <div class="controls">
                                                                    <input type="file" name="image" id="inputCity" placeholder="" />
                                                                </div>

                                                            </div>
                                                        </li>

                                                        <li>   
                                                            <div class="control-group">
                                                                <label class="control-label" for="inputZip">Book Description <sup>*</sup></label>
                                                                <div class="controls">
                                                                    <textarea name="description" cols="6" rows="10"></textarea>
                                                                </div>
                                                            </div>

                                                            <div class="control-group">
                                                                <label class="control-label" for="inputCountry">Published Date <sup>*</sup></label>
                                                                <div class="controls">
                                                                    <input type="text" name="date" id="inputCity" placeholder="" />
                                                                </div>
                                                            </div>

                                                            <div class="control-group">
                                                                <label class="control-label" for="inputCountry">Author <sup>*</sup></label>
                                                                <div class="controls">
                                                                    <input type="text" name="author" id="inputCity" placeholder="" />
                                                                </div>
                                                            </div>

                                                            <div class="control-group">
                                                                <label class="control-label" for="inputCountry">Category <sup>*</sup></label>
                                                                <div class="controls">
                                                                    <select name="category" size="1" class="category-list">
                                                                        <option selected value="1">Fiction & Fantasy</option>
                                                                        <option selected value="2">Poetry</option>
                                                                        <option selected value="3">Music</option>
                                                                        <option selected value="4">Religious</option>
                                                                        <option selected value="5">Education & Teaching</option>
                                                                        <option selected value="6">Sport & Adventure</option>
                                                                        <option selected value="7">History</option>
                                                                    </select>
                                                                </div>
                                                            </div>

                                                        </li>

                                                        <li>   
                                                            <div class="control-group">
                                                                <label class="control-label" for="inputTelephone">Quantity <sup>*</sup></label>
                                                                <div class="controls">
                                                                    <input type="text" name="quantity" id="inputTelephone" placeholder="">
                                                                </div>
                                                            </div>

                                                            <div class="control-group">
                                                                <label class="control-label" for="inputFax">Price<sup>*</sup></label>
                                                                <div class="controls">
                                                                    <input type="text" name="price" id="inputFax" placeholder="">
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="control-group">
                                                                <div class="controls">
                                                                    <button type="submit" class="more-btn">Continue</button>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </form>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="accordion-group">
                                        <div class="accordion-heading"> <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseFifth"> Payment Information </a> </div>
                                        <div id="collapseFifth" class="accordion-body collapse">
                                            <div class="accordion-inner">
                                                <form action="<%=request.getContextPath()%>/Payment" method="post" class="form-horizontal">
                                                    <ul class="billing-form">
                                                        <li>   
                                                            <div class="control-group">
                                                                <label class="control-label" for="inputCardname">Name on Card<sup>*</sup></label>
                                                                <div class="controls">
                                                                    <input type="text" name="pcardname" id="inputCardname" placeholder="" />
                                                                    <input type="hidden" name="pusername" id="pusername" value="<%= session.getAttribute("username")%>" />
                                                                    <input type="hidden" name="pfirstname" id="pusername" value="<%= session.getAttribute("firstname")%>" />
                                                                    <input type="hidden" name="plastname" id="pusername" value="<%= session.getAttribute("lastname")%>" />
                                                                    <input type="hidden" name="pemail" id="pemail" value="<%= session.getAttribute("email")%>" />
                                                                    <input type="hidden" name="paddress" id="paddress" value="<%= session.getAttribute("address")%>" />
                                                                    <input type="hidden" name="pcity" id="pcity" value="<%= session.getAttribute("city")%>" />
                                                                    <input type="hidden" name="pphone" id="pphone" value="<%= session.getAttribute("phone")%>" />
                                                                    <input type="hidden" name="pgrandtotal" id="pusername" value="1500.25" />


                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>   
                                                            <div class="control-group">
                                                                <label class="control-label" for="inputCardtype">Credit Card Type </label>
                                                                <div class="controls">
                                                                    <select name="state" size="1">
                                                                        <option selected value="">Visa</option>
                                                                        <option selected value="">Master</option>
                                                                        <option selected value="">Platinum</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </li>                            
                                                        <li>   
                                                            <div class="control-group">
                                                                <label class="control-label" for="inputCreditcardnum">Credit Card Number  <sup>*</sup></label>
                                                                <div class="controls">
                                                                    <input type="text" name="pcardnumber" id="inputCreditcardnum" placeholder="" />
                                                                </div>
                                                            </div>

                                                        </li>
                                                        <li>
                                                            <div class="control-group w-extra">
                                                                <label class="control-label" for="inputExpirationdate">Expiration Date<sup>*</sup></label>
                                                                <div class="controls">
                                                                    <select name="pdated" size="1" class="date-list">
                                                                        <option selected value="1">1</option>
                                                                        <option selected value="2">2</option>
                                                                        <option selected value="3">3</option>
                                                                        <option selected value="4">4</option>
                                                                        <option selected value="5">5</option>
                                                                        <option selected value="6">6</option>
                                                                        <option selected value="7">7</option>
                                                                        <option selected value="8">8</option>
                                                                        <option selected value="9">9</option>
                                                                        <option selected value="">10</option>
                                                                        <option selected value="">11</option>
                                                                        <option selected value="">12</option>
                                                                        <option selected value="">13</option>
                                                                        <option selected value="">14</option>
                                                                        <option selected value="">15</option>
                                                                        <option selected value="">16</option>
                                                                        <option selected value="">17</option>
                                                                        <option selected value="">18</option>
                                                                        <option selected value="">19</option>
                                                                        <option selected value="">20</option>
                                                                        <option selected value="">21</option>
                                                                        <option selected value="">22</option>
                                                                        <option selected value="">23</option>
                                                                        <option selected value="">24</option>
                                                                        <option selected value="">25</option>
                                                                        <option selected value="">26</option>
                                                                        <option selected value="">27</option>
                                                                        <option selected value="">28</option>
                                                                        <option selected value="">29</option>
                                                                        <option selected value="">30</option>
                                                                        <option selected value="">31</option>
                                                                    </select>

                                                                    <select name="pdated" size="1" class="month-list">
                                                                        <option selected value="January">January</option>
                                                                        <option selected value="February">February</option>
                                                                        <option selected value="March">March</option>
                                                                        <option selected value="">April</option>
                                                                        <option selected value="">May</option>
                                                                        <option selected value="">June</option>
                                                                        <option selected value="">July</option>
                                                                        <option selected value="">August</option>
                                                                        <option selected value="">September</option>
                                                                        <option selected value="">October</option>
                                                                        <option selected value="">November</option>
                                                                        <option selected value="">December</option>
                                                                    </select>

                                                                    <select name="pdated" size="1" class="year-list">
                                                                        <option selected value="2025">2025</option>
                                                                        <option selected value="2024">2024</option>
                                                                        <option selected value="2023">2023</option>
                                                                        <option selected value="">2022</option>
                                                                        <option selected value="">2021</option>
                                                                        <option selected value="">2020</option>
                                                                        <option selected value="">2019</option>
                                                                        <option selected value="">2018</option>
                                                                        <option selected value="">2017</option>
                                                                        <option selected value="">2016</option>
                                                                        <option selected value="">2015</option>
                                                                        <option selected value="">2014</option>
                                                                    </select>

                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>   
                                                            <div class="control-group">
                                                                <label class="control-label" for="inputCardVerification"> Card Verification Number <sup>*</sup></label>
                                                                <div class="controls">
                                                                    <input type="text" name="pverifynumber"id="inputCardVerification" placeholder="" />
                                                                    <strong class="green-t">* Required Fields</strong>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="control-group">
                                                                <div class="controls">
                                                                    <button type="submit" class="more-btn">Continue</button>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>

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

