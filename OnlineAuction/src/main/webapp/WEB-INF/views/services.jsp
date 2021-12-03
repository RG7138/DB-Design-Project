<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Services</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/fonts.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/header.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/footer.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/how_it_works.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/services.css">
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
                        <img src="<%=request.getContextPath() %>/images/headerlogo.png" alt="">
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
                        <div id="link-collapseOne" class="accordion-collapse collapse" aria-labelledby="link_heading_1" data-bs-parent="#mobile_navigation">
                            <div class="accordion-body">
                              <ul class="list-unstyled">
                                  <li>
                                      <a href="" class="text-decoration-none text-black text-capitalize"> sell item</a>
                                  </li>
                                  <li>
                                    <a href="" class="text-decoration-none text-black text-capitalize"> buy item </a>
                                </li>
                                <li>
                                    <a href="" class="text-decoration-none text-black text-capitalize">take a bid </a>
                                </li>
                              </ul>
                            </div>
                        </div>
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



    <!-- banner -->
    <div class="services_banner">
        <div class="image_with_text_wrapper position-relative">
            <div class="image_wrap">
                <img src="<%=request.getContextPath() %>/images/hero_banner_main.jpg" alt="" class="d-none d-lg-block w-100">
                <img src="<%=request.getContextPath() %>/images/hero_banner_mobile.jpg" alt="" class="d-lg-none w-100">
            </div>
                <div class="position-absolute text-center container text_wrap min-100 start-0 end-0 top-50 justify-content-center justify-content-lg-end translate-middle-y align-items-center d-flex">
                    <div class="section_text_wrap col-xl-4 col-xxl-6 col-lg-5 col-md-7 col-12 ">
                            <h1 class="text-black fw-bold text-capitalize m-0">
                                Our Services
                            </h1>
                        </div>
                    </div>
                </div> 
     </div>
    <!-- services -->
   <div class="services mt-6">
    <div class="container">
      <div class="mt-6 pb-6">
          <div class="card-group text-center">
                <div class=" card  border-0">
                  <div class=" pt-4 ps-3">
                    <i class=" filled_icon fas fa-user"></i>
                  </div>
                    <div class="card-body ">
                      <h5 class="fw-bold card-title m-0">Buy Products </h5>
                      <p class="fw-normal pt-2 card-text"> Online Auction platform provides customer a reliable option to buy items.</p>
                    </div>
                 
              </div>
              <div class=" card  border-0">
                <div class=" pt-4 ps-3">
                  <i class=" filled_icon fas fa-money-bill-alt"></i>

                </div>
                  <div  class="card-body">
                    <h5 class="fw-bold card-title m-0">Sell Products</h5>
                    <p class="fw-normal pt-2 card-text"> You can list new or used items and pay a final value fee only when it sells. You're protected by policies, monitoring, and our customer service team.</p>
                  </div>
              </div>
              <div class=" card border-0">
                <div class=" pt-4 ps-3">
                    <i class=" filled_icon fas fa-glass-martini"></i>     
                 </div>
                <div  class="card-body">
                  <h5 class="fw-bold  card-title m-0">Submit a Bid</h5>
                  <p class="fw-normal  pt-2 card-text">
                      Moveover to a bidding section for selected item and start bidding.
                  </p>
                </div>
              </div>
              <div class=" card border-0">
                <div class=" pt-4 ps-3">
                    <i class=" filled_icon fas fa-trophy"></i>              
                      </div>
                <div  class="card-body">
                  <h5 class="fw-bold  card-title m-0">Win a Bid</h5>
                  <p class="fw-normal  pt-2 card-text">
                      Earn and win the item and save your maximum money.
                  </p>
                </div>
              </div>
          </div>
          </div>
      </div>
  </div>
    <!-- about_us -->
    <div class="about_us"> 
        <div class="container">
          <div class="row">
            <div class="  col-xl-7  ">
              <img src="<%=request.getContextPath() %>/images/aboutus.jpg" class="w-100" alt="">
            </div>
            <div class="col-xl-5 ">
              <div class="my-4"> 
                 <h2 class="fw-bold">About us</h2>
              </div>
              <div class="d-flex pt-4">
                <i class=" filled_icon far fa-question-circle"></i>
                <div class="ps-4">
                  <h3 class="fw-bold">Why shop with us?</h3>
                  <p>Enjoy the quality product and save your money.</p>
                </div>
              </div>
              <div class="d-flex pt-4">
                <i class=" filled_icon far fa-smile"></i>
                <div class="ps-4">
                  <h3 class="fw-bold">Satisfaction guarantee</h3>
                  <p>We provide our best service to our customer</p>
                </div>
              </div>
              <div class="d-flex pt-4">
                <i class=" filled_icon far fa-life-ring"></i>     
                <div class="ps-4">
                  <h3 class="fw-bold">Custmer service</h3>
                  <p>Email us on online_auction@yahoo.com for any query</p>
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