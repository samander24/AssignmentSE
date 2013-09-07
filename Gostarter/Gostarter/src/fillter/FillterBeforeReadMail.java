package fillter;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import another.Mail;

/**
 * Servlet Filter implementation class FillterBeforeReadMail
 */
@WebFilter("/ReadMail.jsp")
public class FillterBeforeReadMail implements Filter {

    /**
     * Default constructor. 
     */
    public FillterBeforeReadMail() {
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
		ServletContext ctx = request.getServletContext();
		((HttpServletRequest)request).getSession();
		
		Connection conn = (Connection)ctx.getAttribute("conn");
		PrintWriter out = response.getWriter();
		String source = request.getParameter("source") ;
		String destination = request.getParameter("destination");
		String dateSent = request.getParameter("dateSent");
		int mailNumber = Integer.parseInt(request.getParameter("mailNumber")); 
		
		Mail mail = Mail.createMail(source, destination, dateSent, mailNumber, conn, out);
		
		request.setAttribute("mail",mail );
		
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
