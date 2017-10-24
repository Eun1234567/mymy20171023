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

	<div class="container">
		<h2>��ٱ���</h2>
		</br>

		<%
			Connection conn = null;
			request.setCharacterEncoding("EUC-KR");
			Statement stmt = null;
			ResultSet rs = null;
			int num = 1;
			try {
				Class.forName("com.mysql.jdbc.Driver").newInstance();
			} catch (Exception ex) {
				System.out.println("mysql jdbc ����̹� �ε� ����");
			}
			try {
				conn = DriverManager.getConnection("jdbc:mysql://localhost/book_store?" + "user=root&password=Admin");
			} catch (SQLException ex) {
				System.out.println("SQLException: " + ex.getMessage());
				System.out.println("SQLState: " + ex.getSQLState());
				System.out.println("VendorError: " + ex.getErrorCode());
			}
			try {
				String strAllDisplay = "SELECT * FROM shoppingcart order by isbn";
				stmt = conn.createStatement();
				rs = stmt.executeQuery(strAllDisplay);

				while (rs.next()) {
		%>

		<table class="table table-hover">

			<tbody>

				<tr>

					<div class="col-sm-2"><%=num%>�� ��ǰ
					</div>
					<td>ISBN</td>
					<td>å �̸�</td>
					<td>����</td>
					<td>���ǻ�</td>
					<td>������</td>
					<td>����</td>
				</tr>
				<tr>
					<td><%=rs.getString("isbn")%></td>
					<td><%=rs.getString("title")%></td>
					<td><%=rs.getString("price")%></td>
					<td><%=rs.getString("publisher")%></td>
					<td><%=rs.getString("publish_date")%></td>
					<td>
                        <select name="num">
                            <option value="">����</option>
                            <option value="01" >1</option>
                            <option value="02" >2</option>
                            <option value="03" >3</option>
                            <option value="04" >4</option>
                            <option value="05" >5</option>
                            <option value="06" >6</option>
                            <option value="07" >7</option>
                            <option value="08" >8</option>
                            <option value="09" >9</option>
                            <option value="10" >10</option>
                        </select>
                    </td>


					<form action="GetChecked.jsp" method="post">
						<div class="checkbox">
							<lable> <input type="checkbox" name="checkBoxToDelete"
								value=<%=rs.getString("isbn")%>> <input type="submit"
								value="�����ϱ�"> </lable>
						</div>
					</form>
				</tr>
			</tbody>

		</table>
		</br> </br>
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
		<a href="PurchaseBook.jsp"
			class="btn btn-default glyphicon glyphicon-check" role="button">�����ϱ�</a>

		<a href="Index.jsp" class="btn btn-info glyphicon glyphicon-home"
			role="button">Ȩ����</a>
	</div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>