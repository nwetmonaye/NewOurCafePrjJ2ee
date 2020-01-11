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
          <li>a href="menu.jsp"></a></li>
         
          
        </ul>
  </div>
  </div>
  <%
  String name=request.getParameter("cname");
	String pwd=request.getParameter("pass");
	String ph=request.getParameter("phno");
	String address=request.getParameter("add");
	
	ResultSet rs=null;
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/cafeproject?user=root&password=root");
	System.out.println("The connection succeeded");
	String sql="insert into register values(null,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(sql);
	Statement stm=con.createStatement();
	
	
	ps.setString(1, name);
	ps.setString(2, pwd);
	ps.setString(3, ph);
	ps.setString(4, address);
	
	ps.executeUpdate();
	
  
  
  %>
  <h1>Your registration is successful!</h1>
  <form action="customer.jsp">
  <input type="submit" value="Back" class="buttonlogin"/>
  </form>
  
  <!--  <div>
        <p id="templatemo_footer">
         Our Cafe Project>>>>>> 
          
        
  </div>  -->

</body>
</html>