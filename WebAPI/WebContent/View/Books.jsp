<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quản Lý Sách</title>
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
              <a class="nav-link active" href="dsuserservelet">Quản Lý Người Dùng |</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Admin</a>
            </li>
          </ul>
        </div>

      </div>

    </nav>
    
    <div class="content-manager" >
            <h3>QUẢN LÝ SÁCH </h3>
                   
     </div>
	<div class ="container">
		<form action="ThemSach.jsp" method="post">                        
			<button type="submit" class="btn btn-success">Thêm Sách</button>
		</form>
	
	</div>
	
	<div class="container">
        <div class="row">
          <table class="table">
            <thead class="table-info">
              <tr>                       
                <th scope="col">Tên Sách</th>
                <th scope="col">Giá</th>
                <th scope="col">Ảnh</th>
                <th scope="col">Số trang</th>
                <th scope="col">Xóa</th>
                <th scope="col">Sửa</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach items="${bookEntries}" var="entry">
                	<tr>
                		<td>${entry.name}</td>	
                		<td>${entry.price}</td>
                		<td><img alt="" src="${entry.image}"></td>
                		<td>${entry.page_count}</td>
                		<td>
                			<form action="xoasachservelet" method="post">
	                        	<input type="hidden" name="book_id" value="${entry.book_id }">	                        
	                        	<button type="submit" class="btn btn-primary">chọn</button>
	                        </form>
                		</td>

                    	<td>
                        	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#sua_thong_tin_${entry.book_id}">Chọn</button>
                    	</td>
                	</tr>
                </c:forEach>
            </tbody>
          </table>   
       </div>
      </div>

<!-- Modals-->

<c:forEach items="${bookEntries}" var="entry">
	<div class="modal fade" id="sua_thong_tin_${entry.book_id }" role="dialog">
	        <div class="modal-dialog">
	        
	          <!-- Modal content-->
	          <div class="modal-content">
	            <div class="modal-header">
	              <h4 class="modal-title">Sửa thông tin</h4>
	            </div>
	            <div class="modal-body">
	              <form action="suasachservelet" method="post">
	                  <input name="book_id" value="${entry.book_id}">
	                  Tên Sách: <input type="text" name="name" value="${entry.name}"><br>
	                  Giá: <input type="text" name="price" value="${entry.price}"><br>
	                  Tác Giả: <input type="text" name="author" value="${entry.author}"><br>
	                  Link Ảnh: <input type="text" name="image" value="${entry.image}"><br>
	                  Số Trang: <input type="text" name="page_count" value="${entry.page_count}"><br>
	                  Loại Bìa: <input type="text" name="book_format" value="${entry.book_format}"><br>
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