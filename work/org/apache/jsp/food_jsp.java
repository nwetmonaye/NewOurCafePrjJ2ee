/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.26
 * Generated at: 2018-11-13 10:00:09 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class food_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<link href=\"templatemo_style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"calendar/zapatec/zpcal/themes/wood.css\" />\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"calendar/zapatec/zpcal/utils/zapatec.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"calendar/zapatec/zpcal/src/calendar.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"calendar/zapatec/zpcal/lang/calendar-en.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");

	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection(
			"jdbc:mysql://localhost/cafeproject","root","root");
	System.out.println("Connection Successful");
	
      out.write("\t\r\n");
      out.write("\t<h1>Menu List</h1>\r\n");
      out.write("\t<div id=\"templatemo_header\">\r\n");
      out.write("  <div id=\"templatemo_site_title\">Cafe</div>\r\n");
      out.write("  </div>\r\n");
      out.write("    \r\n");
      out.write("    <div>\r\n");
      out.write("        <ul class=\"solidblockmenu\">\r\n");
      out.write("        <li><a href=\"juice.jsp\">JUICE</a></li>\r\n");
      out.write("        <li><a href=\"food.jsp\">FOOD</a></li>\r\n");
      out.write("          <li><a href=\"snack.jsp\">SNACK</a></li>\r\n");
      out.write("          <li><a href=\"coffee.jsp\">COFFEE</a></li>\r\n");
      out.write("         </ul>\r\n");
      out.write("  </div>\r\n");
      out.write("  ");

		String sql1="select * from menu where Aid>"+10+" and "+"Aid<"+20;
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery(sql1);
		
      out.write("\r\n");
      out.write("\t\t<table border=\"1\">\r\n");
      out.write("\t<tr id=\"ftr\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<th>Food ID</th>\r\n");
      out.write("\t\t<!-- <th>Food Image</th> -->\r\n");
      out.write("\t\t<th>Food Name</th>\r\n");
      out.write("\t\t<th>Price</th>\t\t\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t");

		while (rs.next()){
			Integer id=rs.getInt("Aid");
			
			//String image=rs.getString("image");
			String fname=rs.getString("foodname");
			String price1=rs.getString("price");
			
	
      out.write("\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\r\n");
      out.write("\t<td>");
      out.print(id );
      out.write("</td>\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("\t<td>");
      out.print(fname );
      out.write("</td>\r\n");
      out.write("\t<td>");
      out.print(price1 );
      out.write("</td>\r\n");
      out.write("\t\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t");
} 
      out.write("\t\r\n");
      out.write("\t</table>\r\n");
      out.write("\t<form action=\"order.jsp\" method=\"post\">\r\n");
      out.write("<p>If you order food, enter textbox.</p>\r\n");
      out.write("Select the food name:\r\n");
      out.write("<table>\r\n");
      out.write("<tr>\r\n");
      out.write("<td>Enter Name:</td>\r\n");
      out.write("<td><input type=\"text\" name=\"name\"/></td></tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td>Choose Food Name:</td>\r\n");
      out.write("<td><select name=\"tselect\">\r\n");
      out.write("<!-- option>Rice</option> -->\r\n");
      out.write("<option>Ness Cafe</option>\r\n");
      out.write("<option>Primier</option>\r\n");
      out.write("<option>Super</option>\r\n");
      out.write("<option>Sunday</option>\r\n");
      out.write("<option>Affogato</option>\r\n");
      out.write("<option>Barraquito</option>\r\n");
      out.write("<option>Bonbon</option>\r\n");
      out.write("<option>Caffe crema</option>\r\n");
      out.write("\r\n");
      out.write("<option>Orange juice</option>\r\n");
      out.write("<option>Apple juice</option>\r\n");
      out.write("<option>Guava juice</option>\r\n");
      out.write("<option>Grape juice</option>\r\n");
      out.write("<option>Pineapple juice</option>\r\n");
      out.write("<option>Sapota juice</option>\r\n");
      out.write("<option>Mango juice</option>\r\n");
      out.write("<option>Strawberry juice</option>\r\n");
      out.write("<option>Lychee juice</option>\r\n");
      out.write("<option>Dragon Fruit juice</option>\r\n");
      out.write("\r\n");
      out.write("<option>Hamburger</option>\r\n");
      out.write("<option>Sandwich</option>\r\n");
      out.write("<option>Sea Food Pizza</option>\r\n");
      out.write("<option>Meat Pizza</option>\r\n");
      out.write("<option>Vegetable Pizza</option>\r\n");
      out.write("<option>Bread</option>\r\n");
      out.write("<option>Cheese</option>\r\n");
      out.write("<option>Toast</option>\r\n");
      out.write("<option>French Fries</option>\r\n");
      out.write("<option>Chicken as food</option>\r\n");
      out.write("<option>Hot Dog</option>\r\n");
      out.write("<option>Pasta and Noodles</option>\r\n");
      out.write("<option>Steak</option>\r\n");
      out.write("<option>Cake</option> \r\n");
      out.write("\r\n");
      out.write("<option>Potato chip</option>\r\n");
      out.write("<option>Crackers</option>\r\n");
      out.write("<option>Peanut</option>\r\n");
      out.write("<option>Popcorn</option>\r\n");
      out.write("<option>Jerky</option>\r\n");
      out.write("<option>Pretzels</option>\r\n");
      out.write("<option>Yogurt</option>\r\n");
      out.write("<option>Chocolate</option>\r\n");
      out.write("<option>Donuts</option>\r\n");
      out.write("<option>Dried fruits</option>\r\n");
      out.write("<option>Snack Cake</option>\r\n");
      out.write("<option>Ice Pops</option>\r\n");
      out.write("<option>Cheese Puffs</option>\r\n");
      out.write("\r\n");
      out.write("</select>\r\n");
      out.write("</td></tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td>Quantity:</td>\r\n");
      out.write("<td><select name=\"qtyselect\">\r\n");
      out.write("<option>1</option>\r\n");
      out.write("<option>2</option>\r\n");
      out.write("<option>3</option>\r\n");
      out.write("<option>4</option>\r\n");
      out.write("<option>5</option>\r\n");
      out.write("<option>6</option>\r\n");
      out.write("<option>7</option>\r\n");
      out.write("<option>8</option>\r\n");
      out.write("<option>9</option>\r\n");
      out.write("<option>10</option>\r\n");
      out.write("</select></td></tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<tr><td><label for=\"birthdate\">Enter Date</label></td>\r\n");
      out.write("\t\t\t\t<td><input type=\"text\" name=\"birthdate\" maxlength=\"400\"\tsize=\"15\"   \r\n");
      out.write("\t\t\t\t\tstyle=\"background-color: rgb(255, 255, 160);\" readonly=\"readonly\" id=\"calendar\">\r\n");
      out.write("\t\t\t\t\t<button id=\"trigger\">...</button> \r\n");
      out.write("\t\t\t\t\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t\t\t\t\t\t\t//         \r\n");
      out.write("\t\t\t\t\t\t\t\tZapatec.Calendar.setup({\r\n");
      out.write("\t\t\t\t\t\t\t\t\tfirstDay : 1,\r\n");
      out.write("\t\t\t\t\t\t\t\t\telectric : false,\r\n");
      out.write("\t\t\t\t\t\t\t\t\tinputField : \"calendar\",\r\n");
      out.write("\t\t\t\t\t\t\t\t\tbutton : \"trigger\",\r\n");
      out.write("\t\t\t\t\t\t\t\t\tifFormat : \"%Y-%m-%d\",\r\n");
      out.write("\t\t\t\t\t\t\t\t\tdaFormat : \"%Y-%m-%d\"\r\n");
      out.write("\t\t\t\t\t\t\t\t});\r\n");
      out.write("\t\t\t\t\t\t\t\t//\r\n");
      out.write("\t\t\t\t\t\t\t</script>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t</td></tr>\r\n");
      out.write("\t\t\t\t<!-- <input type=\"submit\" value=\"Save\" name=\"btnSubmit\" /> -->\r\n");
      out.write("<tr><td colspan=\"2\"><input type=\"submit\" value=\"Order\" class=\"buttonlogin\"/></td></tr>\r\n");
      out.write("</table>\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
