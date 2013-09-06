package beans;

import java.io.Serializable;

public class User implements Serializable {
	
	
	private String email;
	private String name;
	private String userType;
	
	public User()
	{
		email = null;
		name = null;
		userType = null;
	}
	public User(String email,String name,String userType)
	{
		this.email = email;
		this.name = name;
		this.userType = userType;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	
}
