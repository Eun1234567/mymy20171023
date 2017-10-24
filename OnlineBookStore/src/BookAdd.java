
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.mysql.jdbc.Blob;
import com.mysql.jdbc.Connection;

@WebServlet("/BookAdd")
@MultipartConfig(maxFileSize = 16177216)
public class BookAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		String strIsbn;
		String strTitle;
		String strPublisher;
		String strPrice;
		String strPublish;

		String strDBAddMessage = "등록 실패";

		DecimalFormat df = new DecimalFormat("###.##");
		Part partImage = request.getPart("image");
		InputStream is = partImage.getInputStream();
		Connection conn = null;

		strIsbn = request.getParameter("isbn");
		strTitle = request.getParameter("title");
		strPublisher = request.getParameter("publisher");
		strPrice = request.getParameter("price");
		strPublish = request.getParameter("publish_date");

		LocalDateTime dt = LocalDateTime.now();
		Timestamp t = Timestamp.valueOf(dt);

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
			String strInsert = "INSERT INTO book(isbn, title, image, price, publisher, publish_date, registered_date) VALUES(?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(strInsert);
			ps.setString(1, strIsbn);
			ps.setString(2, strTitle);
			ps.setBlob(3, is);
			ps.setString(4, strPrice);
			ps.setString(5, strPublisher);
			ps.setString(6, strPublish);
			ps.setTimestamp(7, t);

			int nInsertedCount = ps.executeUpdate();
			if (nInsertedCount == 1) {
				strDBAddMessage = "정상 등록";
			}
		} catch (SQLException ex) {
			System.out.println("SQLException: " + ex.getMessage());
			String strImageName = partImage.getName();
		}
		
	}
	
}

