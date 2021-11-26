<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/fonts.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
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
    <link rel="stylesheet" href="css/buy.css">
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
                                <a href="" class="text-decoration-none d-xl-none" data-bs-toggle="collapse"
                                    onclick="mobile_navigation_drawer(event)">
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
                            <div id="link-collapseOne" class="accordion-collapse collapse"
                                aria-labelledby="link_heading_1" data-bs-parent="#mobile_navigation">
                                <div class="accordion-body">
                                    <ul class="list-unstyled">
                                        <li>
                                            <a href="" class="text-decoration-none text-black text-capitalize"> sell
                                                item</a>
                                        </li>
                                        <li>
                                            <a href="" class="text-decoration-none text-black text-capitalize"> buy item
                                            </a>
                                        </li>
                                        <li>
                                            <a href="" class="text-decoration-none text-black text-capitalize">take a
                                                bid </a>
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

    <!-- collection banner start -->
    <div class="collection_banner">
        <div class="image_with_text_wrapper position-relative">
            <div class="image_wrap">
                <img src="images/laptop-shopping-bags-online-shopping-concept.jpg" alt=""
                    class="d-none d-lg-block w-100">
                <img src="images/hero_banner_mobile.jpg" alt="" class="d-lg-none w-100">
            </div>
            <div
                class="position-absolute text-center container text_wrap min-100 start-0 end-0 top-50 justify-content-start translate-middle-y align-items-center d-flex">
                <div class="section_text_wrap col-xl-4 col-xxl-6 col-lg-5 col-md-7 col-12 ">
                    <h2 class="text-black fw-bold text-capitalize m-0">
                        Buy, sell, bid and save
                    </h2>
                    <h5 class="text-black text-capitalize fw-regular m-0 pt-3">
                        best place to buy, sell and save
                    </h5>
                    <div class="bottom-banner-btn-wrap mt-5">
                        <a href="Login.html" class="btn btn-primary">register</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- collection banner end -->

    <!-- main collection-list section start -->
    <div class="list_collection_wrapper">
        <!-- collection product list start -->
        <div class="collection_product_list_wrap mt-7">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 d-none d-lg-block">
                        <div class="w-100 ">
                            <h6 class="f-15 text-capitalize border-bootom-1 pb-3">filter by:</h6>
                        </div>
                        <div class="accordion accordion-flush" id="accordionFlushExample">
                            <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <a class="text-black" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#flush-collapseOne" aria-expanded="false"
                                        aria-controls="flush-collapseOne">
                                        <h5 class="text-uppercase text-black pt-2 pb-4">
                                            Categories
                                        </h5>
                                    </a>
                                </h2>
                                <ul class="list-unstyled text-capitalize">
                                    <li>
                                        <label for="categories" class=" pb-2"><input type="checkbox" id="category"
                                                value=""> sports
                                        </label>
                                    </li>
                                    <li>
                                        <label for="categories" class="pb-2"><input type="checkbox" id="category"
                                                value=""> decor
                                        </label>
                                    </li>
                                    <li>
                                        <label for="categories" class="pb-2"><input type="checkbox" id="category"
                                                value=""> electronics
                                        </label>
                                    </li>
                                    <li>
                                        <label for="categories" class="pb-2"><input type="checkbox" id="category"
                                                value=""> clothing
                                        </label>
                                    </li>
                                    <li>
                                        <label for="categories" class="pb-2"><input type="checkbox" id="category"
                                                value=""> stationary
                                        </label>
                                    </li>
                                </ul>
                            </div>



                        </div>
                    </div>
                    <div class="col-lg-9 col-12">
                        <div class="w-100">
                            <div class="d-flex justify-content-between">
                                <div class="total_product_counts mx-auto m-lg-0">
                                    <p class="m-0 f-15 text-primary-Regal_Blue fw-regular">76 results</p>
                                </div>
                                <div class="sorting_products d-none d-lg-block">
                                    <div class="d-flex align-items-center">
                                        <h6 class="f-15 text-primary-Regal_Blue text-capitalize m-0">sort by:</h6>
                                        <select id="sortBy" name="sort-by"
                                            class="border-0 text-primary-Regal_Blue fw-bold m-0">
                                            <option value="">Best Selling</option>
                                            <option value="">Newest</option>
                                            <option value="title:asc">Name: A - Z</option>
                                            <option value="">Name: Z - A</option>
                                            <option value="ss_price:asc">Price: Low to High</option>
                                            <option value="">Price: High to Low</option>
                                            <option value="">Highest Rated</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="w-100 mt-5">
                            <div class="row" style="row-gap: 60px;">
                                <div class="col-6 col-lg-4">
                                    <div class="card h-100">
                                        <a href="product1.html"><img src="images/p1.jpg" alt="img not found "
                                                class="w-100"></a>
                                        <span class="badge position-absolute">74$</span>
                                        <div class="card-body w-100 pt-3">
                                            <h5 class="">
                                                <a href="product1.html"
                                                    class="text-decoration-none fw-bold text-primary-Regal_Blue text-capitalize text-dark-coffee">black
                                                    shoes</a>
                                            </h5>
                                            <a href="product1.html" class="btn btn-primary-outline">submit a bid</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 col-lg-4">
                                    <div class="card h-100">
                                        <a href="product1.html"><img src="images/p2.jpg" alt="img not found "
                                                class="w-100"></a>
                                        <span class="badge position-absolute">74$</span>
                                        <div class="card-body w-100 pt-3">
                                            <h5 class="">
                                                <a href="product1.html"
                                                    class=" fw-bold text-decoration-none text-capitalize text-dark-coffee">
                                                    <h5>women hangbag</h5>
                                                </a>
                                            </h5>
                                            <a href="product1.html" class="btn btn-primary-outline">submit a bid</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 col-lg-4">
                                    <div class="card h-100">
                                        <a href="product1.html"><img src="images/p3.jpg" alt="img not found "
                                                class="w-100"></a>
                                        <span class="badge position-absolute">78$</span>
                                        <div class="card-body w-100 pt-3">
                                            <h5 class="">
                                                <a href="product1.html"
                                                    class=" fw-bold text-decoration-none text-capitalize text-dark-coffee">
                                                    <h5>jackets</h5>
                                                </a>
                                            </h5>
                                            <a href="product1.html" class="btn btn-primary-outline">submit a bid</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 col-lg-4">
                                    <div class="card h-100">
                                        <a href="product1.html"><img src="images/p4.jpg" alt="img not found "
                                                class="w-100"></a>
                                        <span class="badge position-absolute">88$</span>
                                        <div class="card-body w-100 pt-3">
                                            <h5 class="">
                                                <a href="product1.html"
                                                    class=" fw-bold text-decoration-none text-capitalize text-dark-coffee">
                                                    <h5>sunglasses</h5>
                                                </a>
                                            </h5>
                                            <a href="product1.html" class="btn btn-primary-outline">submit a bid</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 col-lg-4">
                                    <div class="card h-100">
                                        <a href="product1.html"><img src="images/p5.jpg" alt="img not found "
                                                class="w-100"></a>
                                        <span class="badge position-absolute">45$</span>
                                        <div class="card-body w-100 pt-3">
                                            <h5 class="">
                                                <a href="product1.html"
                                                    class=" fw-bold text-decoration-none text-capitalize text-dark-coffee">
                                                    <h5>gadgets</h5>
                                                </a>
                                            </h5>
                                            <a href="product1.html" class="btn btn-primary-outline">submit a bid</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 col-lg-4">
                                    <div class="card h-100">
                                        <a href="product1.html"><img src="images/p6.jpg" alt="img not found "
                                                class="w-100"></a>
                                        <span class="badge position-absolute">25$</span>
                                        <div class="card-body w-100 pt-3">
                                            <h5 class="">
                                                <a href="product1.html"
                                                    class=" fw-bold text-decoration-none text-capitalize text-dark-coffee">
                                                    <h5>cellieng lamp</h5>
                                                </a>
                                            </h5>
                                            <a href="product1.html" class="btn btn-primary-outline">submit a bid</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 col-lg-4">
                                    <div class="card h-100">
                                        <a href="product1.html"><img src="images/p7.jpg" alt="img not found "
                                                class="w-100"></a>
                                        <span class="badge position-absolute">50$</span>
                                        <div class="card-body w-100 pt-3">
                                            <h5 class="">
                                                <a href="product1.html"
                                                    class=" fw-bold text-decoration-none text-capitalize text-dark-coffee">
                                                    <h5>Zaveripearls</h5>
                                                </a>
                                            </h5>
                                            <a href="product1.html" class="btn btn-primary-outline">submit a bid</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 col-lg-4">
                                    <div class="card h-100">
                                        <a href="product1.html"><img src="images/p8.jpg" alt="img not found "
                                                class="w-100"></a>
                                        <span class="badge position-absolute">50$</span>
                                        <div class="card-body w-100 pt-3">
                                            <h5 class="">
                                                <a href="product1.html"
                                                    class=" fw-bold text-decoration-none text-capitalize text-dark-coffee">
                                                    <h5>smart watches</h5>
                                                </a>
                                            </h5>
                                            <a href="product1.html" class="btn btn-primary-outline">submit a bid</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- collection  product list end -->


            <!-- collection pagination start -->
            <div class="collection_pagination mt-5">
                <nav aria-label="Page navigation example">
                    <ul class="pagination justify-content-center">
                        <li class="page-item disabled">
                            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">
                                <span class="icon-icon-left f-9 text-primary-Regal_Blue"></span>
                                Previous</a>
                        </li>
                        <li class="page-item"><a class="page-link text-primary-Regal_Blue" href="#">1</a></li>
                        <li class="page-item"><a class="page-link text-primary-Regal_Blue" href="#">2</a></li>
                        <li class="page-item"><a class="page-link text-primary-Regal_Blue" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#">Next
                                <span class="icon-icon-right f-9 text-primary-Regal_Blue fw-bold"></span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
            <!-- collection pagination end -->



        </div>
        <!-- main collection-list section end -->

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

        <script src="js/index.js"></script>
        <script src="js/header.js"></script>
</body>

</html>