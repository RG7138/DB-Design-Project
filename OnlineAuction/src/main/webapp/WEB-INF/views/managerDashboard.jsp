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

<body>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#example').DataTable({searching: false});
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
                <a class="nav-link" aria-current="page" href="/admin/logout">Logout</a>
              </li>
            </ul>
          </div>

          <div class="icons">
            <ul class="navbar-nav p-0 ms-auto">
              <li class="nav-item">
                <span class="text-black text-uppercase">
                  Welcome XYZ
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
    <
    <section>
    <div class=" container col-md-4 justify-content-center justify-items-center" style="text-align: center">
    	<form action="#" method="post">
		  <div class="form-group">
		    <select class="form-control" >
		    	<option selected value="none">Select Search Criteria</option>
			  	<option value="name">Name</option>
			  	<option value="email">Email</option>
			  	<option value="address">Address</option>
			  	<option value="ttype">Transaction type</option>
			</select>
		  </div>
		  
		  <button type="submit" class="btn btn-primary">Submit</button>
		</form>
    
    </div>
    </section>
	<div class="ml-4 mt-4 mr-4">
	<table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Age</th>
                <th>Start date</th>
                <th>Salary</th>
            </tr>
        </thead>
        <tbody>
        
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
            </tr>
            <tr>
                <td>Garrett Winters</td>
                <td>Accountant</td>
                <td>Tokyo</td>
                <td>63</td>
                <td>2011/07/25</td>
                <td>$170,750</td>
            </tr>
            <tr>
                <td>Ashton Cox</td>
                <td>Junior Technical Author</td>
                <td>San Francisco</td>
                <td>66</td>
                <td>2009/01/12</td>
                <td>$86,000</td>
            </tr>
            <tr>
                <td>Cedric Kelly</td>
                <td>Senior Javascript Developer</td>
                <td>Edinburgh</td>
                <td>22</td>
                <td>2012/03/29</td>
                <td>$433,060</td>
            </tr>
            <tr>
                <td>Airi Satou</td>
                <td>Accountant</td>
                <td>Tokyo</td>
                <td>33</td>
                <td>2008/11/28</td>
                <td>$162,700</td>
            </tr>
            <tr>
                <td>Brielle Williamson</td>
                <td>Integration Specialist</td>
                <td>New York</td>
                <td>61</td>
                <td>2012/12/02</td>
                <td>$372,000</td>
            </tr>
            <tr>
                <td>Herrod Chandler</td>
                <td>Sales Assistant</td>
                <td>San Francisco</td>
                <td>59</td>
                <td>2012/08/06</td>
                <td>$137,500</td>
            </tr>
            <tr>
                <td>Rhona Davidson</td>
                <td>Integration Specialist</td>
                <td>Tokyo</td>
                <td>55</td>
                <td>2010/10/14</td>
                <td>$327,900</td>
            </tr>
            <tr>
                <td>Colleen Hurst</td>
                <td>Javascript Developer</td>
                <td>San Francisco</td>
                <td>39</td>
                <td>2009/09/15</td>
                <td>$205,500</td>
            </tr>
            <tr>
                <td>Sonya Frost</td>
                <td>Software Engineer</td>
                <td>Edinburgh</td>
                <td>23</td>
                <td>2008/12/13</td>
                <td>$103,600</td>
            </tr>
            <tr>
                <td>Jena Gaines</td>
                <td>Office Manager</td>
                <td>London</td>
                <td>30</td>
                <td>2008/12/19</td>
                <td>$90,560</td>
            </tr>
            <tr>
                <td>Quinn Flynn</td>
                <td>Support Lead</td>
                <td>Edinburgh</td>
                <td>22</td>
                <td>2013/03/03</td>
                <td>$342,000</td>
            </tr>
            
            
            </tbody>
        <tfoot>
            <tr>
               <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Age</th>
                <th>Start date</th>
                <th>Salary</th>
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
    
    
