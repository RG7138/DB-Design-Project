<!DOCTYPE html>
<html lang="en" style="min-height: 100vh; overflow: auto;">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <link rel="stylesheet" href="css/fonts.css">
    <link rel="stylesheet" href="css/bootstrap.css">
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
              <img src="images/headerlogo.png" alt="">
            </a>
          </div>
                   
        </div>
      </nav>
    </div>
    <!-- main header end -->

    <div class="col-sm-8 col-md-6 col-lg-4 p-6 mx-auto text-center bg-white position-relative mt-5 mb-5">
        <div class="tab-content" id="pills-tabContent">
            <div class="tab-pane fade show active" id="pills-login" role="tabpanel" aria-labelledby="pills-login-tab">
                <h2 style="font-family: 'lato';">Admin Login</h2>
                <form method="post" action="index.html" id="customer_login" accept-charset="UTF-8">
                    <input type="email" id="customerEmail" name="customer[email]" aria-label="email" placeholder="Email"
                        autocorrect="off" autocapitalize="off" required="required" class="form-control"
                        style="margin-bottom: 15px;">
                    <input type="password" id="customerPassword" name="customer[password]" aria-label="email"
                        placeholder="Enter Password" autocorrect="off" autocapitalize="off" required="required"
                        class="form-control" style="margin-bottom: 15px;">
                    <a href="dashboard.html" class="btn btn-primary btn-block" style="margin-bottom: 5px;">Login</a>
                </form>
            </div>
        </div>
    </div>
</body>
</html>