package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import another.ChangeString;
import another.Project;
import another.SqlCommand;

/**
 * Servlet implementation class AddReward
 */
@WebServlet("/AddReward")
public class AddReward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddReward() {
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
		
		
	try {
		this.addToDatabase(request, response.getWriter());
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}	
/*		
		PrintWriter out = response.getWriter();
		out.println("Hello");
		out.println(request.getParameter("rewardTitle"));
		out.println(request.getParameter("valueReward"));
		out.println(request.getParameter("description"));
		out.println(request.getParameter("month"));
		out.println(request.getParameter("year"));
	*/
	}
	private void addToDatabase(HttpServletRequest request,PrintWriter out) throws SQLException
	{
		Project project = (Project)request.getSession().getAttribute("addRewardProject");
		Connection conn = (Connection)request.getServletContext().getAttribute("conn");
		String rewardTitle;
		int valueReward;
		String description;
		Date estimatedDelivery;
		int monthday[] = {31,28,31,30,31,30,31,31,30,31,30,31};
		int day;
		int month;
		int year;
		try
		{
			
			rewardTitle = request.getParameter("rewardTitle");
			valueReward = Integer.parseInt(request.getParameter("valueReward"));
			description = request.getParameter("description");
			year =Integer.parseInt(request.getParameter("year"))-1;
			month = Integer.parseInt(request.getParameter("month"));
			if(year%4==0)
			{
				monthday[1] = 29;
			}
			day=monthday[month];
			
			
			description = ChangeString.changeQutoe(description);
			
			Statement stmt = conn.createStatement();
			String cmd = String.format("insert into reward(%s,%s,%s,%s,%s)","rewardTitle","valueReward"
					,"description","estimatedDelivery","projectTitle");
			cmd = cmd+(" value(")+SqlCommand.typeText(rewardTitle)+SqlCommand.typeNumber(valueReward)+SqlCommand.typeText(description)
					+SqlCommand.typeDate(year, month, day)+SqlCommand.typeTextEnd(project.getProjectTitle()); 
					;
			out.print(cmd);
			stmt.execute(cmd);
			request.getSession().removeAttribute("addRewardProject");
		}
		catch(Exception ex)
		{
			out.println(ex.toString());
		}
	}

}
