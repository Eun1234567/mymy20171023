<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page import="java.sql.*, javax.sql.*, java.io.*, javax.naming.*"%>
<%@ page import="java.text.DecimalFormat"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Statement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
<jsp:include page="shared/Header.jsp"></jsp:include>
	<%
		Connection conn = null;
		request.setCharacterEncoding("EUC-KR");
		Statement stmt = null;
		ResultSet rs = null;
		int num = 1;
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		} catch (Exception ex) {
			System.out.println("mysql jdbc 드라이버 로드 에러");
		}
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost/book_store?" + "user=root&password=Admin");
		} catch (SQLException ex) {
			System.out.println("SQLException: " + ex.getMessage());
			System.out.println("SQLState: " + ex.getSQLState());
			System.out.println("VendorError: " + ex.getErrorCode());
		}
		try {
			String strAllDisplay = "SELECT * FROM book order by isbn";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(strAllDisplay);

			while (rs.next()) {
	%>


	<div class="container">

		<div class="form-group">
			<form class="form-horizontal" method="post"
				enctype="multipart/form-data">
				<div class="row">
					<!--  중첩 -->
					<div class="col-xs-1">
						<div class="container"></div>
					</div>

					<div class="col-xs-1">
						<br />
						<br />
						<br />
						<br />

						<div class="row">
							<div class="col-sm-1"><%=num%></div>
						</div>
					</div>

					<div class="col-xs-6">
						<br />
						<br />
						<br />
						<br />



						<div class="row">
							<div class="col-xs-2">
								<div>책 제목</div>
							</div>
							<div class="col-sm-2"><%=rs.getString("title")%></div>

							<div class="row"></div>
							<div class="col-xs-2">
								<div>가격</div>
							</div>
							<div class="col-sm-1"><%=rs.getString("price")%></div>

							<div class="row"></div>
							<div class="col-xs-2">
								<div>ISBN</div>
							</div>
							<div class="col-sm-1"><%=rs.getString("isbn")%></div>


							<div class="row"></div>
							<div class="col-xs-2">
								<div>출판사</div>
							</div>
							<div class="col-sm-2"><%=rs.getString("publisher")%></div>


							<div class="row"></div>
							<div class="col-xs-2">
								<div>출판일자</div>
							</div>
							<div class="col-sm-2"><%=rs.getString("publish_date")%></div>
							
							<div class="row"></div>
							<div class="col-xs-2">
								<div>출판일자</div>
							</div>
							<div class="col-sm-2"><%=rs.getString("publish_date")%></div>



							<br />
							<br />
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-4">

									<a
										href="CartAdd.jsp?isbn=<%=rs.getString("isbn")%>
						 &title=<%=rs.getString("title")%>
						 &price=<%=rs.getString("price")%>
						 &publisher=<%=rs.getString("publisher")%>
						 &publish_date=<%=rs.getString("publish_date")%>"
										class="btn btn-default glyphicon glyphicon-check"
										role="button">장바구니에 넣기</a> 
									<%-- <a href="CartAdd?isbn=<%=rs.getString("isbn")%>" class = "btn btn-default glyphicon glyphicon-check"
						role = "button">장바구니에 넣기</a> 
						</button> --%>
									<!-- <div class="form-group">
					<div class="col-sm-offset-2 col-sm-4">
						<button type="submit"
							class="btn btn-default glyphicon glyphicon-check">장바구니</button>
						
					</div>

				</div> -->

								</div>

							</div>
							<!-- <button type="button" class="btn btn-success">구입하기</button> -->
						</div>
					</div>

					<div class="col-xs-3">
						<br />
						<br />

						<div class="row"></div>
						<br />
						<br />
						<div class="col-xs-3">
							<div class="col-sm-2"><%=rs.getString("title")%></div>
						</div>
						<br />
						<br />

						<div class="col-sm-1">
							<img src="GetImage?isbn=<%=rs.getString("isbn")%>" width="150px"
								height="150px">
						</div>



					</div>
				</div>
				<!-- 	</form> -->
		</div>
	</div>


	<%-- <form action ="PurchaseBook.jsp" method="post" >
    <div class = "checkbox"> 
    <lable><input type = "checkbox" name = "checkBoxToDelete" value =<%=rs.getString("studentno")%>> 
     <input type = "submit" value = "전송">
    </lable>
    </div>
    </form> --%>


	<%
		num++;
	%>

	<%
		}
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (stmt != null)
				try {
					stmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}
	%>
	
	
	
	

</body>
</html>