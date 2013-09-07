package fillter;

import java.io.IOException;
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

import another.Reward;

/**
 * Servlet Filter implementation class FillterBeforePleage
 */
@WebFilter("/Pleage.jsp")
public class FillterBeforePleage implements Filter {

    /**
     * Default constructor. 
     */
    public FillterBeforePleage() {
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
		
		String nameProject = request.getParameter("nameProject");
		String nameReward = request.getParameter("nameReward");
		Connection conn =(Connection)request.getServletContext().getAttribute("conn");
		
		Reward reward = Reward.createReward(nameReward, nameProject, conn, (HttpServletRequest)request);
		
		if(reward==null)
		{
			
			RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
			dis.forward(request, response);
		}
		else
		{
			((HttpServletRequest)request).getSession().setAttribute("reward", reward);
			request.setAttribute("reward", reward);
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
