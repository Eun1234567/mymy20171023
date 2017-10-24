<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="Index.jsp">구트 서적</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">카테고리
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="BookInfo.jsp">베스트셀러</a></li>
          <li><a href="KoreaBook.jsp">국내도서</a></li>
          <li><a href="#">해외도서</a></li>
        </ul>
      </li>
      <li><a href="#">신간</a></li>
      <li><a href="#">이벤트</a></li>
 <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">등록
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="bookinput.jsp">도서 등록</a></li>
        </ul>
        
      </li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="board.jsp"><span class="glyphicon glyphicon-blackboard"></span>board</a></li>
      <li><a href="booksearch2.jsp"><span class="glyphicon glyphicon-search"></span>Search</a></li>
      <li><a href="ViewCart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
      <li><a href="join.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login.jsp" ><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>


<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2" action = "PurchaseBook.jsp"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="C:\Users\Administrator\eclipse-workspace\OnlineBookStore\image\1.jpg" alt="Los Angeles">
    </div>

    <div class="item">
      <img src="C:\Users\Administrator\eclipse-workspace\OnlineBookStore\image\2.jpg" alt="Chicago">
    </div>

    <div class="item">
      <img src="C:\Users\Administrator\eclipse-workspace\OnlineBookStore\image\aaaa.jpg" alt="New York" action ="PurchaseBook.jsp">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>