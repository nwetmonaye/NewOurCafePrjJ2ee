<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
          <li><a href="masteradmin.jsp"></a></li>
         
          
        </ul>
  </div>
  </div>
  <%
  String name=request.getParameter("user_name");
	String pwd=request.getParameter("password");
	boolean result=false;
	if(name.equals("Rose")&&pwd.equals("m1234"))
	{
		result=true;
	}
	if(result)
	{
		RequestDispatcher rd=request.getRequestDispatcher("admincontrolpage.jsp");
		rd.forward(request, response);
	}
	else {
		out.println("Login failed");
		RequestDispatcher rd=request.getRequestDispatcher("AdminPage.jsp");
		rd.include(request, response);
	}
  
  %>
</body>
</html>