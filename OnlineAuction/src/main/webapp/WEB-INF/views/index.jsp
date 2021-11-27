<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home</title>
  <link rel="stylesheet" href="<%=request.getContextPath() %>/css/fonts.css">
  <link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.css">
  <link rel="stylesheet" href="<%=request.getContextPath() %>/css/header.css">
  <link rel="stylesheet" href="<%=request.getContextPath() %>/css/footer.css">
  <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

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
                <a class="nav-link" aria-current="page" href="index.html">home</a>
              </li>
              <li class="nav-item hotel_bedding">
                <a class="nav-link" href="buy.html">buy</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="sell.html" tabindex="-1" aria-disabled="true">sell</a>
              </li>
              <li class="nav-item position-relative services">
                <a class="nav-link" href="services.html" tabindex="-1" aria-disabled="true">services</a>
              </li>
              <li class="nav-item ">
                <a class="nav-link" href="Feedback.html" tabindex="-1" aria-disabled="true">Feedback</a>
              </li>
            </ul>
          </div>

          <div class="icons">
            <ul class="navbar-nav p-0 ms-auto">
              <li class="nav-item">
                <a href="login.html" class="text-black text-uppercase">
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
              <h6 class="fw-medium ">contact us</h6>
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


  <!-- section start -->
  <section>
    <!-- hero banner start -->
    <div class="hero_banner">
      <div class="image_with_text_wrapper position-relative">
        <div class="image_wrap">
          <img src="<%=request.getContextPath() %>/images/hero_banner_main.jpg" alt="" class="d-none d-lg-block w-100">
          <img src="<%=request.getContextPath() %>/images/hero_banner_mobile.jpg" alt="" class="d-lg-none w-100">
        </div>
        <div class="position-absolute text-center container text_wrap min-100 start-0 end-0 top-50 justify-content-center justify-content-lg-end translate-middle-y align-items-center d-flex">
          <div class="section_text_wrap col-xl-4 col-xxl-6 col-lg-5 col-md-7 col-12 ">
            <h2 class="text-black fw-bold text-capitalize m-0">
              online auction platform
            </h2>
            <h5 class="text-black text-capitalize fw-regular m-0 pt-3">
              best place to buy, sell and save
            </h5>
            <div class="bottom-banner-btn-wrap mt-5">
              <a href="buy.html" class="btn btn-primary">let’s get started</a>
            </div>
          </div>
        </div>
      </div> 
    </div>
    <!-- hero banner end -->

    <!-- fetured collection start -->
    <div class="featured-collection-main">
      <div class="container">
        <div class="heading text-center">
          <h4 class=" fst-italic fw-semi-bold h4-secondary text-capitalize">auctions</h4>
          <h2 class=" fw-bold text-capitalize">items in auction</h2>
        </div>
        <div class="product-main">
          <div class="product-links">
            <div class="product-wrap position-relative">
              <!-- SWIPER SLIDER -->
              <div   class="swiper my-3 my-sm-5 " data-swiper='{
              "loop":true,
              "slidesPerView":"auto",
              "allowTouchMove": true,
              "grabCursor":true,
              "navigation": {
              "nextEl": ".swiper-button-next",
              "prevEl": ".swiper-button-prev"
            },
            "breakpoints": {
            "576": {
            "slidesPerView": 2,
            "spaceBetween": 20
          },
          "992": {
          "slidesPerView": 3,
          "spaceBetween": 30
        },
        "1024": {
        "slidesPerView": 4,
        "spaceBetween": 40
      }
    }
  }'>
  <div class="swiper-wrapper">
    <div class=" swiper-slide position-relative">
      <div class="product-img">
        <a href="product1.html"><img src="<%=request.getContextPath() %>/images/p1.jpg" alt="img not found " class="w-100" ></a>
      </div>
      <div class="product-detail mt-3">
        <a href="product1.html" class=" fw-bold text-decoration-none text-capitalize text-dark-coffee"><h5>black shoes</h5></a>
        <h6 class=" fs-13 fw-normal text-uppercase">shoes</h6>
      </div>
      <a href="product1.html" class="btn btn-primary-outline">submit a bid</a>
      <span class="badge  bg-cream-blue text-regal-blue position-absolute">74$</span>
    </div>
    <div class=" swiper-slide position-relative">
      <div class="product-img">
        <a href="product1.html"><img src="<%=request.getContextPath() %>/images/p2.jpg" alt="img not found " class="w-100" ></a>
      </div>
      <div class="product-detail mt-3">
        <a href="product1.html" class=" fw-bold text-decoration-none text-capitalize text-dark-coffee"><h5>women hangbag</h5></a>
        <h6 class=" fs-13 fw-normal text-uppercase">handbags</h6>
      </div>
      <a href="product1.html" class="btn btn-primary-outline">submit a bid</a>
      <span class="badge  bg-cream-blue text-regal-blue position-absolute">95$</span>
    </div>
    <div class=" swiper-slide position-relative">
      <div class="product-img">
        <a href="product1.html"><img src="<%=request.getContextPath() %>/images/p3.jpg" alt="img not found " class="w-100" ></a>
      </div>
      <div class="product-detail mt-3">
        <a href="product1.html" class=" fw-bold text-decoration-none text-capitalize text-dark-coffee"><h5>men jacket</h5></a>
        <h6 class=" fs-13 fw-normal text-uppercase">jackets</h6>
      </div>
      <a href="product1.html" class="btn btn-primary-outline">submit a bid</a>
      <span class="badge  bg-cream-blue text-regal-blue position-absolute">78$</span>
    </div>
    <div class=" swiper-slide position-relative">
      <div class="product-img">
        <a href="product1.html"><img src="<%=request.getContextPath() %>/images/p4.jpg" alt="img not found " class="w-100" ></a>
      </div>
      <div class="product-detail mt-3">
        <a href="product1.html" class=" fw-bold text-decoration-none text-capitalize text-dark-coffee"><h5>men sunglasses</h5></a>
        <h6 class=" fs-13 fw-normal text-uppercase">sunglasses</h6>
      </div>
      <a href="product1.html" class="btn btn-primary-outline">submit a bid</a>
      <span class="badge  bg-cream-blue text-regal-blue position-absolute">88$</span>
    </div>
    <div class=" swiper-slide position-relative">
      <div class="product-img">
        <a href="product1.html"><img src="<%=request.getContextPath() %>/images/p5.jpg" alt="img not found " class="w-100" ></a>
      </div>
      <div class="product-detail mt-3">
        <a href="product1.html" class=" fw-bold text-decoration-none text-capitalize text-dark-coffee"><h5>ear phones</h5></a>
        <h6 class=" fs-13 fw-normal text-uppercase">gadgets</h6>
      </div>
      <a href="product1.html" class="btn btn-primary-outline">submit a bid</a>
      <span class="badge  bg-cream-blue text-regal-blue position-absolute">45$</span>
    </div>
    <div class=" swiper-slide position-relative">
      <div class="product-img">
        <a href="product1.html"><img src="<%=request.getContextPath() %>/images/p6.jpg" alt="img not found " class="w-100" ></a>
      </div>
      <div class="product-detail mt-3">
        <a href="product1.html" class=" fw-bold text-decoration-none text-capitalize text-dark-coffee"><h5>cellieng lamp</h5></a>
        <h6 class=" fs-13 fw-normal text-uppercase">home decore</h6>
      </div>
      <a href="product1.html" class="btn btn-primary-outline">submit a bid</a>
      <span class="badge  bg-cream-blue text-regal-blue position-absolute">25$</span>
    </div>
    <div class=" swiper-slide position-relative">
      <div class="product-img">
        <a href="product1.html"><img src="<%=request.getContextPath() %>/images/p7.jpg" alt="img not found " class="w-100" ></a>
      </div>
      <div class="product-detail mt-3">
        <a href="product1.html" class=" fw-bold text-decoration-none text-capitalize text-dark-coffee"><h5>zaveri pearls</h5></a>
        <h6 class=" fs-13 fw-normal text-uppercase">jewellery</h6>
      </div>
      <a href="product1.html" class="btn btn-primary-outline">submit a bid</a>
      <span class="badge  bg-cream-blue text-regal-blue position-absolute">50$</span>
    </div>
    <div class=" swiper-slide position-relative">
      <div class="product-img">
        <a href="product1.html"><img src="<%=request.getContextPath() %>/images/p8.jpg" alt="img not found " class="w-100" ></a>
      </div>
      <div class="product-detail mt-3">
        <a href="product1.html" class=" fw-bold text-decoration-none text-capitalize text-dark-coffee"><h5>samsung smart watch</h5></a>
        <h6 class=" fs-13 fw-normal text-uppercase">smart watches</h6>
      </div>
      <a href="product1.html" class="btn btn-primary-outline">submit a bid</a>
      <span class="badge  bg-cream-blue text-regal-blue position-absolute">50$</span>
    </div>
  </div>
</div>
<div class="swiper-button-next icon-right-arrow fs-20 fw-bold"></div>
<div class="swiper-button-prev icon-left-arrow fs-20 fw-bold"></div>
</div>
</div>
</div> 
</div>
</div>
<!-- fetured collection end -->


<!-- how it works start -->
<div class="how_it_works">
  <div class="container">
    <div class=" text-center">
      <h3 class="fw-bold  pt-5">
        Principles Of Operation
      </h3>
    </div>
    <div class="mt-6 pb-6">
      <div class="card-group text-center">
        <div class=" card  border-0">
          <div class=" pt-4">
            <i class=" filled_icon fas fa-user"></i>
          </div>
          <div class="card-body ">
            <h5 class="fw-bold card-title m-0">Register</h5>
            <p class="fw-normal pt-2 card-text"> Register youself with online auction platform and use the best service for buying & selling items.</p>
          </div>

        </div>
        <div class=" card  border-0">
          <div class=" pt-4">
            <i class=" filled_icon fas fa-gavel"></i>
          </div>
          <div  class="card-body">
            <h5 class="fw-bold card-title m-0">Buy | sell</h5>
            <p class="fw-normal pt-2 card-text"> Add an item to sell or buy an item from the selected list.</p>
          </div>
        </div>
        <div class=" card border-0">
          <div class=" pt-4">
            <i class=" filled_icon fas fa-glass-martini"></i>     
          </div>
          <div  class="card-body">
            <h5 class="fw-bold  card-title m-0">Take a bid</h5>
            <p class="fw-normal  pt-2 card-text">
              Moveover to a bidding section for selected item and start bidding.
            </p>
          </div>
        </div>
        <div class=" card border-0">
          <div class=" pt-4">
            <i class=" filled_icon fas fa-trophy"></i>              
          </div>
          <div  class="card-body">
            <h5 class="fw-bold  card-title m-0">Earn</h5>
            <p class="fw-normal  pt-2 card-text">
              Earn and win the item and save your maximum money.
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- how it works end -->



<!-- about_us strat -->
<div class="about_us"> 
  <div class="container">
    <div class="row">
      <div class="  col-xl-7  px-6">
        <img src="<%=request.getContextPath() %>/images/aboutus.jpg" class="w-100" alt="">
      </div>
      <div class="col-xl-5 ">
        <div class="my-4"> 
          <!-- <h4 class=" fw-semi-bold fst-italic pb-2"> Featured Hotel Bedding</h4> -->
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
<!-- about as end -->
</section>
<!-- section end -->

<!-- footer start -->
<div class="footer">
  <div class="copyright">
    <p>
      Copyright &copy;<script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All rights reserved by <span style="text-decoration: underline;">Online Auction Platform</span>
    </p>
  </div>
</div> 
<!-- footer end -->


<script src="<%=request.getContextPath() %>/js/header.js"></script>
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
<script src="<%=request.getContextPath() %>/js/index.js"></script>
</body>
</html>