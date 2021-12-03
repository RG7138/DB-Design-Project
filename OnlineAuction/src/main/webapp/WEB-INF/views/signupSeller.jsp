<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign-Up | Seller</title>
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

<body>

  <!-- header strat -->
  <header id="header" class="box-shadow">
    <!-- main header strat -->
    <div class="main_header">
      <nav class="navbar navbar-expand-xl p-0  px-3 py-3 py-xl-0">
        <div class="container-fluid">
          <div class="logo py-2" style="justify-content: center;">
            <a href="">
              <img src="<%=request.getContextPath() %>/images/headerlogo.png" alt="">
            </a>
          </div>
                   
        </div>
      </nav>
    </div>
    <!-- main header end -->

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="col-sm-8 col-md-6 col-lg-4 p-6 mx-auto text-center bg-white position-relative mt-5">
    <div class="tab-content" id="pills-tabContent">
        <div class="tab-pane fade show active" id="pills-login" role="tabpanel" aria-labelledby="pills-login-tab">
            <h2 style="font-family: 'lato';">Seller Sign Up</h2>
            <form:form method="post" action="/seller/save" id="customer_login" accept-charset="UTF-8" modelAttribute="seller">
                <!-- First Name -->
                <form:input type="text" id="registerCustomerFirstName" name="customer[first_name]"
                aria-label="first name" placeholder="First Name" required="required" class="form-control mr-2"
                style="margin-right: 6px; margin-bottom: 15px;" path="user.fname"/>
                <!-- Last Name -->
                <form:input type="text" id="customerLastName" name="customer[last_name]" aria-label="last name"
                placeholder="Last Name" required="required" class="form-control ml-2" style="margin-bottom: 15px;" path="user.lname"/>
                <!-- Email -->
                <form:input type="email" id="customerEmail" name="customer[email]" aria-label="email" placeholder="Email" autocorrect="off" autocapitalize="off" required="required" class="form-control" style="margin-bottom: 15px;" path="user.email"/>
                <!-- Address -->
                <form:textarea rows="3" type="text" id="customerAddress" name="customer[address]" aria-label="address" placeholder="Address" autocorrect="off" autocapitalize="off" required="required" class="form-control" style="margin-bottom: 15px;" path="user.address"></form:textarea>
                <!-- Phone Number -->
                <form:input type="tel" maxlength="10" id="customerNumber" name="customer[number]" aria-label="number" placeholder="Phone Number" autocorrect="off" autocapitalize="off" required="required" class="form-control" style="margin-bottom: 15px;" path="user.phoneNumber"/>
                <!-- Routing Number -->
                <form:input type="text" id="routing" maxlength="9" name="routing" aria-label="routing"
                placeholder="Routing Number" required="required" class="form-control ml-2" style="margin-bottom: 15px;" path="routingNumber"/>
                <!-- Account Number -->
                <form:input type="text" id="account" maxlength="12" name="account" aria-label="account"
                placeholder="Account Number" required="required" class="form-control ml-2" style="margin-bottom: 15px;" path="accountNumber"/>
                <!-- Password -->
                <form:input type="password" id="customerPassword" name="customer[password]" aria-label="password"
                placeholder="Password" autocorrect="off" autocapitalize="off" required="required" class="form-control" style="margin-bottom: 15px;" path="user.password"/>
                <!-- Confirm Password -->
                <input type="password" id="customerConfirmPassword" name="customer[confirmpassword]" aria-label="ConfirmPassword" placeholder="Confirm Password" autocorrect="off" autocapitalize="off" required="required" class="form-control" style="margin-bottom: 15px;"/>

                <button type="submit" class="btn btn-primary btn-block" onclick="return validatePwd()">Register</button>

                <div class="my-5 d-flex align-items-center justify-content-center font-size-small">
                    <p class="mb-0">Already have an account? </p>
                    <li class="nav-item list-unstyled"><a data-toggle="tab" href="/auction" role="tab"
                    class="pl-1 font-weight-bold text-secondary text-decoration-none" style="font-style: italic; color: black; font-weight: bold;">Sign In</a></li>
                </div>
        </form:form>
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