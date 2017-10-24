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
 <div class="container">
  <h2 class="bg-warning">Search BookInformation</h2>
  <form>
   <div class="row">
    <div class="col-sm-2">고유번호</div>
    <div class="col-sm-4">이름</div>
    <div class="col-sm-2">사진</div>
    <div class="col-sm-2">가격</div>    
   </div>
   <%
   String isbn = request.getParameter("isbn");
   //System.out.println(isbn);
   
    request.setCharacterEncoding("EUC-KR");
    Connection conn = null;
    PreparedStatement ps = null;
    Statement stmt = null;
    ResultSet rs = null;
    int num=1;
    try {
     Class.forName("com.mysql.jdbc.Driver").newInstance();
    } catch (Exception ex) {
     System.out.println("mysql jdbc 드라이버 로드 에러");
    }
    try {
     conn = DriverManager
       .getConnection("jdbc:mysql://localhost:3306/book_store?"
     + "user=root&password=Admin");
    } catch (SQLException ex) {
     System.out.println("SQLException: " + ex.getMessage());
     System.out.println("SQLState: " + ex.getSQLState());
     System.out.println("VendorError: " + ex.getErrorCode());
    }
    
    
    
    
    try {
        String strDisplay = "SELECT * from book_store.book where isbn = ?";
        ps = conn.prepareStatement(strDisplay);
        ps.setString(1, isbn);
        rs = ps.executeQuery(); //선택한것만 나오게 하는 소스로 바꾸기
        
        rs.next();
        String strTitle = rs.getString("title");
        
        //System.out.println(strTitle);
      
      
      %>
       <div class="row">
     <div class="col-sm-2"><%=rs.getString("isbn")%></div>
     <div class="col-sm-4"><%=rs.getString("title")%></div>
     <%-- <div class="col-sm-1"><%=rs.getString("image")%></div> --%>
     <div class="col-sm-2"><img src="GetImage?isbn=<%=rs.getString("isbn")%>" width="100px" height ="100px"></div>
     <div class="col-sm-2"><%=rs.getString("price")%></div>
     </div>
  
      <%
         
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
     </form>
    </div>
   </body>
   </html> 