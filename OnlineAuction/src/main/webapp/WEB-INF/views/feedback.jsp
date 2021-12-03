<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/fonts.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/header.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/footer.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
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
                            <a href="" class="text-decoration-none d-xl-none" data-bs-toggle="collapse" onclick="mobile_navigation_drawer(event)">
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

                <div class="icons">
		            <ul class="navbar-nav p-0 ms-auto">
		              <li class="nav-item">
		                <a href="/user/viewProfile" class="text-black text-uppercase">
		                  Welcome <%=user.getFname()%> <%=user.getLname()%>
		                </a>
		              </li>
		            </ul>
		          </div>      

            </div>
        </nav>
    </div>
    <!-- main header end -->



    <!-- mobile navigation start -->
    <div class="mobile_navigation">
        <div class="navigation_icon d-flex justify-content-between align-items-center border-bottom py-3 px-3 pb-3">
            <div class="logo">
                <a href="">
                    <img src="images/headerlogo.png" alt="">
                </a>
            </div>
            <div class="close">
                <a href="" class="text-decoration-none text-black" onclick="mobile_close(event)"><i class="fas fa-times"></i></a>
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
                            <a class="accordion-button collapsed text-uppercase text-black text-decoration-none" type="button" data-bs-toggle="collapse" data-bs-target="#link-collapseOne" aria-expanded="false" aria-controls="link-collapseOne">
                                services
                            </a>
                        </h6>
                    </div>
                </div>
            </div>
        </li>
    </ul>
</div>
<!-- mobile navigation end -->
</header>
<!-- header end -->


<div class="col-sm-8 col-md-6 col-lg-4 p-6 mx-auto text-center bg-white position-relative mt-5">
    <ul class="nav nav-pills mb-3 mx-auto" id="pills-tab" role="tablist">
        <li class="nav-item" role="presentation">
            <button class="nav-link active" id="pills-login-tab" data-bs-toggle="pill" data-bs-target="#pills-login"
            type="button" role="tab" aria-controls="pills-login" aria-selected="true">Feedback for Admin</button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="pills-signup-tab" data-bs-toggle="pill" data-bs-target="#pills-signup"
            type="button" role="tab" aria-controls="pills-signup" aria-selected="false">Feedback for Product</button>
        </li>
    </ul>
    <div class="tab-content" id="pills-tabContent">
        <div class="tab-pane fade show active" id="pills-login" role="tabpanel" aria-labelledby="pills-login-tab">
            <div class="site-section mt-3">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 mx-auto text-center bg-white position-relative  my-4">
                            <h2>Get In Touch</h2>
                            <div class="row" style="margin-bottom: 15px;">
                                <div class="col-md-6 form-group">
                                    <input type="text" id="fname" class="form-control form-control" placeholder="First Name">
                                </div>
                                <div class="col-md-6 form-group">
                                    <input type="text" id="lname" class="form-control form-control"  placeholder="Last Name">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <input type="text" id="eaddress" class="form-control form-control"  placeholder="Email">
                                </div>
                                <div class="col-md-6 form-group">
                                    <input type="text" id="tel" class="form-control form-control"  placeholder="Phone">
                                </div>
                            </div>
                            <div class="row"  style="margin-top: 15px;">
                                <div class="col-md-12 form-group" > 
                                    <textarea name="" id="message" cols="30" rows="10" class="form-control" placeholder="Message"></textarea>
                                </div>
                            </div>
                            <div class="row"  style="margin-top: 15px;">
                                <div class="col-12"  style="text-align: center;">
                                    <input type="submit" value="Send Message" class="btn btn-primary px-5"> 
                                </div>
                            </div>
                        </div>

                        <div class="mx-auto text-center bg-white position-relative my-3">
                            <div class="bg-white">
                                <h3 class="mb-3 text-black">Contact Info</h3>
                                <p class="mb-0 font-weight-bold text-black">Address</p>
                                <p class="mb-4 text-black">800 W Campbell Rd, Richardson, TX 75080, USA</p>
                                <p class="mb-0 font-weight-bold text-black">Phone</p>
                                <p class="mb-4"><a href="#">+1 499 917 1890</a></p>
                                <p class="mb-0 font-weight-bold text-black">Email Address</p>
                                <p class="mb-0"><a href="#">onlineauction@yahoo.com</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tab-pane fade" id="pills-signup" role="tabpanel" aria-labelledby="pills-signup-tab">
            <div class="site-section mt-3">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 mx-auto text-center bg-white position-relative  my-4">
                            <div class="row" style="margin-bottom: 15px;">
                                <div class="col-md-6 form-group">
                                    <input type="text" id="fname" class="form-control form-control" placeholder="First Name">
                                </div>
                                <div class="col-md-6 form-group">
                                    <input type="text" id="lname" class="form-control form-control"  placeholder="Last Name">
                                </div>
                            </div>
                            <div class="row" style="margin-bottom: 15px;">
                                <div class="col-md-6 form-group">
                                    <input type="text" id="eaddress" class="form-control form-control"  placeholder="Email">
                                </div>
                                <div class="col-md-6 form-group">
                                    <input type="text" id="tel" class="form-control form-control"  placeholder="Phone">
                                </div>
                            </div>
                            <div class="row" style="margin-bottom: 15px;">
                                <div class="col-md-12 form-group">
                                    <input type="text" id="title" class="form-control form-control" placeholder="Product Name">
                                </div>
                            </div>
                            <div class="row" style="margin-bottom: 15px;">
                                <div class="col-md-12 form-group">
                                    <select id="category" class="form-control">
                                        <option value="none" selected disabled hidden>Select a Category</option>
                                        <option id="sports">Sports</option>
                                        <option id="decor">Decor</option>
                                        <option id="electronics">Electronics</option>
                                        <option id="clothing">Clothing</option>
                                        <option id="stationary">Stationary</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row" style="margin-top: 15px;">
                                <div class="col-md-12 form-group">
                                    <select id="subcategory" class="form-control">
                                        <option value="none" selected disabled hidden>Select a Sub-Category</option>
                                        <option id="sportswear">Sports Wear</option>
                                        <option id="furniture">Furniture</option>
                                        <option id="phones">Phones</option>
                                        <option id="lamps">Lamps</option>
                                        <option id="shirts">Shirts</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row"  style="margin-top: 15px;">
                                <div class="col-md-12 form-group" > 
                                    <textarea name="" id="message" cols="30" rows="10" class="form-control" placeholder="Message"></textarea>
                                </div>
                            </div>
                            <div class="row"  style="margin-top: 15px;">
                                <div class="col-md-4" style="padding-top: 5px;"><label for="file">Image</label></div>
                                <div class="col-md-8 form-group"><input type="file" id="file" class="form-control form-control"></div>
                            </div>  
                            <div class="row"  style="margin-top: 15px;">
                                <div class="col-12"  style="text-align: center;">
                                    <input type="submit" value="Send Message" class="btn btn-primary px-5"> 
                                </div>
                            </div>
                        </div>
                        
                        <div class="mx-auto text-center bg-white position-relative my-3">
                            <div class="bg-white">
                                <h3 class="mb-3 text-black">Contact Info</h3>
                                <p class="mb-0 font-weight-bold text-black">Address</p>
                                <p class="mb-4 text-black">800 W Campbell Rd, Richardson, TX 75080, USA</p>
                                <p class="mb-0 font-weight-bold text-black">Phone</p>
                                <p class="mb-4"><a href="#">+1 499 917 1890</a></p>
                                <p class="mb-0 font-weight-bold text-black">Email Address</p>
                                <p class="mb-0"><a href="#">onlineauction@yahoo.com</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- footer start -->
<div class="footer">
  <div class="copyright">
    <p>
      Copyright &copy;<script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All rights reserved by <span style="text-decoration: underline;">Online Auction Platform</span>
  </p>
</div>
</div> 
<!-- footer end -->
<script src="<%=request.getContextPath() %>/js/index.js"></script>
<script src="<%=request.getContextPath() %>/js/header.js"></script>
</body>

</html>