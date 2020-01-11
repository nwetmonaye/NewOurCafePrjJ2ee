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
  <%
  String ts=request.getParameter("tselect");
  int qs=Integer.parseInt(request.getParameter("qtyselect"));
	String date = request.getParameter("birthdate");
 // String n=request.getParameter("name");
  Date d=Date.valueOf(date);
	//int id=2;
	
	
	
	
    Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection(
			"jdbc:mysql://localhost/cafeproject","root","root");
	System.out.println("Connection Successful");
	
	//int tprice=0;
	int total=0;
	//String price;
	int price1=0;
	//int oid;
	int tprice=0;
	
	String sql1="select * from menu where foodname='"+ts+"'";
	
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery(sql1);
	
	int aid;
	String fn;
	
	
	//int price1;
	System.out.println(sql1);
	
	while (rs.next()){
		aid=rs.getInt("Aid");
		fn=rs.getString("foodname");
		 price1=rs.getInt("price");
		tprice+=price1*qs;
		 total+=tprice;
	}
	
 %>
  <table border="1" id="tab1">
  <tr>
   
  
  <th>Food Name</th>
  
  <th>Quantity</th>
  
  <th>Price</th>
  <th>Total price</th>
  <th>Date</th>
  
   <!-- <th>Order id</th> -->
  </tr>
  <tr>
  <td><%=ts %></td> 
  <td><%=qs %></td>
  <td><%=price1 %></td>
  <td><%=tprice %></td>
  <td><%=d %></td>
  
  
  </tr>
  
 <%--  <tr><td colspan="3">Total Payment</td><td><%=total %></td><td colspan="2"></td></tr> --%>
  
  </table>
 
  
  <form action="menu.jsp" method="post">
  
  <input type="submit" value="Back" class="buttonlogin" id="but">
  
  </form>
  <%
  String sql="insert into custorder(foodname,qty,price,tprice,Date) values(?,?,?,?,?)";
  PreparedStatement ps1=con.prepareStatement(sql);
  System.out.println(sql);
  //ps.setString(1,n);
  ps1.setString(1,ts);
  ps1.setInt(2,qs);
  ps1.setInt(3,price1);
  ps1.setInt(4,total);
 // ps.setInt(5,id);
 ps1.setDate(5, d);
  ps1.executeUpdate();  
  %>
</body>
</html>