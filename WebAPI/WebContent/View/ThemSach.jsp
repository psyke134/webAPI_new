<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Thêm Sách</title>
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
    
       <div class="">
        <div class="row justify-content-center ">
            <div class="row-container ">
                <h1>Thêm Sách</h1>
                <form action="themsachservelet">
                    <div class=form-inline>
                      <label >book_id:</label>
                      <input type="text"  class="form-control" placeholder="Nhập book_id" size="8" name = "book_id">
                      <label >category_id:</label>
                      <input type="text"  class="form-control" placeholder="Nhập category_id" size="10" name = "category_id">
                      <label >name:</label>
                      <input type="text"  class="form-control" placeholder="Nhập tên Sách" name = "name">
                    </div>
                    
                    <div class=form-inline>
                        <label >price:</label>
                        <input type="text"  class="form-control" placeholder="Nhập giá sách" name = "price">
                        <label >save:</label>
                        <input type="text"  class="form-control" placeholder="Nhập save" name = "save">
                    </div>
                    <div class=form-inline>
                        <label >author:</label>
                        <input type="text"  class="form-control" placeholder="Nhập tên tác giả" name = "author">
                        <label >overview:</label>
                        <input type="text"  class="form-control" placeholder="Nhập overview" name = "overview">
                    </div>
                    <div class=form-inline>
                        <label >image:</label>
                        <input type="text"  class="form-control" placeholder="Nhập đường dẫn hình ảnh" size="80" name = "image">
                    </div>
                    <div class=form-inline>
                        <label >flash_sale:</label>
                        <input type="text"  class="form-control" placeholder="Nhập 0 hoặc 1" size="8" name = "flash_sale">
                        <label >publisher:</label>
                        <input type="text"  class="form-control" placeholder="Nhập publisher" size="10" name = "publisher">
                        <label >publish_date:</label>
                        <input type="text" class="form-control" placeholder="Nhập publish_date" name = "publish_date">
                    </div>
                    <div class=form-inline>
                        <label >page_count:</label>
                        <input type="text"  class="form-control" placeholder="Nhập số trang" name = "page_count">
                        <label >dimensions:</label>
                        <input type="text" class="form-control" placeholder="Nhập dimensions" name = "dimensions">
                    </div>
                    <div class=form-inline>
                        <label >shipping_weight:</label>
                        <input type="text"  class="form-control" placeholder="Nhập shipping_weight" name = "shipping_weight">
                        <label >stock:</label>
                        <input type="text"  class="form-control" placeholder="Nhập stock" name = "stock">
                    </div>
                    <div class=form-inline>
                        <label >book_format:</label>
                        <input type="text" class="form-control" placeholder="Nhập loại bìa" name = "book_format">
                        <label >is_trending:</label>
                        <input type="text"  class="form-control" placeholder="Nhập 0 hoặc 1" name = "is_trending">
                    </div>
                    <button type="submit" class="btn btn-success btn-center my-3">Thêm Sách</button>
                </form>
            </div>
        </div>

   </div>
    
</body>
</html>