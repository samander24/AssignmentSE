package fillter;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import another.Mail;
import beans.User;

/**
 * Servlet Filter implementation class FillterBeforeMailBox
 */
@WebFilter("/MailBox.jsp")
public class FillterBeforeMailBox implements Filter {

    /**
     * Default constructor. 
     */
    public FillterBeforeMailBox() {
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
		
		HttpSession session = ((HttpServletRequest)request).getSession();
		Connection conn = (Connection)request.getServletContext().getAttribute("conn");
		User loginUser = (User)session.getAttribute("loginUser");
		PrintWriter out = response.getWriter();
		
		ArrayList<Mail> allMail = Mail.getArrayListMail(loginUser.getEmail(), conn, out);
		
		request.setAttribute("allMail", allMail);
		request.setAttribute("test", "fillter Pass");
		
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
