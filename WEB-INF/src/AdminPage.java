import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AdminPage extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		String name=req.getParameter("user_name");
		String pwd=req.getParameter("password");
		boolean result=false;
		if(name.equals("Rose")&&pwd.equals("m1234"))
		{
			result=true;
		}
		if(result)
		{
			RequestDispatcher rd=req.getRequestDispatcher("admincontrol.jsp");
			rd.forward(req, resp);
		}
		else {
			out.println("Login failed");
			RequestDispatcher rd=req.getRequestDispatcher("AdminPage.jsp");
			rd.include(req, resp);
		}
	}
	

}
