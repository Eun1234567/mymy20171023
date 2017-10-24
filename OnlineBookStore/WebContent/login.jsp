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

<jsp:include page="shared/Header.jsp"></jsp:include>



<div class = "container">
	<div class = "col-lg-4"></div>
	<div class = "col-lg-4">
		<div class ="jumbotron" style = "padding-top:20px;">
			<form method = "post" action = "loginAction.jsp">
				<h3 style = "text-align: center;"> 로그인 화면 </h3>
				<div class = "form-group">
					<input type="text" class = "form-control" placeholder = "아이디" name = "userID" maxlength="20">
				</div>
				
				<div class = "form-group">
					<input type="password" class = "form-control" placeholder = "비밀번호" name = "userPassword" maxlength="20">
					</div>
					<input type="submit" class="btn btn-primary form-control" value = "로그인">
			</form>
			</div> 
	</div>
	<div class = "col-lg-4"></div>
</div>


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>

</body>
</html>