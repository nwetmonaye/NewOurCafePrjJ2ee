import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Custloginformenu extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		int rid=0;
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		String name=req.getParameter("user_name");
		String pwd=req.getParameter("password");
		HttpSession sess=req.getSession(true);
		
		 
		boolean result=false;
		Connection con;
		Statement stmt;
		ResultSet rs;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			try {
				
				con=DriverManager.getConnection("jdbc:mysql://localhost/cafeproject?user=root&password=root");
				System.out.println("The connection succeeded");
				String sql="select * from register where CustomerName='"+name+"'and Password='"+pwd+"'";
				
				stmt=con.createStatement();
				rs=stmt.executeQuery(sql);
				while(rs.next()){
					result=true;
					rid=rs.getInt("Rid");
				}
				sess.setAttribute("Username",name);
				sess.setAttribute("Rid", rid);
				//HttpSession ses=req.getSession(true);
				
				stmt.close();
				con.close();
			
			} catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		if(result){
			RequestDispatcher rd=req.getRequestDispatcher("menu.jsp");
			rd.forward(req, resp);
		}
		else {
			out.println("Login failed");
			RequestDispatcher rd=req.getRequestDispatcher("loginpage.jsp");
			rd.include(req, resp);
		}
	}
	

}
