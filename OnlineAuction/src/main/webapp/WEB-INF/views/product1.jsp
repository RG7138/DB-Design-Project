<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product page</title>
    <link rel="stylesheet" href="css/fonts.css">
  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="css/header.css">
  <link rel="stylesheet" href="css/footer.css">
  <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

  <link rel="stylesheet" href="css/hero_banner.css">
  <link rel="stylesheet" href="css/featured_collection.css">
  <link rel="stylesheet" href="css/how_it_works.css"> 

</head>
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
                        <img src="images/headerlogo.png" alt="">
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
                            <a class="nav-link" href="Feedback.html" tabindex="-1" aria-disabled="true">feedback</a>
                        </li>
                    </ul>
                </div>

                <div class="icons">
                    <ul class="navbar-nav p-0 ms-auto">
                        <li class="nav-item">
                            <a href="login.html" class="text-black text-uppercase">
                                sign in/Register
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
    <div class="product-main">
        <div class="container">
            <!-- PRODUCT SECTION -->
            <div class="product-wrap">
                <div class="row">
                    <div class="product-left-wrap col-12 col-lg-6 col-xl-7">
                        <div   class="swiper my-3 my-sm-5 " data-swiper='{
                            "loop":true,
                            "slidesPerView":"auto",
                            "allowTouchMove": true,
                            "grabCursor":true,
                            "navigation": {
                                "nextEl": ".swiper-button-next",
                                "prevEl": ".swiper-button-prev"
                                }
                            }'>
                        <div class="swiper-wrapper">
                            <div class="swiper-slide" data-img-index=1 style="padding: 0px 82px;">
                                <img src="./images/product/shoes.jpg" alt="img not found" id='img1' class="w-100">
                            </div>
                        </div>
                        <div class="swiper-button-next icon-right-arrow fs-20 fw-bold"></div>
                        <div class="swiper-button-prev icon-left-arrow fs-20 fw-bold"></div>
                        </div>
                    </div>
                    <div class="product-right-wrap col-12 col-lg-6 col-xl-5 mt-5 mt-md-5 mt-xl-0 pt-5">
                        <h4 class="h4-secondary text-dark-coffee">Men black shoes</h4>
                        <div class="product-price-wrap d-flex justify-content-between">
                            <h5 class="fs-22 text-dark-coffee">$74</h5>
                            <div class="bid-wrap">
                                <label for="bids">No of bids</label>
                                <input type="number" placeholder="4">
                            </div>
                        </div>

                        <div class="row pt-4">
                            <div class="col-md-4"><label for="startdate">Bid Start Date</label></div>
                            <div class="col-md-8 form-group">
                                <label for="startdate">11/26/2021</label>
                            </div>
                        </div>
                        
                        <div class="row pt-4">
                            <div class="col-md-4" style="padding-top: 5px;"><label for="initialprice">Bid Price</label></div>
                            <div class="col-md-8 form-group">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                  <span class="input-group-text">$</span>
                                </div>
                                <input type="text" class="form-control" id="initialprice" aria-label="Amount (to the nearest dollar)">
                                <div class="input-group-append">
                                  <span class="input-group-text">.00</span>
                                </div>
                              </div>
                            </div>
                        </div>

                        <div class="product-bundle-wrap text-left  w-100 mt-3">
                            <a href="" class="btn btn-primary-outline w-100">submit a bid</a>
                        </div>
                        <div class="text-dark-coffee text-center my-3">or</div>
                        <div class="product-bundle-wrap text-left   w-100">
                            <a href="" class="btn btn-primary w-100">buy now</a>
                        </div>
                        <div class="user-registration-wrap mt-3">
                            <a href="login.html" class="text-decoration-none  text-capitalize fw-bold">sign in</a>
                        </div>

                        <div class="user-detail-wrap text-dark-coffee" style="padding-top: 20px;">
                            <h5>Product Description</h5>
                            <div class="user-info-wrap ">
                                <p>All sellers, or estate agents acting on their behalf, must have our 'due diligence checklist' available to prospective buyers at open for inspections. </p>
                            </div>
                        </div>

                        <div class="user-profile-wrap mt-4"  style="padding-top: 25px;">
                            <h5>Seller</h5>
                            <div class="user-image col-4 mx-auto">
                                <img src="images/User-Icon.png" alt="img not found" class="w-100">
                            </div>
                            <div class="user-detail-wrap text-center text-dark-coffee">
                                <h4>Alexia Sommers</h4>
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
            Copyright &copy;
            <script data-cfasync="false"
                src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
            <script>document.write(new Date().getFullYear());</script> All rights reserved by <span
                style="text-decoration: underline;">Online Auction Platform</span>
        </p>
    </div>
</div>
<!-- footer end -->



    <!-- js -->
    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
    <script src="/js/popper_min.js"></script>
    <script src="./js/bootstrap.js"></script>
    <script src="js/index.js"></script>
    <script src="js/product.js"></script>
</body>
</html>