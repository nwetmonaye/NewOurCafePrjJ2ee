<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
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
          <li>a href="menu.jsp"></a></li>
         
          
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


Connection con=null;
//Statement stmt=null;
Statement stmt=null;
ResultSet rs=null;

	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost/cafeproject?user=root&password=root";
	Connection	conn = DriverManager.getConnection(url);
	System.out.println("The connection succeeded");
	String fname=request.getParameter("fname");
	int pric=Integer.parseInt(request.getParameter("price"));
	PreparedStatement ps = conn.prepareStatement("insert into menu(Aid,foodname,price) values(null,?,?)");
	
	ps.setString(1, fname);
	ps.setInt(2, pric);
	ps.executeUpdate();
	conn.close();
	ps.close();
	
	 %>
	 <p id="dsucc">Insert Successful</p>
	
	 <!-- <a href="insert.jsp" class="l">Back</a> -->


  <form action="admincontrol.jsp">
				<input type="submit" value="Back" class="buttonlogin">
				</form>
</body>
</html>