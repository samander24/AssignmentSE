package another;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Time;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

public class Pleage {
	
	String projectTitle;
	String email;
	int pleageValue;
	Date datePleage;
	public Pleage(String projectTitle, String email, int pleageValue,
			Date datePleage) {
		super();
		this.projectTitle = projectTitle;
		this.email = email;
		this.pleageValue = pleageValue;
		this.datePleage = datePleage;
	}
	public String getProjectTitle() {
		return projectTitle;
	}
	public void setProjectTitle(String projectTitle) {
		this.projectTitle = projectTitle;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getPleageValue() {
		return pleageValue;
	}
	public void setPleageValue(int pleageValue) {
		this.pleageValue = pleageValue;
	}
	public Date getDatePleage() {
		return datePleage;
	}
	public void setDatePleage(Date datePleage) {
		this.datePleage = datePleage;
	}
	
	public static ArrayList<Pleage> getArrayListPleage(String email,Connection conn)
	{
		try
		{
			String projectTitle;
			int pleageValue;
			Date datePleage;
			ArrayList<Pleage> answer = new ArrayList<>();
			Statement stmt = conn.createStatement();
			String cmd = String.format("select * from pleage where email='%s' "
					+ "order by datePleage",email);
			ResultSet obj = stmt.executeQuery(cmd);
			
			while(obj.next())
			{
				projectTitle = obj.getString("projectTitle");
				pleageValue = obj.getInt("pleageValue");
				datePleage = obj.getDate("datePleage");
				Pleage tem = new Pleage(projectTitle, email, pleageValue, datePleage);
				answer.add(tem);
				
			}
			
			return answer;
		}
		catch(Exception ex)
		{
			return null;
		}
		
		
		
	}
	
	public static ArrayList<Pleage> getArrayListPleageByProject(String projectTitle,Connection conn)
	{
		try
		{
			String email;
			int pleageValue;
			Date datePleage;
			ArrayList<Pleage> answer = new ArrayList<>();
			Statement stmt = conn.createStatement();
			String cmd = String.format("select * from pleage where projectTitle='%s' "
					+ "order by datePleage",projectTitle);
			ResultSet obj = stmt.executeQuery(cmd);
			
			while(obj.next())
			{
				email = obj.getString("email");
				
				pleageValue = obj.getInt("pleageValue");
				datePleage = obj.getDate("datePleage");
				Pleage tem = new Pleage(projectTitle, email, pleageValue, datePleage);
				answer.add(tem);
				
			}
			
			return answer;
			
			
		}
		catch(Exception ex)
		{
			return null;
		}
	}
	
}
