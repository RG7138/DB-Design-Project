<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/fonts.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
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
                                <a class="nav-link" href="Feedback.html" tabindex="-1" aria-disabled="true">Feedback</a>
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


    <div class="site-section">
        <div class="container">
            <div class="row">
                <div class="col-md-6 mx-auto text-center bg-white position-relative  my-4">
                    <h2>Upload Product Details</h2>
                    <div class="row" style="margin-bottom: 15px;">
                        <div class="col-md-12 form-group">
                            <input type="text" id="title" class="form-control form-control" placeholder="Title">
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 15px;">
                        <div class="col-md-12 form-group">
                            <textarea name="description" id="description" cols="30" rows="5" class="form-control" placeholder="Description"></textarea>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4" style="padding-top: 5px;"><label for="initialprice">Initial Bid Price</label></div>
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
                    
                    <div class="row">
                        <div class="col-md-4" style="padding-top: 5px;"><label for="file">Select Category</label></div>
                        <div class="col-md-8 form-group">
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
                        <div class="col-md-4" style="padding-top: 5px;"><label for="file">Select Sub-category</label></div>
                        <div class="col-md-8 form-group">
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
                    <div class="row" style="margin-top: 15px;">
                        <div class="col-md-4" style="padding-top: 5px;">
                            <label for="initialprice">Bid Start Date</label>
                        </div>
                        <div class="col-md-8 form-group">
                            <div class="input-group mb-3">
                                <input type="date" class="form-control" id="bidstartdate" placeholder="Bid Start Date">
                            </div>
                        </div>
                    </div>
                    <div class="row"  style="margin-top: 15px;">
                        <div class="col-md-4" style="padding-top: 5px;"><label for="file">Image</label></div>
                        <div class="col-md-8 form-group"><input type="file" id="file" class="form-control form-control"></div>
                    </div>

                    <div class="row"  style="margin-top: 15px;">
                        <div class="col-12"  style="text-align: center;">
                            <input type="submit" value="Upload" class="btn btn-primary px-5"> 
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

    <script src="js/index.js"></script>
    <script src="js/header.js"></script>
</body>

</html>