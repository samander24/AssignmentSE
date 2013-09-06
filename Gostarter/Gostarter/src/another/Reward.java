package another;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

public class Reward {
	
	String rewardTitle;
	int valueReward;
	String description;
	Date estimateDelivery;
	String projectTitle;
	
	
	
	
	public Reward(String rewardTitle, int valueReward, String description,
			Date estimateDelivery, String projectTitle) {
		super();
		this.rewardTitle = rewardTitle;
		this.valueReward = valueReward;
		this.description = description;
		this.estimateDelivery = estimateDelivery;
		this.projectTitle = projectTitle;
	}




	public String getRewardTitle() {
		return rewardTitle;
	}




	public void setRewardTitle(String rewardTitle) {
		this.rewardTitle = rewardTitle;
	}




	public int getValueReward() {
		return valueReward;
	}




	public void setValueReward(int valueReward) {
		this.valueReward = valueReward;
	}




	public String getDescription() {
		return description;
	}




	public void setDescription(String description) {
		this.description = description;
	}




	public Date getEstimateDelivery() {
		return estimateDelivery;
	}




	public void setEstimateDelivery(Date estimateDelivery) {
		this.estimateDelivery = estimateDelivery;
	}




	public String getProjectTitle() {
		return projectTitle;
	}




	public void setProjectTitle(String projectTitle) {
		this.projectTitle = projectTitle;
	}




	public static Reward createReward(String rewardTitle,String projectTitle,Connection conn,HttpServletRequest request)
	{
		
		int valueReward;
		String description;
		Date estimateDelivery;
		try
		{
			Statement stmt = conn.createStatement();
			String cmd = String.format("select * from reward where rewardTitle='%s' and projectTitle='%s'"
					,rewardTitle,projectTitle);
			ResultSet obj = stmt.executeQuery(cmd);
	
			description = obj.getString("description");
			rewardTitle = obj.getString("rewardTitle");
			valueReward = obj.getInt("valueReward");
			estimateDelivery = obj.getDate("estimateDelivery");
			projectTitle  = obj.getString("projectTitle");
			
			ChangeString.reChangeQutoe(description);
			
			Reward reward = new Reward(rewardTitle, valueReward, description, estimateDelivery, projectTitle);
			return reward;
		}
		catch(Exception ex)
		{
			return null;
		}
		
	}


	public static ArrayList<Reward> getArrayListReward(String projectTitle,Connection conn,HttpServletRequest request)
	{
		try
		{
	
			int valueReward;
			String description;
			Date estimateDelivery;
			String rewardTitle;
			
			ArrayList<Reward> answer = new ArrayList<Reward>();
			Statement stmt = conn.createStatement();
			String cmd = String.format("select * from reward where projectTitle = '%s'"
					+ "order by rewardValue",projectTitle);
			ResultSet obj = stmt.executeQuery(cmd);
			
			while(obj.next())
			{
				
				description = obj.getString("description");
				rewardTitle = obj.getString("rewardTitle");
				valueReward = obj.getInt("valueReward");
				estimateDelivery = obj.getDate("estimateDelivery");
//				projectTitle  = obj.getString("projectTitle");
				
				ChangeString.reChangeQutoe(description);
				
				Reward temReward = new Reward(rewardTitle, valueReward, description, estimateDelivery, projectTitle);
				answer.add(temReward);
			}
			return answer;
			
		}
		catch(Exception ex)
		{
			return null;
		}
		
		
	}

}
