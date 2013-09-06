package fillter;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import another.CreateProjectData;
import another.Project;
import beans.User;

/**
 * Servlet Filter implementation class FillterBeforeAddReward
 */
@WebFilter("/AddReward.jsp")
public class FillterBeforeAddReward implements Filter {

    /**
     * Default constructor. 
     */
    public FillterBeforeAddReward() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		
		boolean check = this.checkProjectTitle((HttpServletRequest)request,response.getWriter());
		
		if(!check)
		{
			
			RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
			dis.forward(request, response);
		}
		else
		{
			Project project =CreateProjectData.createProject(request.getParameter("nameProject"),(Connection) request.getServletContext().getAttribute("conn"),(HttpServletRequest) request);
			((HttpServletRequest)request).getSession().setAttribute("addRewardProject", project);
		}
		
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}
	
	private boolean checkProjectTitle(HttpServletRequest request ,PrintWriter out) 
	{
		try
		{
			int i;
			Connection conn =(Connection)request.getServletContext().getAttribute("conn");
			Statement stmt = conn.createStatement();
			String email = ((User)request.getSession().getAttribute("loginUser")).getEmail();
			String projectTitle = request.getParameter("nameProject");
			
			String cmd = String.format("select projectTitle from project where projectTitle = '%s' and email='%s' ",projectTitle,email);
			
			ResultSet obj =stmt.executeQuery(cmd);
			return obj.next();
		}
		catch(Exception ex)
		{
			out.println(ex.toString());
			return false;
		}
		
	}

}
