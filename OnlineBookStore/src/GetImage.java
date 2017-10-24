import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/GetImage")
public class GetImage extends HttpServlet {
 private static final long serialVersionUID = 1L;
 protected void doGet(HttpServletRequest request, HttpServletResponse response)
   throws ServletException, IOException {
	 
	 
  request.setCharacterEncoding("EUC-KR");
  Blob image = null;
  Connection conn = null;
  byte[] bArray = null;
  Statement stmt = null;
  ResultSet rs = null;
  
  
  try {
   Class.forName("com.mysql.jdbc.Driver").newInstance();
   conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/book_store?" + "user=root&password=Admin");
   stmt = conn.createStatement();
   String strIsbn = request.getParameter("isbn");
   rs = stmt.executeQuery("SELECT image FROM book WHERE isbn ='" + strIsbn + "'");
   
   
   if (rs.next()) {
    image = rs.getBlob(1);
    bArray = image.getBytes(1, (int) image.length());
   } else {
    return;
   }
   response.setContentType("imgae/png");
   response.setContentType("imgae/jpg");
   ServletOutputStream os = response.getOutputStream();
   os.write(bArray);
   os.flush();
   os.close();
  } catch (Exception ex) {
   return;
  } finally {
   try {
    rs.close();
    stmt.close();
    conn.close();
   } catch (SQLException e) {
    e.printStackTrace();
   }
   // response.getWriter().append("Served at: ").append(request.getContextPath());
  }
 }
 protected void doPost(HttpServletRequest request, HttpServletResponse response)
   throws ServletException, IOException {
  doGet(request, response);
 }
}