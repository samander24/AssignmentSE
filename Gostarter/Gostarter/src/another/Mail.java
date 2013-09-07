package another;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class Mail {

	String source ;
	String destination;
	Date dateSent;
	int mailNumber;
	String title;
	String description;
	
	public Mail(String source, String destination, Date dateSent,
			int mailNumber, String title, String description) {
		super();
		this.source = source;
		this.destination = destination;
		this.dateSent = dateSent;
		this.mailNumber = mailNumber;
		this.title = title;
		this.description = description;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public Date getDateSent() {
		return dateSent;
	}

	public void setDateSent(Date dateSent) {
		this.dateSent = dateSent;
	}

	public int getMailNumber() {
		return mailNumber;
	}

	public void setMailNumber(int mailNumber) {
		this.mailNumber = mailNumber;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public static Mail createMail(String source,String destination,String dateSent,int mailNumber,Connection conn,PrintWriter out)
	{
		try
		{
			
			String title;
			String description;
			Statement stmt = conn.createStatement();
			Date date;
			
			String cmd = String.format("select * from mail where source='%s' and destination = '%s' and dateSent='%s' and mailNumber = '%d' "
					,source,destination,dateSent,mailNumber );
	//		out.println(cmd);
			ResultSet obj = stmt.executeQuery(cmd);
			
			obj.next();
			
			title = obj.getString("title");
			description = obj.getString("description");
			date = obj.getDate("dateSent");
			
			title = ChangeString.reChangeQutoe(title);
			description = ChangeString.reChangeQutoe(description);
			
			return new Mail(source, destination, date, mailNumber, title, description);
			
			
			
		}
		catch(Exception ex)
		{
			out.println(ex);
			return null;
		}
	}
	
	public static ArrayList<Mail> getArrayListMail(String destination,Connection conn ,PrintWriter out )
	{
		try
		{
			String source;
			String title;
			String description;
			Date dateSent;
			int mailNumber;
			
			Statement stmt = conn.createStatement();
			String cmd = String.format("select * from mail where destination ='%s' order by dateSent DESC", destination);
			
			
//			out.println(cmd);
			ResultSet  obj=stmt.executeQuery(cmd);
			
			ArrayList<Mail> allMail = new ArrayList<Mail>();
			
			while(obj.next())
			{
				source = obj.getString("source");
				title  = obj.getString("title");
				dateSent = obj.getDate("dateSent");
				description = obj.getString("description");
				mailNumber = obj.getInt("mailNumber");
				
				title = ChangeString.reChangeQutoe(title);
				description = ChangeString.reChangeQutoe(description);
				
				
				Mail tem = new Mail(source, destination, dateSent, mailNumber, title, description);
				allMail.add(tem);
			}
			
			
			
			return allMail;
			
		}
		catch(Exception ex)
		{
			out.println(ex);
			return null;
		}
	}
	
}
