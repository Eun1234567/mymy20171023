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
    
      <a class="navbar-brand" href="Index.jsp">구트 서적</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="Index.jsp">Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">카테고리
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="BookInfo.jsp">베스트셀러</a></li>
          <li><a href="KoreaBook.jsp">국내도서</a></li>
          <li><a href="#">해외도서</a></li>
        </ul>
        
      </li>
      <li><a href="#">신간</a></li>
      <li><a href="#">이벤트</a></li>
      
    
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
	<div class = "row"> <!--  중첩 -->
		<div class = "col-xs-4"> 
			<div class="container">
  				<h2 id = "my">산 자와 죽은 자 </h2> 
  				<img src="C:\Users\Administrator\eclipse-workspace\OnlineBookStore\image\aaaa.jpg" class = "img-rounded"  alt="산 자와 죽은 자" width="304" height="500">
			</div>
		</div>
		<div class="col-xs-4"><br /><br /><br /><br />
		
			<div class ="row">
				<div class = "col-xs-6"><div>책 제목</div></div>
				<div class = "col-xs-4"><div>산 자와 죽은 자</div></div><br /><br />
				
				<div class ="row"></div>
				<div class = "col-xs-6"><div>가격</div></div>
				<div class = "col-xs-4"><div>14,800￦</div></div><br /><br />
				
				<div class ="row"></div>
				<div class = "col-xs-6"><div>ISBN</div></div>
				<div class = "col-xs-4"><div>9791185051826</div></div><br /><br />
				
				
				<div class ="row"></div>
				<div class = "col-xs-6"><div>출판사</div></div>
				<div class = "col-xs-4"><div>북로드</div></div><br /><br />
				
				
				<div class ="row"></div>
				<div class = "col-xs-6"><div>출판일자</div></div>
				<div class = "col-xs-4"><div>2015-06-12</div></div><br /><br />
				
				
				<div class ="row"></div>
				<div class = "col-xs-6"><div>등록일자</div></div>
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
  <output for="star-input" ><b>0</b>점</output>
  
</span>
				
				
				
				<br /><br />
				<div class="form-group">
				<div class="col-sm-offset-2 col-sm-4">
						
						<a href="PurchaseBook.jsp" class = "btn btn-default glyphicon glyphicon-check"
						role = "button">구매하기</a>
						
						
				</div>
			</div>
				<!-- <button type="button" class="btn btn-success">구입하기</button> -->
			</div>
		</div>
		
		<div class="col-xs-4"><br /><br /><br /><br />
		
				<div class ="row"></div>
				<div class = "col-xs-3"><div>책 소개</div></div><br /><br />
				<div class = "col-xs-10"><div>산 자는 벌을 받을 것이고 죽은 자는 원을 풀 것이다한 사람도 빠짐없이......
											행복만 가득해야 할 크리스마스 시즌이 공포로 붉게 물든다. 개를 산책시키던 노인, 손녀 곁에서 요리를 하던 부인, 빵집 종업원과 학교 선생님까지, 
											평생 나쁜 일이라고는 저지르지 않은 선량한 사람들이 ‘스나이퍼’의 총에 맞아 살해된다. 재미를 위한 사이코패스의 짓일까? 피해자들에게 실은 어두운 과거가 있는 걸까? 
											오리무중 속에서 ‘스나이퍼’의 뒤를 한 발 한 발 밟아나가는 피아와 보덴슈타인은 결국 거대한 슬픔과 마주한다.</div></div>
											
					
				<div class ="row"></div><br /><br />						
				<div class = "col-xs-3"><div>추천사</div></div><br /><br />
				<div class = "col-xs-10"><div>지금까지 독일어로 쓰인 최고의 미스터리가 무엇인가 하는 질문에는 아마 의견이 분분할 것이다. 그러나 최근 독일 미스터리가 전 세계적으로 유행하게 된 이유가 무엇인가 하는 질문에는 단 하나의 답밖에 없다. 넬레 노이하우스. 
- 슈투트가르트 차이퉁</div></div>
				
				
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
		out.print("총 게시물 : " + total + "개");
		
		String sqlList = "SELECT NUM, USERNAME, TITLE, TIME, HIT from board_client order by NUM DESC";
		rs = stmt.executeQuery(sqlList);
		
%>
<h2> 사용자 후기</h2>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr height="5"><td width="5"></td></tr>
 <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">
   <td width="5"><img src="img/table_left.gif" width="5" height="30" /></td>
   <td width="73">번호</td>
   <td width="379">제목</td>
   <td width="73">작성자</td>
   <td width="164">작성일</td>
   <td width="58">조회수</td>
   <td width="7"><img src="img/table_right.gif" width="5" height="30" /></td>
  </tr>
<%
	if(total==0) {
%>
	 		<tr align="center" bgcolor="#FFFFFF" height="30">
	 	   <td colspan="6">등록된 글이 없습니다.</td>
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
   <td><input type=button value="글쓰기" OnClick="window.location='BookInfo_write.jsp'"></td>
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