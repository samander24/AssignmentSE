package another;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CreateProjectData {

	public static Project createProject(String passingProjectTitle,Connection conn,HttpServletRequest request) 
	{
		Project answer = null;
		
		String projectTitle ;
		String cetegory ;
		String shortBlurp ;
		int fundingGold ;
		String location  ;
		Date fundingDuration ;	
		
		String urlVideo ;
		String projectDescription ;
		String risksAndChallenges ;
		String urlProfilePhoto ;
		String profileName ;
		String biography ;
		
		String identityName ;
		String identityLastName ;
		String identityAddress ;
		String identityCity ;
		String identityStage ;
		String zipCode ;
		String amazonPayment ;
		String urlProjectPicture;
		String email;
		
		
		if(conn != null)
		{
			try
			{
				Statement stmt = conn.createStatement();
				String cmd = String.format("select * from project where projectTitle='%s'",passingProjectTitle);
				ResultSet obj = stmt.executeQuery(cmd);
				
				 obj.next();
				 projectTitle=obj.getString("projectTitle");
				 cetegory = obj.getString("cetegory");
				 shortBlurp = obj.getString("shortBlurp") ;
				 fundingGold = obj.getInt("fundingGold") ;
				 location  = obj.getString("location") ;
				 fundingDuration = obj.getDate("fundingDuration") ;	
				
				 urlVideo = obj.getString("urlVideo");
				 projectDescription= obj.getString("projectDescription") ;
				 risksAndChallenges= obj.getString("risksAndChallenges") ;
				 urlProfilePhoto= obj.getString("urlProfilePhoto") ;
				 profileName= obj.getString("profileName") ;
				 biography= obj.getString("biography") ;
				
				 identityName= obj.getString("identityName") ;
				 identityLastName= obj.getString("identityLastName") ;
				 identityAddress= obj.getString("identityAddress") ;
				 identityCity = obj.getString("identityCity");
				 identityStage= obj.getString("identityStage") ;
				 zipCode = obj.getString("zipCode");
				 amazonPayment= obj.getString("amazonPayment") ;
				 urlProjectPicture = obj.getString("urlProjectPicture");
				 email = obj.getString("email");
					//----------------------- reChange String --------------------------------------------
				 	projectTitle=ChangeString.reChangeQutoe(projectTitle);
					projectDescription=ChangeString.reChangeQutoe(projectDescription);
					shortBlurp=ChangeString.reChangeQutoe(shortBlurp);
					biography=ChangeString.reChangeQutoe(biography);
					risksAndChallenges=ChangeString.reChangeQutoe(risksAndChallenges);
				//------------------------------------------------------------------------------------- 
				 
				answer = new Project(projectTitle, cetegory, shortBlurp, fundingGold, location, fundingDuration, urlVideo, urlProjectPicture, projectDescription, risksAndChallenges, urlProfilePhoto, profileName, biography, identityName, identityLastName, identityAddress, identityCity, identityStage, zipCode, amazonPayment, email);
				
			}
			catch(Exception ex)
			{
				
				request.setAttribute("test", ex.toString());
				return null;
			}
		}
		return answer;
	}

	public static ArrayList<Project> getArrayListProject(String email,Connection conn) throws SQLException
	{
		String projectTitle ;
		String cetegory ;
		String shortBlurp ;
		int fundingGold ;
		String location  ;
		Date fundingDuration ;	
		
		String urlVideo ;
		String projectDescription ;
		String risksAndChallenges ;
		String urlProfilePhoto ;
		String profileName ;
		String biography ;
		
		String identityName ;
		String identityLastName ;
		String identityAddress ;
		String identityCity ;
		String identityStage ;
		String zipCode ;
		String amazonPayment ;
		String urlProjectPicture;
		
		
		Statement stmt = conn.createStatement();
		ArrayList<Project> answer = new ArrayList<Project>();
		String cmd =String.format("select * from project where email ='%s'",email);
		ResultSet obj = stmt.executeQuery(cmd); 
		
		while(obj.next())
		{
			 projectTitle=obj.getString("projectTitle");
			 cetegory = obj.getString("cetegory");
			 shortBlurp = obj.getString("shortBlurp") ;
			 fundingGold = obj.getInt("fundingGold") ;
			 location  = obj.getString("location") ;
			 fundingDuration = obj.getDate("fundingDuration") ;	
			
			 urlVideo = obj.getString("urlVideo");
			 projectDescription= obj.getString("projectDescription") ;
			 risksAndChallenges= obj.getString("risksAndChallenges") ;
			 urlProfilePhoto= obj.getString("urlProfilePhoto") ;
			 profileName= obj.getString("profileName") ;
			 biography= obj.getString("biography") ;
			
			 identityName= obj.getString("identityName") ;
			 identityLastName= obj.getString("identityLastName") ;
			 identityAddress= obj.getString("identityAddress") ;
			 identityCity = obj.getString("identityCity");
			 identityStage= obj.getString("identityStage") ;
			 zipCode = obj.getString("zipCode");
			 amazonPayment= obj.getString("amazonPayment") ;
			 urlProjectPicture = obj.getString("urlProjectPicture");
			 
			//----------------------- reChange String --------------------------------------------
			 	projectTitle=ChangeString.reChangeQutoe(projectTitle);
				projectDescription=ChangeString.reChangeQutoe(projectDescription);
				shortBlurp=ChangeString.reChangeQutoe(shortBlurp);
				biography=ChangeString.reChangeQutoe(biography);
				risksAndChallenges=ChangeString.reChangeQutoe(risksAndChallenges);
			//------------------------------------------------------------------------------------- 
			 
			 
			 
			 Project temProject = new Project(projectTitle, cetegory, shortBlurp, fundingGold, location, fundingDuration, urlVideo, urlProjectPicture, projectDescription, risksAndChallenges, urlProfilePhoto, profileName, biography, identityName, identityLastName, identityAddress, identityCity, identityStage, zipCode, amazonPayment,email);
			 answer.add(temProject);
		}
		return answer;
	}

}
