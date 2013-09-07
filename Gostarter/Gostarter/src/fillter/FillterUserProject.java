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
import another.Pleage;
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
		Connection conn = (Connection)ctx.getAttribute("conn");
		
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
		
		int percent[] = new int[userProject.size()]; 
		
		for(int i=0;i<userProject.size();i++)
		{
			Project tem = userProject.get(i);
			ArrayList<Pleage> allPleages = Pleage.getArrayListPleageByProject(tem.getProjectTitle(), conn);
			int sum = 0;
			for(int j=0;j<allPleages.size();j++)
			{
				sum+=allPleages.get(j).getPleageValue();
			}
			percent[i] = (100*sum)/tem.getFundingGold();
			if(percent[i]>100)
			{
				percent[i] = 100;
			}
		}
		
		
		request.setAttribute("percent", percent);	
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
