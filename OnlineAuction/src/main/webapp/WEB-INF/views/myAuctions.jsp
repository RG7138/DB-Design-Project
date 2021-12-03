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
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap4.min.css">
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
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>


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
          <div class="navigation collapse navbar-collapse" id="navbarSupportedContent">
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
			                <span class="text-black text-uppercase">
			                  Welcome <%=user.getFname()%> <%=user.getLname() %>
			                </span>
			              </li>
			            </ul>
			          </div>        

        </div>
      </nav>
    </div>
    </header>
    <!-- main header end -->

    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <h2 style="font-family: 'lato'; text-align: center; padding-top: 10px;">My Auctions</h2>
	<div class="ml-4 mt-4 mr-4">
	<table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>Product Name</th>
                <th>Product Initial Bid Price</th>
                <th>Auction Date</th>
                <th>Auction Expiration Date</th>
                
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${auctions }" var="auction">
            <tr>
                <td>${auction.product.productName }</td>
                <td>${auction.product.initialBidPrice }</td>
                <td>${auction.auctionDate }</td>
                <td>${auction.expirationDate }</td>
            </tr>
         </c:forEach>
            
            </tbody>
        <tfoot>
            <tr>
                <th>Product Name</th>
                <th>Product Initial Bid Price</th>
                <th>Auction Date</th>
                <th>Auction Expiration Date</th>
                
            </tr>
        </tfoot>
    </table>
        
    </div>
    </body>
    
    <!-- footer start -->
<div class="footer">
  <div class="copyright">
    <p>
      Copyright &copy;<script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All rights reserved by <span style="text-decoration: underline;">Online Auction Platform</span>
    </p>
  </div>
</div> 
<script src="<%=request.getContextPath() %>/js/index.js"></script>
<script src="<%=request.getContextPath() %>/js/header.js"></script>
<!-- footer end -->
    </html>
    
    
