<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Đăng Nhập</title>
    <link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css" rel="stylesheet">  
    <link rel="stylesheet" href="../Style/css/bootstrap.min.css">
    <script src="../Style/css/bootstrap.min.js"></script>
    <link href = "../Style/css/style.css" rel="stylesheet">
    
</head>
<body>

	
	
    <!-- Nav dung o dau trang web -->
    <nav class = "navbar navbar-expand-md navbar-light bg-light sticky-top">
      <div class= "container-fluid">
        <a calss= "navbar-branch" href ="" >
          <img src="../Style/images/logo.png" height="50">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
			    <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link active" href="">Trang Chủ |</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Liên Hệ</a>
            </li>
          </ul>
        </div>

      </div>

    </nav>

    <!-- Ảnh nền  -->
   <div class="image">
     <img src="../Style/images/nen.jpg" height="100%" width="100%" >
     <form action="loginservlet" method="POST">
 
      <!-- Vertical -->
      <div class="form-group" >
         <label for="username">Tên Đăng Nhập:</label>
         <input type="text" id = "TenDangnhap" class="form-control" placeholder="Tên Đăng Nhập" name ="username">
         <label for="MatKhau">Mật Khẩu:</label>
         <input type="password" id="MatKhau" class="form-control" placeholder="Mật Khẩu" name ="password">
         <br>
          <button type="submit" class="btn btn-primary">Đăng Nhập</button>
      </div>
    
   </form>
   </div>
    
     


    <!-- footer cuoi trang -->
    <footer>
      <div class="container-fluid padding">	
        <div class="row text-center padding">
          <div class="col-12">
            <h2>Contact us</h2>
          </div>
          <div class="col-12 social padding">
            <a href="#"><i class="fab fa-facebook"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-google-plus-g"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
            <a href="#"><i class="fab fa-youtube"></i></a>
          </div>
        </div>
      </div>	
    </footer>
</body>
</html>