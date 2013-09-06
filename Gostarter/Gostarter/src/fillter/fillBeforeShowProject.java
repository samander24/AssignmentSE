package fillter;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

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
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import another.CreateProjectData;
import another.Project;

/**
 * Servlet Filter implementation class fillBeforeShowProject
 */
@WebFilter("/ShowProject.jsp")
public class fillBeforeShowProject implements Filter {

    /**
     * Default constructor. 
     */
    public fillBeforeShowProject() {
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
		Project project = null;
		
		HttpServletRequest temRequest = (HttpServletRequest) request;
		
		HttpSession session = temRequest.getSession();
		
		PrintWriter out = response.getWriter();
		
		Connection conn = (Connection) request.getServletContext().getAttribute("conn");
		
		
		project=CreateProjectData.createProject(request.getParameter("nameProject"),conn,(HttpServletRequest)(request) );
		
		if(project!=null)
		{
			request.setAttribute("project",project);
		}
		else
		{
			RequestDispatcher dis = request.getRequestDispatcher("Home.jsp"); 
			dis.forward(request, response);
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

}
