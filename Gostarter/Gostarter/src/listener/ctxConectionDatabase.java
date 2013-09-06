package listener;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ctxConectionDatabase
 *
 */
@WebListener
public class ctxConectionDatabase implements ServletContextListener {

	private Connection conn;
    /**
     * Default constructor. 
     */
    public ctxConectionDatabase() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent arg0) {
    	
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
    		System.out.println(ex);
    	}
    	arg0.getServletContext().setAttribute("conn", conn);
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0) {
        // TODO Auto-generated method stub
    	try
    	{
    		conn.close();
    	}
    	catch(Exception ex)
    	{
    		System.out.println(ex);
    	}
    }
	
}
