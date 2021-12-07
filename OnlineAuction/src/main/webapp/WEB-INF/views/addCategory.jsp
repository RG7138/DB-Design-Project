<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add Category</title>
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
  
    <!-- header end -->


    <!-- PRODUCT MAIN SECTION -->
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <div class="user-profile-wrap mt-4" style="padding-top: 25px;">
        <h1 style="text-align: center;">Add Category</h1>
    </div>
    <%
    	if(session.getAttribute("savedCategoryMessage")!=null){
    		String message = (String) session.getAttribute("savedCategoryMessage");
    		request.setAttribute("message", message);
    		%>
    		<br>
    		<h2 style="text-align: center; color: red"><c:out value="${message}"></c:out></h2>
    <%}%>
    <div class="col-sm-8 col-md-6 col-lg-4 p-6 mx-auto text-center bg-white position-relative mt-5">
        <div class="tab-content" id="pills-tabContent">
            <div class="tab-pane fade show active" id="pills-login" role="tabpanel" aria-labelledby="pills-login-tab">
            	                  
                    <form:form method="post" action="/category/saveCategory" modelAttribute="category">
                    
                    <!-- category Name -->
                    <div class="row pt-4">
                        
                        <div class="col-md-12 form-group">
                            <form:input type="text" aria-label="category name" placeholder="Category Name" required="required" class="form-control mr-2"
                        style="margin-right: 6px; margin-bottom: 15px;" path="categoryName"/>
                        </div>
                    </div>
                    
                    <button type = "submit" class="btn btn-primary btn-block mt-3">Add Category</button>
            </form:form>
                    
                   
                    
            </div>
        </div>
    </div>
    <%
    	if(session.getAttribute("savedCategoryMessage")==null){
    		%>
    	
    <!-- footer start -->
    <div class="footer" style="margin-top: 200px">
        <div class="copyright">
            <p>
                Copyright &copy;
                
                <script>document.write(new Date().getFullYear());</script> All rights reserved by <span
                    style="text-decoration: underline;">Online Auction Platform</span>
            </p>
        </div>
    </div>
    <%}else{ %>
    <div class="footer" style="margin-top: 100px">
        <div class="copyright">
            <p>
                Copyright &copy;
                
                <script>document.write(new Date().getFullYear());</script> All rights reserved by <span
                    style="text-decoration: underline;">Online Auction Platform</span>
            </p>
        </div>
    </div><%} %>
    <!-- footer end -->



    <!-- js -->
    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
    
    <script src="<%=request.getContextPath() %>/js/index.js"></script>
    <script src="<%=request.getContextPath() %>/js/header.js"></script>

</body>

</html>