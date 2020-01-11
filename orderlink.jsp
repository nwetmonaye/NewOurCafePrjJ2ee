<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
 <form action="order.jsp" method="post" >


<table id="tab">
<tr>

<tr>
<td>Choose Food Name:</td>

<td><select name="tselect">

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(
		"jdbc:mysql://localhost/cafeproject","root","root");
System.out.println("Connection Successful");
String fname;
String sql2="select foodname from menu";
		Statement stmt1=con.createStatement();
		ResultSet rs1=stmt1.executeQuery(sql2);
		while(rs1.next()){
		fname=rs1.getString("foodname");	
		%>
		<option><%=fname %></option>
<%
		}
 %>
 </select></td>
</tr>
<tr>
<td>Quantity:</td>
<td><select name="qtyselect">
<option>1</option>
<option>2</option>
<option>3</option>
<option>4</option>
<option>5</option>
<option>6</option>
<option>7</option>
<option>8</option>
<option>9</option>
<option>10</option>
<option>11</option>
<option>12</option>
<option>13</option>
<option>14</option>
<option>15</option>
<option>16</option>
<option>17</option>
<option>18</option>
<option>19</option>
<option>20</option>

</select></td></tr>


<tr><td><label for="birthdate">Enter Date</label></td>
				<td><input type="text" name="birthdate" maxlength="400"	size="15"   
					style="background-color: rgb(255, 255, 160);" readonly="readonly" id="calendar">
					<button id="trigger">...</button> 
					<script type="text/javascript">
								//         
								Zapatec.Calendar.setup({
									firstDay : 1,
									electric : false,
									inputField : "calendar",
									button : "trigger",
									ifFormat : "%Y-%m-%d",
									daFormat : "%Y-%m-%d"
								});
								//
							</script>
					
			</td></tr>
				<!-- <input type="submit" value="Save" name="btnSubmit" /> -->
<tr><td colspan="2"><input type="submit" value="Order" class="buttonlogin"/></td></tr>
</table>
</form>

</body>
</html>