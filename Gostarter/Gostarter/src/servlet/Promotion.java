package servlet;

import java.io.IOException;
import java.sql.Connection;
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
 * Servlet implementation class Promotion
 */
@WebServlet("/Promotion")
public class Promotion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Promotion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ServletContext ctx = request.getServletContext();
		Connection conn = (Connection)ctx.getAttribute("conn");
		String nameProject = request.getParameter("nameProject");
		
		Project project = CreateProjectData.createProject(nameProject, conn, request);
		
		ArrayList<Pleage> allPleages = Pleage.getArrayListPleageByProject(nameProject, conn);
		
		int count=0;
		for(int i=0;i<allPleages.size();i++)
		{
			count+= allPleages.get(i).getPleageValue();
		}
		int percent = (100*count)/project.getFundingGold();
		if(percent>100)
		{
			percent = 100;
		}
		
		ctx.setAttribute("firstProject", project);
		ctx.setAttribute("percentFirst", percent);
		
		RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
		dis.forward(request, response);
		
	}

}
