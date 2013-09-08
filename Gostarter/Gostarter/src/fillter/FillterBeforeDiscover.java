package fillter;

import java.io.IOException;
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

import servlet.Search;
import another.CreateProjectData;
import another.Pleage;
import another.Project;

/**
 * Servlet Filter implementation class FillterBeforeDiscover
 */
@WebFilter("/Discover.jsp")
public class FillterBeforeDiscover implements Filter {

    /**
     * Default constructor. 
     */
    public FillterBeforeDiscover() {
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

		Connection conn = (Connection)request.getServletContext().getAttribute("conn");
		ArrayList<String> allProjectTitle = Search.loadAllProject(conn);
		ArrayList<Project> allProjcet = new ArrayList<>();
		
		int perCentProject[] = new int[allProjectTitle.size()];
		
		for(int i=0;i<allProjectTitle.size();i++)
		{
			Project tem = CreateProjectData.createProject(allProjectTitle.get(i), conn,(HttpServletRequest)request);
			allProjcet.add(tem);
		}		
		
		for(int i=0;i<allProjectTitle.size();i++)
		{
			ArrayList<Pleage> allPleages = Pleage.getArrayListPleageByProject(allProjectTitle.get(i), conn);
			int count = 0;
			for(int j=0;j<allPleages.size();j++)
			{
				count+= allPleages.get(j).getPleageValue();
			}
			perCentProject[i] = (count*100)/allProjcet.get(i).getFundingGold();
		}
		
		int numDiv = allProjcet.size()/3;
		if(allProjcet.size()%3!=0)
		{
			numDiv++;
		}
		
		
		
		request.setAttribute("allProject", allProjcet);
		request.setAttribute("perCentProject",perCentProject );
		request.setAttribute("numDiv", numDiv);
		
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
