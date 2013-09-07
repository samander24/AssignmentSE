package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import another.ChangeString;
import another.SqlCommand;
import beans.User;

/**
 * Servlet implementation class SentMail
 */
@WebServlet("/SentMail")
public class SentMail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SentMail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Connection conn= (Connection)request.getServletContext().getAttribute("conn");
		PrintWriter out = response.getWriter();
		
		
		if(	this.addToDatabase(request, conn, out))
		{
			request.setAttribute("message","sentComplete");
		}
		else
		{
			request.setAttribute("message", "sentFail");
		}
		RequestDispatcher dis = request.getRequestDispatcher("ResultPleage.jsp");
		dis.forward(request, response);
		
	}
	
	private boolean addToDatabase(HttpServletRequest request,Connection conn,PrintWriter out)
	{
		try
		{
			String source ;
			String destination;
			Date dateSent;
			int mailNumber;
			String title;
			String description;
			
			Statement stmt = conn.createStatement();
			HttpSession session = request.getSession();
			User loginUser = (User)session.getAttribute("loginUser");
			
			source = loginUser.getEmail();
			destination = request.getParameter("destination");
			dateSent = new Date(System.currentTimeMillis());
			title = request.getParameter("title");
			mailNumber = (int)(Math.random()*100000000);
			description = request.getParameter("description");
			int year = dateSent.getYear()+1900;
			int month = dateSent.getMonth()+1;
			int day = dateSent.getDate();
			
			title = ChangeString.changeQutoe(title);
			description = ChangeString.changeQutoe(description);
			
			
			String cmd = String.format("insert into mail (%s,%s,%s,%s,%s,%s) ","source","destination","dateSent",
					"title","mailNumber","description");
			cmd = cmd+"value("+SqlCommand.typeText(source)+SqlCommand.typeText(destination)+SqlCommand.typeDate(year, month, day)
					+SqlCommand.typeText(title)+SqlCommand.typeNumber(mailNumber)+SqlCommand.typeTextEnd(description);
			out.println(cmd);
			stmt.executeUpdate(cmd);
			return true;
		}
		catch(Exception ex)
		{
			out.println(ex);
			return false;
		}
	}
	

}
