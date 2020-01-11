<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</body>
<div id="templatemo_container">
    
  <!-- <div id="templatemo_header"> -->
  <div id="templatemo_header">
  <table><tr><td>
  <img src="images/hot-coffee-rounded-cup-on-a-plate-from-side-view.png" width="220px" height="180px"></td><td id="templatemo_site_title">Cafe For You</td></tr>
  </table>
  <!-- <div id="templatemo_site_title">Cafe</div> -->
  <!-- <div id="templatemo_site_slogan">You can buy coffee & food from this site</div> -->
  </div>
    
    <div>
        <ul class="solidblockmenu">
          <li><a href=""></a></li>
         
          
        </ul>
  </div>
  </div>
  <div>
        <ul class="solidblockmenu">
        <li><a href="insert.jsp" class="l">Insert</a></li>
        <li><a href="update.jsp" class="l">Update</a></li>
          <li><a href="select.jsp" class="l">Select</a></li>
          <li><a href="delete.jsp" class="l">Delete</a></li>
         
          
        </ul>
  </div>
  
  <%

String str="jdbc:mysql://localhost/cafeproject?user=root&password=root";
Connection con=null;
//Statement stmt=null;
Statement stmt=null;
ResultSet rs=null;


	Class.forName("com.mysql.jdbc.Driver");

		
		con=DriverManager.getConnection(str);
		stmt=con.createStatement();
		System.out.println("The connection succeeded");
		 String d=request.getParameter("date");
		Date dd=Date.valueOf(d);
		
		//String n=request.getParameter("name");
		String strSql="delete from custorder where Date=?";
		PreparedStatement ps=con.prepareStatement(strSql);
		ps.setDate(1, dd);
		
		ps.executeUpdate();
		con.close();
		
		%>
		<p id="dsucc">Delete Successful</p>
</html>