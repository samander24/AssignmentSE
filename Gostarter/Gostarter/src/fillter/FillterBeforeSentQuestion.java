package fillter;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import another.CreateProjectData;
import another.Project;

/**
 * Servlet Filter implementation class FillterBeforeSentQuestion
 */
@WebFilter("/SentQuestion.jsp")
public class FillterBeforeSentQuestion implements Filter {

    /**
     * Default constructor. 
     */
    public FillterBeforeSentQuestion() {
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
		Connection conn = (Connection) request.getServletContext().getAttribute("conn");
		String projectTitle = request.getParameter("nameProject");
		Project project = CreateProjectData.createProject(projectTitle, conn,(HttpServletRequest) request);
		
		request.setAttribute("emailName", project.getEmail());
		
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
