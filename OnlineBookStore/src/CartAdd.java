

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

/**
 * Servlet implementation class CartAdd
 */
@WebServlet("/CartAdd")
public class CartAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("EUC-KR");
		
		String strIsbn;
		String strTitle;
		String strPublisher;
		String strPrice;
		String strPublish;

		String strDBAddMessage = "등록 실패";
		Connection conn = null;
		
		strIsbn = request.getParameter("isbn");
		strTitle = request.getParameter("title");
		strPublisher = request.getParameter("publisher");
		strPrice = request.getParameter("price");
		strPublish = request.getParameter("publish_date");
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		} catch (Exception ex) {
			System.out.println("mysql jdbc 드라이버 로드 에러");
		}

		try {
			conn = (Connection) DriverManager
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

	}
}
