package listener;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.util.ArrayList;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import another.CreateProjectData;
import another.Pleage;
import another.Project;
import servlet.Search;

/**
 * Application Lifecycle Listener implementation class PrepareForHome
 *
 */
@WebListener
public class PrepareForHome implements ServletContextListener, ServletContextAttributeListener {

    /**
     * Default constructor. 
     */
    public PrepareForHome() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent arg0) {
        // TODO Auto-generated method stub
    	Connection conn;
    	
    	try
    	{
	    	Class.forName("com.mysql.jdbc.Driver"); 
	        String url = "jdbc:mysql://localhost:3306/gostarter"; 
	        String user = "root";
	        String pwd = "samander";
	        conn = DriverManager.getConnection(url, user, pwd);
	        DatabaseMetaData dbmd = conn.getMetaData();
    	}
    	catch(Exception ex)
    	{
    		conn = null;
    		System.out.println(ex);
    	}
    	
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
    	int percentFirst = (100*temSumPleage[0])/allProject.get(index[0]).getFundingGold();
    	
    	if(percentFirst>100)
    	{
    		percentFirst = 100;
    	}
    	
    	arg0.getServletContext().setAttribute("firstProject", allProject.get(index[0]));
    	arg0.getServletContext().setAttribute("percentFirst", percentFirst);
    	arg0.getServletContext().setAttribute("pleageFirst", temSumPleage[0]);
 
    }

	/**
     * @see ServletContextAttributeListener#attributeAdded(ServletContextAttributeEvent)
     */
    public void attributeAdded(ServletContextAttributeEvent arg0) {
        // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextAttributeListener#attributeReplaced(ServletContextAttributeEvent)
     */
    public void attributeReplaced(ServletContextAttributeEvent arg0) {
        // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextAttributeListener#attributeRemoved(ServletContextAttributeEvent)
     */
    public void attributeRemoved(ServletContextAttributeEvent arg0) {
        // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0) {
        // TODO Auto-generated method stub
    }
    
    
	
}
