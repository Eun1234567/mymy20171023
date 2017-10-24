<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page import="java.sql.*, javax.sql.*, java.io.*, javax.naming.*"%>
<%@ page import="java.text.DecimalFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>


	<%!String strIsbn;
	String strTitle;
	String strPublisher;
	String strPrice;
	String strPublish;%>
	<%
		request.setCharacterEncoding("EUC-KR");

		String strDBAddMessage = "등록 실패";

		strIsbn = request.getParameter("isbn");
		strTitle = request.getParameter("title");
		strPublisher = request.getParameter("publisher");
		strPrice = request.getParameter("price");
		strPublish = request.getParameter("publish_date");

		Connection conn = null;

		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		} catch (Exception ex) {
			System.out.println("mysql jdbc 드라이버 로드 에러");
		}

		try {
			conn = DriverManager
					.getConnection("jdbc:mysql://localhost:3306/book_store?" + "user=root&password=Admin");

		} catch (SQLException ex) {
			System.out.println("SQLException: " + ex.getMessage());
			System.out.println("SQLState: " + ex.getSQLState());
			System.out.println("VendorError: " + ex.getErrorCode());
		}
		try {
			String strInsertCart = "INSERT INTO shoppingcart(isbn, title, price, publisher, publish_date) VALUES(?,?,?,?,?)";

			PreparedStatement ps = conn.prepareStatement(strInsertCart);

			ps.setString(1, strIsbn);
			ps.setString(2, strTitle);
			ps.setString(3, strPrice);
			ps.setString(4, strPublisher);
			ps.setString(5, strPublish);

			int nInsertedCount = ps.executeUpdate();
			if (nInsertedCount == 1) {
				strDBAddMessage = "정상 등록";
			}
		} catch (SQLException ex) {
			System.out.println("SQLException: " + ex.getMessage());
		}
	%>
</body>
</html>