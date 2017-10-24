<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>


	<jsp:include page="shared/Header.jsp"></jsp:include>
	<div class="container">
		<center>
			<h2 class="bg-warning">Search Book information</h2></center>
		

		<label class="control-label col-sm-2" for="isbn_n">도서 번호:</label>



		<form class="form-horizontal" action="booksearch.jsp" method="post">
			<div class="form-group">
				 <div class="col-sm-4"> 
				<input type="text" class="form-control" name="isbn" id="isbn"
					placeholder="도서 번호 입력" required name="isbn">
				<div class="help-block with-errors"></div>
				<!-- </div> -->
			</div>




			<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
			<script
				src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
			<!-- Include all compiled plugins (below), or include individual files as needed -->
			<script
				src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
			<!-- Datepicker for Bootstrap -->
			<script type="text/javascript"
				src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.1/js/bootstrap-datepicker.min.js"></script>
			<script type="text/javascript"
				src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.1/locales/bootstrap-datepicker.ja.min.js"></script>




			<div class="form-group">
				<div class="-sm-offset-2 col-sm-4">
					<center>
						<button type="submit"
							class="btn btn-default glyphicon glyphicon-check">검색</button>
					</center>
				</div>
			</div>
		</form>

	</div>

</body>
</html>