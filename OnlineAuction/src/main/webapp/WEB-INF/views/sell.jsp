<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/fonts.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/header.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/footer.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<script>


	function showSelected(){
	console.log("Entering in ajax call");
	var categoryValue = document.getElementById("category").value;
	$.ajax({
		url : "/subCategory/getSubCategory",
		data : {'categoryid' : categoryValue},
		type : "get",
		success : function(response) {
			$('#subcategory').empty();
			$('#subcategory').append($('<option>', {
			    value: "",
			    text:  'Select Sub-Category'
			}));
			for (item in response) {
				$('#subcategory').append($('<option>', {
				    value: response[item].subCategoryId,
				    text:  response[item].subCategoryName
				}));
			}
		},
		error : function(e) {
			// alert("Submit failed" + JSON.stringify(e));
		}
	});
   }



/* $("#category").on("change" , function(){
	console.log("Entering in ajax call");
	 var categoryValue = document.getElementById("category").value; 
	$.ajax({
		url : getContextPath() + "/subCategory/getSubCategory",
		data : {'categoryid' : categoryValue},
		type : "get",
		success : function(response) {
			$('#subcategory').empty();
			$('#subcategory').append($('<option>', {
			    value: "",
			    text:  'Select'
			}));
			for (item in response) {
				$('#subcategory').append($('<option>', {
				    value: response[item].subCatgeoryId,
				    text:  response[item].subCategoryName
				}));
			}
		},
		error : function(e) {
			// alert("Submit failed" + JSON.stringify(e));
		}
	});
}); */
</script>

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
			                <a href="/user/viewProfile" class="text-black text-uppercase">
			                  Welcome <%=user.getFname()%> <%=user.getLname()%>
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

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <div class="site-section">
        <div class="container">
            <div class="row">
                <div class="col-md-6 mx-auto text-center bg-white position-relative  my-4">
                    <h2>Upload Product Details</h2>
                    <form:form action="/seller/addProduct" modelAttribute="product" method="post" enctype="multipart/form-data">
                    <div class="row" style="margin-bottom: 15px;">
                        <div class="col-md-12 form-group">
                            <form:input type="text" id="title" class="form-control form-control" placeholder="Product Name" path="productName"/>
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 15px;">
                        <div class="col-md-12 form-group">
                            <form:textarea name="description" id="description" cols="30" rows="5" class="form-control" placeholder="Description" path="productInfo"></form:textarea>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4" style="padding-top: 5px;"><label for="initialprice">Initial Bid Price</label></div>
                        <div class="col-md-8 form-group">
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                              <span class="input-group-text">$</span>
                            </div>
                            <form:input type="text" class="form-control" id="initialprice" aria-label="Amount (to the nearest dollar)" path="initialBidPrice"/>
                            <div class="input-group-append">
                              <span class="input-group-text">.00</span>
                            </div>
                          </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-4" style="padding-top: 5px;"><label for="file">Select Category</label></div>
                        <div class="col-md-8 form-group">
                            <select id="category" name="category" class="form-control" onChange='showSelected()'>
                            	<option value="" selected>Select Category</option>
                            <c:forEach items="${categoryList }" var="category">
                                <option value="${category.categoryId }">${category.categoryName }</option>
                            </c:forEach>
                            </select>
                        </div>
                    </div>

                    <div class="row" style="margin-top: 15px;">
                        <div class="col-md-4" style="padding-top: 5px;"><label for="file">Select Sub-category</label></div>
                        <div class="col-md-8 form-group">
                            <select id="subcategory" name="subcategory" class="form-control">
                                <option value="none" selected disabled hidden>Select a Sub-Category</option>
                            </select>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 15px;">
                        <div class="col-md-4" style="padding-top: 5px;">
                            <label for="initialprice">Bid Start Date</label>
                        </div>
                        <div class="col-md-8 form-group">
                            <div class="input-group mb-3">
                                <input type="date" name="bidstartdate" class="form-control" id="bidstartdate" placeholder="Bid Start Date">
                            </div>
                        </div>
                    </div>
                    <div class="row"  style="margin-top: 15px;">
                        <div class="col-md-4" style="padding-top: 5px;"><label for="file">Image</label></div>
                        <div class="col-md-8 form-group"><input type="file" id="file" name="file" class="form-control form-control" accept="image/png, image/jpeg, image/jpg"></div>
                    </div>

                    <div class="row"  style="margin-top: 15px;">
                        <div class="col-12"  style="text-align: center;">
                            <input type="submit" value="Upload" class="btn btn-primary px-5"> 
                        </div>
                    </div>
                    </form:form>
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

    <script src="<%=request.getContextPath() %>/js/index.js"></script>
    <script src="<%=request.getContextPath() %>/js/header.js"></script>
</body>

</html>