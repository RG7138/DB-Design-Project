<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile page</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/fonts.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/header.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/footer.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />

    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/hero_banner.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/featured_collection.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/how_it_works.css">

</head>
<%@ page import="com.auction.OnlineAuction.model.User" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%
	HttpSession session1 = request.getSession(false);
	User user = null;
	if(session1.getAttribute("user")!=null){
		
		user = (User) session1.getAttribute("user");
	}
	
%>
<body>
    <!-- header strat -->
    <header id="header" class="box-shadow">
        <!-- main header strat -->
        <div class="main_header">
            <nav class="navbar navbar-expand-xl p-0  px-3 py-3 py-xl-0">
                <div class="container-fluid">
                    <div class="burger_menu p-0">
                        <ul class="list-unstyled d-flex p-0 m-0">
                            <li>
                                <a href="" class="text-decoration-none d-xl-none" data-bs-toggle="collapse"
                                    onclick="mobile_navigation_drawer(event)">
                                    <i class="fas fa-bars text-black"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="logo py-2">
                        <a href="">
                            <img src="<%=request.getContextPath() %>/images/headerlogo.png" alt="">
                        </a>
                    </div>
                    <div class="navigation collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 p-0 text-uppercase">
                            <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="/user/home">home</a>
                            </li>
                            <%if(user.getRole().equals("buyer")){ %>
				              <li class="nav-item hotel_bedding">
				                <a class="nav-link" href="/buyer/buy">buy</a>
				              </li>
				              <%} if(user.getRole().equals("seller")){%>
				              <li class="nav-item">
				                <a class="nav-link" href="/seller/sell" tabindex="-1" aria-disabled="true">sell</a>
				              </li>
				            <%} %>
                            <li class="nav-item position-relative services">
                                <a class="nav-link" href="/auction/service" tabindex="-1" aria-disabled="true">services</a>

                            </li>
                            <%if(user.getRole().equals("buyer")){ %>
				              <li class="nav-item ">
                                <a class="nav-link" href="/auction/feedback" tabindex="-1" aria-disabled="true">feedback</a>
                            </li>
				              <%} if(user.getRole().equals("seller")){%>
				              <li class="nav-item ">
                                <a class="nav-link" href="/feedback/sellerFeedbacks" tabindex="-1" aria-disabled="true">feedback</a>
                            </li>
				            <%} %>
                            <%if(user.getRole().equals("buyer")){ %>
				              <li class="nav-item hotel_bedding">
				                <a class="nav-link" href="/bids/getBids">My Bids</a>
				              </li>
				              <%} if(user.getRole().equals("seller")){%>
				              <li class="nav-item">
				                <a class="nav-link" href="/auctions/getAuctions" tabindex="-1" aria-disabled="true">My Auctions</a>
				              </li>
				            <%} %>
                            <li class="nav-item ">
                                <a class="nav-link" href="/auction/logout" tabindex="-1" aria-disabled="true">Logout</a>
                            </li>
                        </ul>
                    </div>

                    <!-- <div class="icons">
                        <ul class="navbar-nav p-0 ms-auto">
                            <li class="nav-item">
                                <a href="login.html" class="text-black text-uppercase">
                                    sign in/Register
                                </a>
                            </li>
                        </ul>
                    </div> -->

                </div>
            </nav>
        </div>
        <!-- main header end -->



        <!-- mobile navigation start -->
        <div class="mobile_navigation">
            <div class="navigation_icon d-flex justify-content-between align-items-center border-bottom py-3 px-3 pb-3">
                <div class="logo">
                    <a href="">
                        <img src="<%=request.getContextPath() %>/images/headerlogo.png" alt="">
                    </a>
                </div>
                <div class="close">
                    <a href="" class="text-decoration-none text-black" onclick="mobile_close(event)"><i
                            class="fas fa-times"></i></a>
                </div>
            </div>


            <ul class="list-unstyled">
                <li>
                    <div class="px-2 border-top py-4">
                        <a href="" class="text-uppercase text-decoration-none text-black ">
                            <h6 class="fw-medium ">home</h6>
                        </a>
                    </div>
                </li>
                <li>
                    <div class="px-2 py-1 ">
                        <a href="" class="text-uppercase text-decoration-none text-black">
                            <h6 class="fw-medium">buy</h6>
                        </a>
                    </div>
                </li>
                <li>
                    <div class="px-2  py-4">
                        <a href="" class="text-uppercase text-decoration-none text-black ">
                            <h6 class="fw-medium ">sell</h6>
                        </a>
                    </div>
                </li>
                <li>
                    <div class="accordion accordion-flush" id="mobile_navigation">
                        <div class="accordion-item">
                            <h6 class="accordion-header" id="link_heading_1">
                                <a class="accordion-button collapsed text-uppercase text-black text-decoration-none"
                                    type="button" data-bs-toggle="collapse" data-bs-target="#link-collapseOne"
                                    aria-expanded="false" aria-controls="link-collapseOne">
                                    services
                                </a>
                            </h6>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="px-2 py-4">
                        <a href="" class="text-uppercase text-decoration-none text-black ">
                            <h6 class="fw-medium ">feedback</h6>
                        </a>
                    </div>
                </li>
                <li>
                    <div class="px-2 py-1 ">
                        <a href="" class="text-uppercase text-decoration-none text-black">
                            <h6 class="fw-medium">sell</h6>
                        </a>
                    </div>
                </li>
            </ul>
        </div>
        <!-- mobile navigation end -->
    </header>
    <!-- header end -->


    <!-- PRODUCT MAIN SECTION -->
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <div class="user-profile-wrap mt-4" style="padding-top: 25px;">
        <h1 style="text-align: center;">Profile</h1>
        <div class="user-image text-center mx-auto">
            <img src="<%=request.getContextPath() %>/images/User-Icon.png" alt="img not found" style="width: 10%;">
        </div>
    </div>
    <div class="col-sm-8 col-md-6 col-lg-4 p-6 mx-auto text-center bg-white position-relative mt-5">
        <div class="tab-content" id="pills-tabContent">
            <div class="tab-pane fade show active" id="pills-login" role="tabpanel" aria-labelledby="pills-login-tab">
            	
                <% if(user.getRole().equals("buyer")){ %>
                <form:form method="post" action="/buyer/updateProfile" id="customer_login" accept-charset="UTF-8" modelAttribute="data">
                    <!-- First Name -->
                    <form:input type="hidden" path="buyerId"/>
                    <form:input type="hidden" path="user.userId"/>
                    <div class="row pt-4">
                        <div class="col-md-3"><label style="margin-top: 7px;">First Name</label></div>
                        <div class="col-md-9 form-group">
                            <form:input type="text" id="registerCustomerFirstName" name="customer[first_name]"
                        aria-label="first name" placeholder="First Name" required="required" class="form-control mr-2"
                        style="margin-right: 6px; margin-bottom: 15px;" path="user.fname" disabled="true"/>
                        </div>
                    </div>
                    <!-- Last Name -->
                    <div class="row pt-4">
                        <div class="col-md-3"><label style="margin-top: 7px;">Last Name</label></div>
                        <div class="col-md-9 form-group">
                            
                    <form:input type="text" id="customerLastName" name="customer[last_name]" aria-label="last name"
                    placeholder="Last Name" required="required" class="form-control ml-2"
                    style="margin-bottom: 15px;" path="user.lname" disabled="true"/>
                        </div>
                    </div>
                    <!-- Email -->
                    <div class="row pt-4">
                        <div class="col-md-3"><label style="margin-top: 7px;">Email</label></div>
                        <div class="col-md-9 form-group">
                            <form:input type="email" id="customerEmail" name="customer[email]" aria-label="email" placeholder="Email"
                            autocorrect="off" autocapitalize="off" required="required" class="form-control"
                            style="margin-bottom: 15px;" path="user.email" disabled="true"/>
                        </div>
                    </div>
                    
                    <!-- Address -->
                    <div class="row pt-4">
                        <div class="col-md-3"><label style="margin-top: 7px;">Address</label></div>
                        <div class="col-md-9 form-group">
                            <form:textarea rows="3" type="text" id="customerAddress" name="customer[address]" aria-label="address"
                            placeholder="Address" autocorrect="off" autocapitalize="off" required="required"
                            class="form-control" style="margin-bottom: 15px;" path="user.address"></form:textarea>
                        </div>
                    </div>
                    
                    
                    <!-- Shipping Address -->
                    <div class="row pt-4">
                       <div class="col-md-3"><label style="margin-top: 7px;">Shipping Address</label></div>
                       <div class="col-md-9 form-group">
                           <form:textarea rows="3" type="text" id="customerShippingAddress" name="customer[address]" aria-label="shipping address"
                           placeholder="Shipping Address" autocorrect="off" autocapitalize="off" required="required"
                           class="form-control" style="margin-bottom: 15px;" path="shippingAddress"></form:textarea>
                       </div>
                   </div>
                    
                   
                    <!-- Phone Number -->
                    <div class="row pt-4">
                        <div class="col-md-3"><label style="margin-top: 7px;">Phone</label></div>
                        <div class="col-md-9 form-group">
                            <form:input type="tel" maxlength="10" id="customerNumber" name="customer[number]" aria-label="number"
                            placeholder="Phone Number" autocorrect="off" autocapitalize="off" required="required"
                            class="form-control" style="margin-bottom: 15px;" path="user.phoneNumber"/>
                        </div>
                    </div>
                    
                    <!-- Password -->
                    <div class="row pt-4">
                        <div class="col-md-3"><label style="margin-top: 7px;">Password</label></div>
                        <div class="col-md-9 form-group">
                            <form:input type="password" id="customerPassword" name="customer[password]" aria-label="password"
                            placeholder="Password" autocorrect="off" autocapitalize="off" required="required"
                            class="form-control" style="margin-bottom: 15px;" path="user.password"/>
                        
                        </div>
                    </div>
                    <!-- Confirm Password -->
                    <div class="row pt-4">
                        <div class="col-md-3"><label style="margin-top: 7px;">Confirm Password</label></div>
                        <div class="col-md-9 form-group">
                            <input type="password" id="customerConfirmPassword" name="customer[confirmpassword]"
                            aria-label="ConfirmPassword" placeholder="Confirm Password" autocorrect="off"
                            autocapitalize="off" required="required" class="form-control" style="margin-bottom: 15px;"  >
        
                        </div>
                    </div>

                    
                    <button type = "submit" class="btn btn-primary btn-block mt-3">Update</button>
            </form:form>
                    <%} %>
                    <% if(user.getRole().equals("seller")){ %>
                    
                    <form:form method="post" action="/seller/updateProfile" id="customer_login" accept-charset="UTF-8" modelAttribute="data">
                    <form:input type="hidden" path="sellerId"/>
                    <form:input type="hidden" path="user.userId"/>
                    <!-- First Name -->
                    <div class="row pt-4">
                        <div class="col-md-3"><label style="margin-top: 7px;">First Name</label></div>
                        <div class="col-md-9 form-group">
                            <form:input type="text" id="registerCustomerFirstName" name="customer[first_name]"
                        aria-label="first name" placeholder="First Name" required="required" class="form-control mr-2"
                        style="margin-right: 6px; margin-bottom: 15px;" path="user.fname" disabled="true"/>
                        </div>
                    </div>
                    <!-- Last Name -->
                    <div class="row pt-4">
                        <div class="col-md-3"><label style="margin-top: 7px;">Last Name</label></div>
                        <div class="col-md-9 form-group">
                            
                    <form:input type="text" id="customerLastName" name="customer[last_name]" aria-label="last name"
                    placeholder="Last Name" required="required" class="form-control ml-2"
                    style="margin-bottom: 15px;" path="user.lname" disabled="true"/>
                        </div>
                    </div>
                    <!-- Email -->
                    <div class="row pt-4">
                        <div class="col-md-3"><label style="margin-top: 7px;">Email</label></div>
                        <div class="col-md-9 form-group">
                            <form:input type="email" id="customerEmail" name="customer[email]" aria-label="email" placeholder="Email"
                            autocorrect="off" autocapitalize="off" required="required" class="form-control"
                            style="margin-bottom: 15px;" path="user.email" disabled="true"/>
                        </div>
                    </div>
                    
                    <!-- Address -->
                    <div class="row pt-4">
                        <div class="col-md-3"><label style="margin-top: 7px;">Address</label></div>
                        <div class="col-md-9 form-group">
                            <form:textarea rows="3" type="text" id="customerAddress" name="customer[address]" aria-label="address"
                            placeholder="Address" autocorrect="off" autocapitalize="off" required="required"
                            class="form-control" style="margin-bottom: 15px;" path="user.address"></form:textarea>
                        </div>
                    </div>
                    
                    
                    <!-- Routing Number -->

                    <div class="row pt-4">
                        <div class="col-md-3"><label style="margin-top: 7px;">Routing No.</label></div>
                        <div class="col-md-9 form-group">
                            <form:input type="text" id="routing" name="routing" aria-label="routing" placeholder="Routing Number"
                        required="required" class="form-control ml-2" style="margin-bottom: 15px;" path="routingNumber"/>
                        </div>
                    </div>
                    

                                     
                    <!-- Account Number -->
                    <div class="row pt-4">
                        <div class="col-md-3"><label style="margin-top: 7px;">Account No.</label></div>
                        <div class="col-md-9 form-group">
                            <form:input type="text" id="account" name="account" aria-label="account" placeholder="Account Number"
                            required="required" class="form-control ml-2" style="margin-bottom: 15px;" path="accountNumber"/>
                        </div>
                    </div>
                    
                    <!-- Phone Number -->
                    <div class="row pt-4">
                        <div class="col-md-3"><label style="margin-top: 7px;">Phone</label></div>
                        <div class="col-md-9 form-group">
                            <form:input type="tel" maxlength="10" id="customerNumber" name="customer[number]" aria-label="number"
                            placeholder="Phone Number" autocorrect="off" autocapitalize="off" required="required"
                            class="form-control" style="margin-bottom: 15px;" path="user.phoneNumber"/>
                        </div>
                    </div>
                    
                    <!-- Password -->
                    <div class="row pt-4">
                        <div class="col-md-3"><label style="margin-top: 7px;">Password</label></div>
                        <div class="col-md-9 form-group">
                            <form:input type="password" id="customerPassword" name="customer[password]" aria-label="password"
                            placeholder="Password" autocorrect="off" autocapitalize="off" required="required"
                            class="form-control" style="margin-bottom: 15px;" path="user.password"/>
                        
                        </div>
                    </div>
                    <!-- Confirm Password -->
                    <div class="row pt-4">
                        <div class="col-md-3"><label style="margin-top: 7px;">Confirm Password</label></div>
                        <div class="col-md-9 form-group">
                            <input type="password" id="customerConfirmPassword" name="customer[confirmpassword]"
                            aria-label="ConfirmPassword" placeholder="Confirm Password" autocorrect="off"
                            autocapitalize="off" required="required" class="form-control" style="margin-bottom: 15px;"  >
        
                        </div>
                    </div>

                    
                    <button type = "submit" class="btn btn-primary btn-block mt-3">Update</button>
            </form:form>
                    <%} %>
                   
                    
            </div>
        </div>
    </div>
    <!-- footer start -->
    <div class="footer">
        <div class="copyright">
            <p>
                Copyright &copy;
                
                <script>document.write(new Date().getFullYear());</script> All rights reserved by <span
                    style="text-decoration: underline;">Online Auction Platform</span>
            </p>
        </div>
    </div>
    <!-- footer end -->



    <!-- js -->
    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
    
    <script src="<%=request.getContextPath() %>/js/index.js"></script>
    <script src="<%=request.getContextPath() %>/js/header.js"></script>
<script type="text/javascript">
    function validatePwd() {
        var password = document.getElementById("customerPassword").value;
        var confirmPassword = document.getElementById("customerConfirmPassword").value;
        if (password != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
    }
</script>
</body>

</html>