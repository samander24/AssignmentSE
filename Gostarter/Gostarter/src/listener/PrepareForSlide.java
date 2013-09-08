package listener;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import servlet.Search;
import another.CreateProjectData;
import another.Pleage;
import another.Project;

/**
 * Application Lifecycle Listener implementation class PrepareForSlide
 *
 */
@WebListener
public class PrepareForSlide implements HttpSessionListener {

    /**
     * Default constructor. 
     */
    public PrepareForSlide() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent arg0) {
        // TODO Auto-generated method stub
    	ServletContext ctx = arg0.getSession().getServletContext();
    	Connection conn = (Connection)arg0.getSession().getServletContext().getAttribute("conn");
    	HttpSession session = arg0.getSession();

    	ArrayList<String> listName =Search.loadAllProject(conn);
    	ArrayList<Project> allProject = new ArrayList<Project>();
    	for(int i=0;i<listName.size();i++)
    	{
    		Project tem = CreateProjectData.createProject(listName.get(i), conn, null);
    		allProject.add(tem);
    	}
    	int sumPleage[] = new int[allProject.size()];
    	
    	for(int i=0; i <allProject.size();i++)
    	{
    		ArrayList<Pleage> allPleage = Pleage.getArrayListPleageByProject(allProject.get(i).getProjectTitle(), conn);
    		int count = 0;
    		for(int j=0; j < allPleage.size();j++)
    		{
    			count += allPleage.get(j).getPleageValue();
    		}
    		sumPleage[i] = count;
    	}
    	
    	int temSumPleage[] = sumPleage.clone();
    	
    	int index[] = new int[sumPleage.length];
    	
    	for(int i=0;i<sumPleage.length;i++)
    	{
    		int wantIndex = -1;
    		int max = -1;
    		for(int j=0;j<sumPleage.length;j++)
    		{
    			if(sumPleage[j]> max)
    			{
    				max = sumPleage[j];
    				wantIndex = j;
    			}
    		}
    		index[i] = wantIndex;
    		sumPleage[wantIndex] = -1;
    	}
    	
    	ArrayList<Project> projectForPage1 = new ArrayList<>(); 
    	ArrayList<Project> projectForPage2 = new ArrayList<>();
    	int []percentForPage1 = new int[4];
    	int []percentForPage2 = new int[4];
    	
    	
    	for(int i=1,temCount=0;i<5&&i<temSumPleage.length;i++,temCount++)
    	{
    		Project tem = CreateProjectData.createProject(allProject.get(index[i]).getProjectTitle(), conn,null);
    		percentForPage1[temCount] = (100*temSumPleage[index[i]])/tem.getFundingGold();
    		if(percentForPage1[temCount]>100)
    		{
    			percentForPage1[temCount] = 100;
    		}
    		projectForPage1.add(tem);
    	}
    	
    	for(int i=5,temCount=0;i<9&&i<temSumPleage.length;i++,temCount++)
    	{
    		Project tem = CreateProjectData.createProject(allProject.get(index[i]).getProjectTitle(), conn,null);
    		percentForPage2[temCount] = (100*temSumPleage[index[i]])/tem.getFundingGold();
    		if(percentForPage2[temCount]>100)
    		{
    			percentForPage2[temCount] = 100;
    		}
    		projectForPage2.add(tem);
    	}
    	
    	session.setAttribute("projectForPage1", projectForPage1);
    	session.setAttribute("projectForPage2", projectForPage2);
    	session.setAttribute("percentForPage1", percentForPage1);
    	session.setAttribute("percentForPage2", percentForPage2);
    	
    	
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent arg0) {
        // TODO Auto-generated method stub
    }
	
}
