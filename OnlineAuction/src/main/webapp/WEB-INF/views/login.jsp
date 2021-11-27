<!DOCTYPE html>
<html lang="en" style="min-height: 100vh; overflow: auto;">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/fonts.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/header.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/footer.css">
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
</head>
<%
	HttpSession session1 = request.getSession(false);
	session1.invalidate();
%>
<body style="min-height: 100vh;">

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
                                <a href="/auction" class="text-black text-uppercase">
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
        </div>
        </li>
        </ul>
        </div>
        <!-- mobile navigation end -->
    </header>
    <!-- header end -->

	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <div class="col-sm-8 col-md-6 col-lg-4 p-6 mx-auto text-center bg-white position-relative mt-5 mb-5">
        <div class="tab-content" id="pills-tabContent">
            <div class="tab-pane fade show active" id="pills-login" role="tabpanel" aria-labelledby="pills-login-tab">
                <h2 style="font-family: 'lato';">Login</h2>
                <form:form method="post" action="/user/login" id="customer_login" accept-charset="UTF-8" modelAttribute="user">
                    <form:input type="email" id="customerEmail" name="customer[email]" aria-label="email" placeholder="Email"
                        autocorrect="off" autocapitalize="off" required="required" class="form-control"
                        style="margin-bottom: 15px;" path="email"/>
                    <form:input type="password" id="customerPassword" name="customer[password]" aria-label="email"
                        placeholder="Enter Password" autocorrect="off" autocapitalize="off" required="required"
                        class="form-control" style="margin-bottom: 15px;" path="password"/>
                    <button class="btn btn-primary btn-block" type="submit" style="margin-bottom: 5px;">Login</button>
                    <p style="font-size: 12px; text-align: left; font-family: lato; font-style: italic;">Do not have an
                        account?</p>
                    <div class="signup button" style="border-radius: 10px;">
                        <div class="row">
                            <div class="col-md-6">
                                <a href="/buyer/sign-up" class="btn btn-primary btn-block">Sign-up as Buyer</a>
                            </div>
                            <div class="col-md-6">
                                <a href="/seller/sign-up" class="btn btn-primary btn-block">Sign-up as Seller</a>
                            </div>
                        </div>
                    </div>
                </form:form>
            </div>

        </div>
    </div>

    <!-- footer start -->
    <div class="footer" style="position: fixed; bottom: 0px; left: 0; right: 0;">
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

    <script src="<%=request.getContextPath() %>/js/index.js"></script>
    <script src="<%=request.getContextPath() %>/js/header.js"></script>
</body>

</html>