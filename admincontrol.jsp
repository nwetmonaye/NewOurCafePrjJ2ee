<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
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
          <li><a href="masteradmin.jsp">Home</a></li>
         
          
        </ul>
  </div>
  </div>
  

	<div>
        <ul class="solidblockmenu">
        <li><a href="insert.jsp" class="l">Add New Food</a></li>
        <li><a href="selectcustorder.jsp" class="l">Order History</a></li>
        
        </ul>
  </div>
 <%
		Statement stmt=null;
		ResultSet rs=null;
		
		
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/cafeproject?user=root&password=root";
			Connection con = DriverManager.getConnection(url);
			stmt=con.createStatement();
			System.out.println("The connection succeeded");
			String stl="select * from menu";
			rs=stmt.executeQuery(stl);
			int oid;
			String name;
			int p;
			%>
			
			<table border="1" id="tab"><tr><th>Food No</th><th>Food Name</th><th>Price</th><th>Update</th><th>Delete</th></tr>
			<%
			
			while(rs.next()){
				oid=rs.getInt("Aid");
				name=rs.getString("foodname");
				p=rs.getInt("price");
				
				%>
				<tr>
				<td><%=oid %></td><td><%=name %></td><td><%=p %></td>
				<td><a href="update.jsp">Update</a></td>
				<td><a href="delete.jsp">Delete</a></td>
				</tr>
			<%
			}
			
			%>
			</table>
  
</body>
</html>