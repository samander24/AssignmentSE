package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import another.CreateProjectData;
import another.Pleage;
import another.Project;

/**
 * Servlet implementation class Search
 */
@WebServlet("/Search")
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Search() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ServletContext ctx = request.getServletContext();
		Connection conn = (Connection)ctx.getAttribute("conn");
		PrintWriter out = response.getWriter();
		String keyWord = request.getParameter("keyWord");
		ArrayList<String> allNameProject = this.loadAllProject(conn);
		ArrayList<String> match = new ArrayList<>();
		
		for(int i=0;i<allNameProject.size();i++)
		{
			String tem = allNameProject.get(i);
			
			for(int j=0;j<tem.length();j++)
			{
				if(tem.regionMatches(true,j, keyWord, 0, keyWord.length()))
				{
					match.add(tem);
					break;
				}
			}
		}
		
		for(int i=0;i<match.size();i++)
		{
			out.println(match.get(i));
		}
		
		ArrayList<Project> discoverProject = new ArrayList<Project>();
		
		for(int i=0;i<match.size();i++)
		{
			String nameProject = match.get(i);
			Project tem = CreateProjectData.createProject(nameProject, conn, request);
			discoverProject.add(tem);
		}
		int numberDiv = discoverProject.size()/3;
		
		if(discoverProject.size()%3!=0)
		{
			numberDiv++;
		}

		int percent[] = new int[discoverProject.size()];
		
		
		for(int i=0;i<discoverProject.size();i++)
		{
			Project tem = discoverProject.get(i);
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
		request.setAttribute("numberDiv", numberDiv);
		request.setAttribute("discoverProject", discoverProject);
		RequestDispatcher dis = request.getRequestDispatcher("SearchResult.jsp");
		dis.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	
	public static ArrayList<String> loadAllProject(Connection conn)
	{
		try
		{
			ArrayList<String> allNameProject = new ArrayList<>();
			Statement stmt = conn.createStatement();
			String cmd = "select projectTitle from project";
			ResultSet obj = stmt.executeQuery(cmd);
			
			while(obj.next())
			{
				allNameProject.add(obj.getString("projectTitle"));
			}
			
			return allNameProject;
		}
		catch(Exception ex)
		{
			return null;
		}
		
		
	}

}
