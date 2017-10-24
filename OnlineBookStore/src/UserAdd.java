
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class UserAdd
 */
@WebServlet("/UserAdd")
public class UserAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("EUC-KR");
		Connection conn = null;

		String struserid;
		String struser_password;
		String struser_address;
		String struser_phone;
		boolean bGubun;

		String strDBAddMessage = "등록 실패";
		DecimalFormat df = new DecimalFormat("###.##");

		struserid = request.getParameter("userid");
		struser_password = request.getParameter("user_password");
		struser_address = request.getParameter("user_address");
		struser_phone = request.getParameter("user_phone");

		String strGubun = request.getParameter("gubun");

		if ("남자".equals(strGubun)) {
			bGubun = true;
		} else {
			bGubun = false;
		}

		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		} catch (Exception ex) {
			System.out.println("mysql jdbc 드라이버 로드 에러");
		}

		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/book_store?" + "user=root&password=Admin");

		} catch (SQLException ex) {
			System.out.println("SQLException: " + ex.getMessage());
			System.out.println("SQLState: " + ex.getSQLState());
			System.out.println("VendorError: " + ex.getErrorCode());
		}
		try {
			String strInsert = "INSERT INTO member(userid, user_password, user_address, user_phone, gubun) VALUES(?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(strInsert);
			ps.setString(1, struserid);
			ps.setString(2, struser_password);
			ps.setString(3, struser_address);
			ps.setString(4, struser_phone);
			ps.setBoolean(5, bGubun);

			int nInsertedCount = ps.executeUpdate();
			if (nInsertedCount == 1) {
				strDBAddMessage = "정상 등록";
			}
		} catch (SQLException ex) {
			System.out.println("SQLException: " + ex.getMessage());
		}
	}

}
