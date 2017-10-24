<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>10�ҹ��� å ���</title>

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
	
			<h1>���� ���</h1>
			
			
			<div class="container">
			<form class="form-horizontal" action="BookAdd" method="post" enctype="multipart/form-data">
				<div class="form-group">
					<label for="isbn" class="col-sm-2 control-label">������ȣ</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="isbn"
							placeholder="������ȣ�� �Է��ϼ���." name="isbn">
					</div>
				</div>
				
				
				<div class="form-group">
					<label for="title" class="col-sm-2 control-label">����</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="title"
							placeholder="������ �Է��ϼ���." name="title">
					</div>
				</div>
				
				
				<div class="form-group">
					<label for="image" class="col-sm-2 control-label">����</label>
					<div class="col-sm-6">
						<input type="file" class="form-control" id="image" name="image">
					</div>
				</div>

				<div class="form-group">
					<label for="price" class="col-sm-2 control-label">����</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="price"
							placeholder="������ �Է��ϼ���." name="price">
					</div>
				</div>
				
				
				<div class="form-group">
					<label for="publisher" class="col-sm-2 control-label">���ǻ�</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="publisher"
							placeholder="���ǻ���� �Է��ϼ���." name="publisher">
					</div>
				</div>

				<div class="form-group">
					<label for="publish_date" class="col-sm-2 control-label">���ǳ�¥</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="fromDate"
							placeholder="���ǳ�¥�� �Է��ϼ���." name="publish_date">
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-4">
						<button type="submit"
							class="btn btn-default glyphicon glyphicon-check">���</button>
						<a href="Index.jsp" class="btn btn-info glyphicon glyphicon-home"
							role="button">Ȩ����</a>
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