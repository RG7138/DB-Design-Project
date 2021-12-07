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
<%@ page import="com.auction.OnlineAuction.model.Admin" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%
	HttpSession session1 = request.getSession(false);
	Admin admin = null;
	if(session1.getAttribute("admin")!=null){
		
		admin = (Admin) session1.getAttribute("admin");
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
          <div class="logo py-2">
            <a href="">
              <img src="<%=request.getContextPath() %>/images/headerlogo.png" alt="">
            </a>
          </div>
          <div class="navigation collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 p-0 text-uppercase">
              
              <li class="nav-item hotel_bedding">
                <a class="nav-link" href="/admin/users">Users</a>
              </li>
              <li class="nav-item ">
                <a class="nav-link" href="/admin/products" tabindex="-1" aria-disabled="true">Products</a>
              </li>
              <li class="nav-item ">
                <a class="nav-link" href="/admin/feedbacks" tabindex="-1" aria-disabled="true">Feedback</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/category/addCategory" tabindex="-1" aria-disabled="true" >Add Category</a>
              </li>
              <li class="nav-item ">
                <a class="nav-link" href="/admin/logout" tabindex="-1" aria-disabled="true">Logout</a>
              </li>
            </ul>
          </div>

          <div class="icons">
            <ul class="navbar-nav p-0 ms-auto">
              <li class="nav-item">
                <span class="text-black text-uppercase">
                  Welcome Admin <%=admin.getEmail()%>
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
    <h2 style="font-family: 'lato'; text-align: center; padding-top: 10px;">Users</h2>
	<div class="ml-4 mt-4 mr-4">
	<table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>Role</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${users }" var="user">
            <tr>
                <td>${user.fname }</td>
                <td>${user.lname }</td>
                <td>${user.email }</td>
                <td>${user.phoneNumber }</td>
                <td>${user.role }</td>
                <td><a href="/admin/delete/${user.userId }" style="color: red">Deacticate</a></td>
            </tr>
            </c:forEach>
            
            </tbody>
        <tfoot>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>Role</th>
                <th>Action</th>
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
<!-- footer end -->
    </html>
    
    
