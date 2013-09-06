package fillter;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import another.CreateProjectData;
import another.Project;
import beans.User;

/**
 * Servlet Filter implementation class FillterUserProject
 */
@WebFilter("/UserProject.jsp")
public class FillterUserProject implements Filter {

    /**
     * Default constructor. 
     */
    public FillterUserProject() {
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
		// TODO Auto-generated method stubse
		// place your code here
		HttpSession session = ((HttpServletRequest)request).getSession();
		ServletContext ctx = session.getServletContext();
		User loginUser = (User) session.getAttribute("loginUser");
		ArrayList<Project> userProject = new ArrayList<Project>();
		
		try
		{
			userProject=CreateProjectData.getArrayListProject(loginUser.getEmail(),(Connection) ctx.getAttribute("conn"));
		}
		
		catch (Exception ex)
		{
			request.setAttribute("test", ex.toString());
		}
		
		
		int sizeArrayList = userProject.size();
		int numberDiv = (sizeArrayList/3);
		if(sizeArrayList%3!=0)
		{
			numberDiv++;
		}
			
		request.setAttribute("userProject", userProject);
		request.setAttribute("numberDiv", numberDiv);
		
		
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
