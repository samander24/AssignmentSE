package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import another.ChangeString;
import another.SqlCommand;
import beans.User;

import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class StartProject
 */
@WebServlet({ "/StartProject"})
public class StartProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StartProject() {
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
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
	//--------------------------- Basic----------------------------------------------------------	
		String projectTitle =(String)request.getParameter("projectTitle");
		String cetegory = (String)request.getParameter("cetegory");
		String shortBlurp = (String)request.getParameter("shortBlurp");
		String fundingGold = (String)request.getParameter("fundingGoal");
		String location = (String)request.getParameter("location");
		int day =Integer.parseInt( request.getParameter("day"));
		int month = Integer.parseInt( request.getParameter("month"));
		int year = Integer.parseInt( request.getParameter("year"));
				
		
		out.println(projectTitle+"</br>");
		out.println(cetegory+"</br>");
		out.println(shortBlurp+"</br>");
		out.println(fundingGold+"</br>");
		out.println(location+"</br>");
		out.println(day+"</br>");
		out.println(month+"</br>");
		out.println(year+"</br>");
		
		
		
		out.println("---------------------------------------------------------------------------</br>");
		
		
	//-------------------------------------------------------------------------------------	
	
		
	//------------------------------- Story ------------------------------------------------------	
		
		String urlVideo = request.getParameter("urlVideo");
		String projectDescription = request.getParameter("projectDescription");
		String risksAndChallenges = request.getParameter("risksAndChallenges");
		String urlProjectPicture = request.getParameter("urlProjectPicture");
		
		out.println(urlVideo+"</br>");
		out.println(projectDescription+"</br>");
		out.println(risksAndChallenges+"</br>");
		out.println("---------------------------------------------------------------------------</br>");
	//--------------------------------------------------------------------------------------------	
		
	//----------------------------- About you---------------------------------------------------	
		
		String urlProfilePhoto = request.getParameter("urlProfilePhoto");
		String profileName = request.getParameter("profileName");
		String biography = request.getParameter("biography");
		
		out.println(urlProfilePhoto+"</br>");
		out.println(profileName+"</br>");
		out.println(biography+"</br>");
		out.println("---------------------------------------------------------------------------</br>");
		
	//-----------------------------------------------------------------------------------------	
	
	//--------------------------- Account---------------------------------------------------------
		String amazonPayment = request.getParameter("amazonPayment");
		String identityName = request.getParameter("identityName");
		String identityLastName = request.getParameter("identityLastName");
		String identityAddress = request.getParameter("identityAddress");
		String identityCity = request.getParameter("identityCity");
		String identityStage = request.getParameter("identityStage");
		String zipCode = request.getParameter("zipCode");
		
		out.println(amazonPayment+"</br>");
		out.println(identityName+"</br>");
		out.println(identityLastName+"</br>");
		out.println(identityAddress+"</br>");
		out.println(identityCity+"</br>");
		out.println(identityStage+"</br>");
		out.println(zipCode+"</br>");
	//--------------------------------------------------------------------------------------------	
		try
		{
			if(this.addToDatabase(request, out))
			{
				request.setAttribute("message", "Start project complete plese add reward for your project");
				request.setAttribute("urlResult","Home.jsp" );
			}
			
		}
		
		catch(Exception ex)
		{
			request.setAttribute("message",ex.toString());
			request.setAttribute("urlResult","StartProject.jsp" );
		}
		
		
		RequestDispatcher dis = request.getRequestDispatcher("ResultStartProject.jsp");
//		dis.forward(request, response);
		
		
	}
	
	private boolean addToDatabase(HttpServletRequest request,PrintWriter out) throws Exception
	{
		Connection conn = (Connection) getServletContext().getAttribute("conn");
		
		
		
		String projectTitle =(String)request.getParameter("projectTitle");
		String cetegory = (String)request.getParameter("cetegory");
		String shortBlurp = (String)request.getParameter("shortBlurp");
		String fundingGold = (String)request.getParameter("fundingGoal");
		String location = (String)request.getParameter("location");
		int day =Integer.parseInt( request.getParameter("day"));
		int month = Integer.parseInt( request.getParameter("month"));
		int year = Integer.parseInt( request.getParameter("year"));
		
		String urlVideo = request.getParameter("urlVideo");
		String urlProjectPicture = request.getParameter("urlProjectPicture");
		String projectDescription = request.getParameter("projectDescription");
		String risksAndChallenges = request.getParameter("risksAndChallenges");
		
		String urlProfilePhoto = request.getParameter("urlProfilePhoto");
		String profileName = request.getParameter("profileName");
		String biography = request.getParameter("biography");
		
		String identityName = request.getParameter("identityName");
		String identityLastName = request.getParameter("identityLastName");
		String identityAddress = request.getParameter("identityAddress");
		String identityCity = request.getParameter("identityCity");
		String identityStage = request.getParameter("identityStage");
		String zipCode = request.getParameter("zipCode");
		String amazonPayment = request.getParameter("amazonPayment");
		
		projectTitle=ChangeString.changeQutoe(projectTitle);
		projectDescription=ChangeString.changeQutoe(projectDescription);
		shortBlurp=ChangeString.changeQutoe(shortBlurp);
		biography=ChangeString.changeQutoe(biography);
		risksAndChallenges=ChangeString.changeQutoe(risksAndChallenges);
		
		try
		{
			java.sql.Statement stmt = conn.createStatement();
			String cmd = String.format("insert into project (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s) "
					,"projectTitle","cetegory","shortBlurp","fundingDuration","fundingGold","location","urlVideo","urlProjectPicture","projectDescription"
					,"risksAndChallenges","urlProfilePhoto","profileName","biography","amazonPayment","identityName"
					,"identityLastName","identityAddress","identityCity","identityStage","zipCode","email");					
					cmd = cmd+"value("+SqlCommand.typeText(projectTitle)+SqlCommand.typeText(cetegory)+
							SqlCommand.typeText(shortBlurp)+SqlCommand.typeDate(year, month, day)+
							SqlCommand.typeNumber(fundingGold)+SqlCommand.typeText(location)+
							SqlCommand.typeText(urlVideo)+SqlCommand.typeText(urlProjectPicture)+SqlCommand.typeText(projectDescription)+
							SqlCommand.typeText(risksAndChallenges)+SqlCommand.typeText(urlProfilePhoto)+
							SqlCommand.typeText(profileName)+SqlCommand.typeText(biography)+
							SqlCommand.typeText(amazonPayment)+
							SqlCommand.typeText(identityName)+SqlCommand.typeText(identityLastName)+
							SqlCommand.typeText(identityAddress)+SqlCommand.typeText(identityCity)+
							SqlCommand.typeText(identityStage)+SqlCommand.typeText(zipCode)+
							SqlCommand.typeTextEnd(((User)request.getSession().getAttribute("loginUser")).getEmail());
					out.println(cmd);
					
					stmt.executeUpdate(cmd);
					
		}
		catch(Exception ex)
		{
			out.println(ex);
			
			throw ex;
		}	
		return true;
	}
}
