package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.User;
import another.Reward;
import another.SqlCommand;

/**
 * Servlet implementation class Pleage
 */
@WebServlet("/doP")
public class AddPleage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPleage() {
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
		
		PrintWriter out = response.getWriter();
		
		out.println("Hello");
		
		int pleageValue =Integer.parseInt(request.getParameter("pleageValue")) ;
		String amazonPayment = request.getParameter("amazonPayment");
		String identityName = request.getParameter("identityName");
		String identityLastName = request.getParameter("identityLastName");
		Connection conn = (Connection)request.getServletContext().getAttribute("conn");
		Date datePleage = new Date(System.currentTimeMillis());
		
		
		if(addTodatabase(request, conn,datePleage,out))
		{
			if(this.identity(amazonPayment, identityName, identityLastName))
			{
				request.setAttribute("message", "Success");
				
			}
			else
			{
				request.setAttribute("message", "Identify fail plese check Amazonpayment");
				
				this.delectDatabase(request, conn, datePleage,out);
			}
		}
		else
		{
			request.setAttribute("message", "You can't pleage 2 time to 1 project in 1 day");
		}
		RequestDispatcher dis = request.getRequestDispatcher("ResultPleage.jsp");
		dis.forward(request, response);
	}
	private boolean addTodatabase(HttpServletRequest request,Connection conn,Date datePleage,PrintWriter out)
	{
		try
		{
			HttpSession session = request.getSession();
			int pleageValue =Integer.parseInt(request.getParameter("pleageValue")) ;
			String projectTitle = ((Reward)(session.getAttribute("reward"))).getProjectTitle();
			String email = ((User)(session.getAttribute("loginUser"))).getEmail() ;
			
			int day = datePleage.getDate();
			int month = datePleage.getMonth()+1;
			int year = datePleage.getYear()+1900;
			
			Statement stmt = conn.createStatement();
			String cmd = String.format("insert into pleage (%s,%s,%s,%s) ","pleageValue","projectTitle","email","datePleage");
			cmd = cmd+("value(")+SqlCommand.typeNumber(pleageValue)+SqlCommand.typeText(projectTitle)+
			SqlCommand.typeText(email)+SqlCommand.typeDateEnd(year, month, day);
			out.println(cmd);
			stmt.executeUpdate(cmd);
			request.getSession().removeAttribute("reward");
			return true;
		}
		catch (Exception ex)
		{
			out.println("add database");
			out.println(ex);
		//	request.getSession().removeAttribute("reward");
			return false;
		}
	}
	private void delectDatabase(HttpServletRequest request,Connection conn,Date datePleage,PrintWriter out)
	{
		try
		{
			HttpSession session = request.getSession();
			String projectTitle = ((Reward)(session.getAttribute("reward"))).getProjectTitle();
			String email = ((User)(session.getAttribute("loginUser"))).getEmail() ;
			int day = datePleage.getDate();
			int month = datePleage.getMonth()+1;
			int year = datePleage.getYear()-1900;
			
			
			Statement stmt = conn.createStatement();
			String cmd = String.format("delete from reward where email='%s' and projectTitle='%s' and datePleage='%d-%d-%d'",
					email,projectTitle,year,month,day);
			stmt.executeUpdate(cmd);
		}
		catch(Exception ex)
		{
			out.println("delete");
			out.println(ex);
		}
	}
	
	
	private boolean identity(String amazonPayment,String identityName,String identityLastName)
	{
		return true;
	}
	
}
