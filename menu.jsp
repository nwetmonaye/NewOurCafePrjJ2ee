<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page import="java.sql.*" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="calendar/zapatec/zpcal/themes/wood.css" />
	<script type="text/javascript" src="calendar/zapatec/zpcal/utils/zapatec.js"></script>
	<script type="text/javascript" src="calendar/zapatec/zpcal/src/calendar.js"></script>
	<script type="text/javascript" src="calendar/zapatec/zpcal/lang/calendar-en.js"></script> 
</head>
<body>
<div id="templatemo_container">
    
  <div id="templatemo_header">
  <table><tr><td>
  <img src="images/hot-coffee-rounded-cup-on-a-plate-from-side-view.png" width="220px" height="180px"></td><td id="templatemo_site_title">Cafe For You</td></tr>
  </table>
  <!-- <div id="templatemo_site_title">Cafe</div> -->
  <!-- <div id="templatemo_site_slogan">You can buy coffee & food from this site</div> -->
  </div>
    
    <div>
        <ul class="solidblockmenu">
          <li><a href="master.jsp">Home</a></li>
         
          
        </ul>
  </div>
  </div>
  
  
   
   

<%-- <%
	String Name=request.getParameter("fname");
	String img=request.getParameter("img");
	String price=request.getParameter("price");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection(
			"jdbc:mysql://localhost/summer","root","root");
	System.out.println("Connection Successful");
	String sql="insert into ftable values(null,?,?,?)";
	PreparedStatement pst=con.prepareStatement(sql);
	pst.setString(1, img);
	pst.setString(2, Name);
	pst.setString(3, price);
	
	pst.executeUpdate();
	
	%> --%>
	
	
	
	<span><p id="p1"><b>Welcome
	<%

	HttpSession ee=request.getSession(false);
	if(ee==null){
		
		System.out.println("There is no session");
	}
	%>
	<i><%= ee.getAttribute("Username") %></i>
	From Cafe!!</b></p></span>
	<h1 id="h1">Menu List</h1>
	
    
  <!-- <table class="t">
<tr>
<td><a href="menu.jsp" class="l">Tea</a></td>
<td><a href="menu.jsp" class="l">Juice</a></td>
<td><a href="menu.jsp" class="l">Food</a></td>
<td><a href="menu.jsp" class="l">Snack</a></td>

</tr>
</table> -->
<table>
<tr><td>
	
	<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection(
			"jdbc:mysql://localhost/cafeproject","root","root");
	System.out.println("Connection Successful");
	String sql1="select * from menu";
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery(sql1);
	%>
	<table border="1" id="tab">
	<tr>
		
		<th>Food ID</th>
		<th>Food Name</th>
		<th>Price</th>
		
		
	</tr>
	<%
		while (rs.next()){
			Integer id=rs.getInt("Aid");
			String fname=rs.getString("foodname");
			Integer price=rs.getInt("price");
			
	%>
	<tr>
	
	<td><%=id %></td>
	
	<td><%=fname %></td>
	<td><%=price %></td>
	
	</tr>
	<%} %>		
	
</table>
<!-- </td><td> -->

<table><tr><td id="p">If you want to order the food,you must click >></td>
<!-- <form action="orderlink.jsp" method="post" >
<input type="submit" value="Order">
</form> -->
<td><a href="orderlink.jsp" id="linkord">Order</a></table></td></tr>

</body>
</html>