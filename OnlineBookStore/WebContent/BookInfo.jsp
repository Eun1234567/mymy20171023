<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="my.css" rel="stylesheet">
<link href="star-input.css" rel="stylesheet" text="text/css">

</head>
<body>
<nav class="navbar navbar-inverse ">
  <div class="container-fluid">
    <div class="navbar-header">
    
      <a class="navbar-brand" href="Index.jsp">��Ʈ ����</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="Index.jsp">Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">ī�װ�
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="BookInfo.jsp">����Ʈ����</a></li>
          <li><a href="KoreaBook.jsp">��������</a></li>
          <li><a href="#">�ؿܵ���</a></li>
        </ul>
        
      </li>
      <li><a href="#">�Ű�</a></li>
      <li><a href="#">�̺�Ʈ</a></li>
      
    
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
   
      <li><a href="board.jsp"><span class="glyphicon glyphicon-blackboard"></span>board</a></li>
      <li><a href="booksearch2.jsp"><span class="glyphicon glyphicon-search"></span>Search</a></li>
      <li><a href="ViewCart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
      <li><a href="join.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="Login.jsp" ><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>


<div class = "container">
	<div class = "row"> <!--  ��ø -->
		<div class = "col-xs-4"> 
			<div class="container">
  				<h2 id = "my">�� �ڿ� ���� �� </h2> 
  				<img src="C:\Users\Administrator\eclipse-workspace\OnlineBookStore\image\aaaa.jpg" class = "img-rounded"  alt="�� �ڿ� ���� ��" width="304" height="500">
			</div>
		</div>
		<div class="col-xs-4"><br /><br /><br /><br />
		
			<div class ="row">
				<div class = "col-xs-6"><div>å ����</div></div>
				<div class = "col-xs-4"><div>�� �ڿ� ���� ��</div></div><br /><br />
				
				<div class ="row"></div>
				<div class = "col-xs-6"><div>����</div></div>
				<div class = "col-xs-4"><div>14,800��</div></div><br /><br />
				
				<div class ="row"></div>
				<div class = "col-xs-6"><div>ISBN</div></div>
				<div class = "col-xs-4"><div>9791185051826</div></div><br /><br />
				
				
				<div class ="row"></div>
				<div class = "col-xs-6"><div>���ǻ�</div></div>
				<div class = "col-xs-4"><div>�Ϸε�</div></div><br /><br />
				
				
				<div class ="row"></div>
				<div class = "col-xs-6"><div>��������</div></div>
				<div class = "col-xs-4"><div>2015-06-12</div></div><br /><br />
				
				
				<div class ="row"></div>
				<div class = "col-xs-6"><div>�������</div></div>
				<div class = "col-xs-4"><div>2017-09-18</div></div><br /><br />
				
				<div class = "row"></div>
				
				
<span class="star-input">
  <span class="input">
    <input type="radio" name="star-input" id="p1" value="1"><label for="p1">1</label>
    <input type="radio" name="star-input" id="p2" value="2"><label for="p2">2</label>
    <input type="radio" name="star-input" id="p3" value="3"><label for="p3">3</label>
    <input type="radio" name="star-input" id="p4" value="4"><label for="p4">4</label>
    <input type="radio" name="star-input" id="p5" value="5"><label for="p5">5</label>
    <input type="radio" name="star-input" id="p6" value="6"><label for="p6">6</label>
    <input type="radio" name="star-input" id="p7" value="7"><label for="p7">7</label>
    <input type="radio" name="star-input" id="p8" value="8"><label for="p8">8</label>
    <input type="radio" name="star-input" id="p9" value="9"><label for="p9">9</label>
    <input type="radio" name="star-input" id="p10" value="10"><label for="p10">10</label>
    <br/>
  </span>
  <output for="star-input" ><b>0</b>��</output>
  
</span>
				
				
				
				<br /><br />
				<div class="form-group">
				<div class="col-sm-offset-2 col-sm-4">
						
						<a href="PurchaseBook.jsp" class = "btn btn-default glyphicon glyphicon-check"
						role = "button">�����ϱ�</a>
						
						
				</div>
			</div>
				<!-- <button type="button" class="btn btn-success">�����ϱ�</button> -->
			</div>
		</div>
		
		<div class="col-xs-4"><br /><br /><br /><br />
		
				<div class ="row"></div>
				<div class = "col-xs-3"><div>å �Ұ�</div></div><br /><br />
				<div class = "col-xs-10"><div>�� �ڴ� ���� ���� ���̰� ���� �ڴ� ���� Ǯ ���̴��� ����� ��������......
											�ູ�� �����ؾ� �� ũ�������� ������ ������ �Ӱ� �����. ���� ��å��Ű�� ����, �ճ� �翡�� �丮�� �ϴ� ����, ���� �������� �б� �����Ա���, 
											��� ���� ���̶��� �������� ���� ������ ������� ���������ۡ��� �ѿ� �¾� ���صȴ�. ��̸� ���� �������н��� ���ϱ�? �����ڵ鿡�� ���� ��ο� ���Ű� �ִ� �ɱ�? 
											�������� �ӿ��� ���������ۡ��� �ڸ� �� �� �� �� ��Ƴ����� �Ǿƿ� ������Ÿ���� �ᱹ �Ŵ��� ���İ� �����Ѵ�.</div></div>
											
					
				<div class ="row"></div><br /><br />						
				<div class = "col-xs-3"><div>��õ��</div></div><br /><br />
				<div class = "col-xs-10"><div>���ݱ��� ���Ͼ�� ���� �ְ��� �̽��͸��� �����ΰ� �ϴ� �������� �Ƹ� �ǰ��� �к��� ���̴�. �׷��� �ֱ� ���� �̽��͸��� �� ���������� �����ϰ� �� ������ �����ΰ� �ϴ� �������� �� �ϳ��� ��ۿ� ����. �ڷ� �����Ͽ콺. 
- ����Ʈ����Ʈ ������</div></div>
				
				
				</div>
											
											
											
		
		</div>
	
<br>

<%
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/board_client";
	String id = "root";
	String pass = "Admin";
	int total = 0;
	
	try {
		Connection conn = DriverManager.getConnection(url,id,pass);
		Statement stmt = conn.createStatement();

		String sqlCount = "SELECT COUNT(*) FROM board_client";
		ResultSet rs = stmt.executeQuery(sqlCount);
		
		if(rs.next()){
			total = rs.getInt(1);
		}
		rs.close();
		out.print("�� �Խù� : " + total + "��");
		
		String sqlList = "SELECT NUM, USERNAME, TITLE, TIME, HIT from board_client order by NUM DESC";
		rs = stmt.executeQuery(sqlList);
		
%>
<h2> ����� �ı�</h2>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr height="5"><td width="5"></td></tr>
 <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">
   <td width="5"><img src="img/table_left.gif" width="5" height="30" /></td>
   <td width="73">��ȣ</td>
   <td width="379">����</td>
   <td width="73">�ۼ���</td>
   <td width="164">�ۼ���</td>
   <td width="58">��ȸ��</td>
   <td width="7"><img src="img/table_right.gif" width="5" height="30" /></td>
  </tr>
<%
	if(total==0) {
%>
	 		<tr align="center" bgcolor="#FFFFFF" height="30">
	 	   <td colspan="6">��ϵ� ���� �����ϴ�.</td>
	 	  </tr>
<%
	 	} else {
	 		
		while(rs.next()) {
			int idx = rs.getInt(1);
			String name = rs.getString(2);
			String title = rs.getString(3);
			String time = rs.getString(4);
			int hit = rs.getInt(5);
		
%>
<tr height="25" align="center">
	<td>&nbsp;</td>
	<td><%=idx %></td>
	<td align="left"><a href="view_client.jsp?idx=<%=idx%>"><%=title %></td>
	<td align="center"><%=name %></td>
	<td align="center"><%=time %></td>
	<td align="center"><%=hit %></td>
	<td>&nbsp;</td>
</tr>
  <tr height="1" bgcolor="#D2D2D2"><td colspan="6"></td></tr>
<% 
		}
	} 
	rs.close();
	stmt.close();
	conn.close();
} catch(SQLException e) {
	out.println( e.toString() );
}
%>
 <tr height="1" bgcolor="#82B5DF"><td colspan="6" width="752"></td></tr>
 </table>
 
<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr><td colspan="4" height="5"></td></tr>
  <tr align="center">
   <td><input type=button value="�۾���" OnClick="window.location='BookInfo_write.jsp'"></td>
  </tr>
</table>

 </div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>


	<script>
	var starRating = function(){
		  var $star = $(".star-input"),
		      $result = $star.find("output>b");
		  $(document)
		    .on("focusin", ".star-input>.input", function(){
		    $(this).addClass("focus");
		  })
		    .on("focusout", ".star-input>.input", function(){
		    var $this = $(this);
		    setTimeout(function(){
		      if($this.find(":focus").length === 0){
		        $this.removeClass("focus");
		      }
		    }, 100);
		  })
		    .on("change", ".star-input :radio", function(){
		    $result.text($(this).next().text());
		  })
		    .on("mouseover", ".star-input label", function(){
		    $result.text($(this).text());
		  })
		    .on("mouseleave", ".star-input>.input", function(){
		    var $checked = $star.find(":checked");
		    if($checked.length === 0){
		      $result.text("0");
		    } else {
		      $result.text($checked.next().text());
		    }
		  });
		};
		starRating();
	</script>