<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, javax.naming.*"%>
<%@ page import="java.text.DecimalFormat"%>
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

		String[] allchecked = request.getParameterValues("checkBoxToDelete");
		/*for(int i=0; i<allchecked.length; i++) {
			String strStudentNo = allchecked[i];
		}*/

		//Ȯ�� for��
		for (String strNo : allchecked) {
			System.out.println(strNo);
			conn = DriverManager
					.getConnection("jdbc:mysql://localhost:3306/book_store?" + "user=root&password=Admin");

			String strDelete = "DELETE FROM shoppingcart WHERE isbn=?";
			PreparedStatement ps = conn.prepareStatement(strDelete);
			ps.setString(1, strNo);
			ps.executeUpdate();

		}
	%>


<div class="container">
		<h2>��ٱ���</h2>
		</br>

		<%
			request.setCharacterEncoding("UTF-8");
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
				</tr>
				<tr>
					<td><%=rs.getString("isbn")%></td>
					<td><%=rs.getString("title")%></td>
					<td><%=rs.getString("price")%></td>
					<td><%=rs.getString("publisher")%></td>
					<td><%=rs.getString("publish_date")%></td>
					<form action="GetChecked.jsp" method="post">
						<div class="checkbox">
							<lable>
							<input type="checkbox" name="checkBoxToDelete"
								value=<%=rs.getString("isbn")%>> <input
								type="submit" value="�����ϱ�"> </lable>
						</div>
					</form>
				</tr>
			</tbody>

		</table>
		</br>
		</br>
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