<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>10할문고 책 등록</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<jsp:include page="shared/Header.jsp"></jsp:include>
	
			<h1>서적 등록</h1>
			
			
			<div class="container">
			<form class="form-horizontal" action="BookAdd" method="post" enctype="multipart/form-data">
				<div class="form-group">
					<label for="isbn" class="col-sm-2 control-label">서적번호</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="isbn"
							placeholder="서적번호를 입력하세요." name="isbn">
					</div>
				</div>
				
				
				<div class="form-group">
					<label for="title" class="col-sm-2 control-label">제목</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="title"
							placeholder="제목을 입력하세요." name="title">
					</div>
				</div>
				
				
				<div class="form-group">
					<label for="image" class="col-sm-2 control-label">사진</label>
					<div class="col-sm-6">
						<input type="file" class="form-control" id="image" name="image">
					</div>
				</div>

				<div class="form-group">
					<label for="price" class="col-sm-2 control-label">가격</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="price"
							placeholder="가격을 입력하세요." name="price">
					</div>
				</div>
				
				
				<div class="form-group">
					<label for="publisher" class="col-sm-2 control-label">출판사</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="publisher"
							placeholder="출판사명을 입력하세요." name="publisher">
					</div>
				</div>

				<div class="form-group">
					<label for="publish_date" class="col-sm-2 control-label">출판날짜</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="fromDate"
							placeholder="출판날짜를 입력하세요." name="publish_date">
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-4">
						<button type="submit"
							class="btn btn-default glyphicon glyphicon-check">등록</button>
						<a href="Index.jsp" class="btn btn-info glyphicon glyphicon-home"
							role="button">홈으로</a>
					</div>

				</div>
			</form>

		</div>
	

	
	<script>
		$('.datepicker1').datepicker({
			format : "yyyy/mm/dd",
			language : "kr",
			autoclose : true,
			orientation : 'bottom left'
		});
	</script>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="bootstrap/js/bootstrap.min.js"></script>



</body>
</html>