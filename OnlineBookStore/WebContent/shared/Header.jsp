<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>	
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<nav class="navbar navbar-inverse">

  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="Index.jsp">구트 서적</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="Index.jsp">Home</a></li>
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
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>