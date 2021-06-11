<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quản Lý Người Dùng</title>
    <link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css" rel="stylesheet">  
    <link rel="stylesheet" href="../Style/css/bootstrap.min.css">
    <script src="../Style/js/jquery-3.3.1.min.js"></script>
    <script src="../Style/js/bootstrap.min.js"></script>
    
    <link rel="stylesheet" href="../Style/css/admin.css">
    <link rel="stylesheet" href="../Style/css/bootstrap.min.css">
    
    <link href = "../Style/css/style.css" rel="stylesheet">
    
    
    

</head>
<body>
    <nav class = "navbar navbar-expand-md navbar-light bg-light sticky-top">
      <div class= "container-fluid">
        <a class= "navbar-branch" href ="" >
          <img src="../Style/images/logo.png" height="50">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
			    <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link active" href="dsbooksservelet">Quản Lý Sách |</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Admin</a>
            </li>
          </ul>
        </div>

      </div>

    </nav>
    
    <div class="content-manager" >
            <h3>QUẢN LÝ NGƯỜI DÙNG</h3>

     </div>

	<div class="container">
        <div class="row">
          <table class="table">
            <thead class="table-info">
              <tr>                       
                <th scope="col">Username</th>
                <th scope="col">Tên</th>
                <th scope="col">Email</th>
                <th scope="col">Address</th>
                <th scope="col">Phone</th>
                <th scope="col">Sửa</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach items="${userEntries}" var="entry">
                	<tr>
                		<td>${entry.username}</td>	
                		<td>${entry.name}</td>
                		<td>${entry.email}</td>
                		<td>${entry.address}</td>
                		<td>${entry.phone_number}</td>

                    	<td>
                        	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#sua_thong_tin_${entry.username }">Chọn</button>
                    	</td>
                	</tr>
                </c:forEach>
            </tbody>
          </table>   
       </div>
      </div>

<!-- Modals-->

	<c:forEach items="${userEntries}" var="entry">
	<div class="modal fade" id="sua_thong_tin_${entry.username }" role="dialog">
	        <div class="modal-dialog">
	        
	          <!-- Modal content-->
	          <div class="modal-content">
	            <div class="modal-header">
	              <h4 class="modal-title">Sửa thông tin</h4>
	            </div>
	            <div class="modal-body">
	              <form action="suanguoidungservelet" method="post">
	                  <input name="username" value="${entry.username }">
	                  Name : <input type="text" name="name" value="${entry.name }"><br>
	                  Password: <input type="text" name="password" value="${entry.password}"><br>
	                  Phone: <input type="text" name="phone_number" value="${entry.phone_number}"><br>
	                  Email: <input type="text" name="email" value="${entry.email}"><br>
	                  Address: <input type="text" name="address" value="${entry.address}"><br>
	                  <button type="submit" class="btn btn-default">OK</button>
	              </form>
	            </div>
	            <div class="modal-footer">
	              <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
	            </div>
	          </div>
	          
	        </div>
	</div>
	</c:forEach>

<!-- Modals-->
   
    
</body>
</html>