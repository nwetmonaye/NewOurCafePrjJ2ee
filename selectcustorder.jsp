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
			String stl="select * from custorder";
			rs=stmt.executeQuery(stl);
			int id;
			String cname;
			int q;
			int p;
			int tp;
			String fname;
			Date d;
			%>
			
			<table border="1" id="sct"><tr><th>Id</th><th>Customer Name</th><th>QTY</th><th>Price</th><th>Total Price</th><th>Date</th><th>Food Name</th></tr>
			<%
			
			while(rs.next()){
				id=rs.getInt("Oid");
				cname=rs.getString("Customername");
				q=rs.getInt("qty");
				p=rs.getInt("price");
				tp=rs.getInt("tprice");
				d=rs.getDate("Date");
				fname=rs.getString("foodname");
				
				%>
				<td><%=id %></td><td><%=cname %></td><td><%=q %></td><td><%=p %></td><td><%=tp %></td><td><%=d %></td><td><%=fname %></td></tr>
			<%
			}
			
			%>
			</table>
			<form action="admincontrol.jsp">
				<input type="submit" value="Back" class="buttonlogin"id="sbtn">
				</form>
</body>
</html>