package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.Date;
import java.sql.DriverManager;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import another.HashingMD5;

import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
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
		
		try{
			
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String reEmail = request.getParameter("reEmail");
			String password = request.getParameter("password");
			String rePassword = request.getParameter("rePassword");
			
			if(password.compareTo(rePassword)==0 && email.compareTo(reEmail)==0&&password.length()>=8&&name.length()>=8&&email.length()>=8)
			{
				
				if(addToDatabase(name,password ,email,response))
				{
					request.setAttribute("message", "Register complete.");
				}
				else
				{
					request.setAttribute("message", "Email is use to");
			//		out.print("Email use to</br>");
				}
			}
			else
			{
				request.setAttribute("message", "Input Error plese check </br>"
						+ "1.E-mail and password must length >= 8</br>"
						+ "2.ReE-mail or Repassword is not same");
				out.println("Eror---</br>"
						+ "**Email or password is not match</br>"
						+ "**Name email or password length < 8");
				out.println(name+"</br> ");
				out.println(email+"</br>");
				out.println(reEmail+"</br>");
				out.println(password+"</br>");
				out.println(rePassword+"</br>");	
			}
			
			RequestDispatcher dis = request.getRequestDispatcher("ResultLoginAndRegister.jsp");
			dis.forward(request, response);
			
			
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			
			out.close();
		}
	}
	private boolean addToDatabase(String username,String password,String email,HttpServletResponse response) throws IOException, NoSuchAlgorithmException
	{
		Connection conn = (Connection) getServletContext().getAttribute("conn");
		java.sql.Statement stmt = null;
		
		String hassingPassword = HashingMD5.hash(password);
		
		try
		{
            stmt = conn.createStatement();
            String cmd = "insert into user (userName,password,email,userType) "
            		+ "values"+String.format("('%s','%s','%s','user')",username,hassingPassword,email);
            System.out.println(stmt.executeUpdate(cmd));
		}
		catch (Exception ex) 
		{
			PrintWriter out = response.getWriter();
			out.println(ex+"</br>");
			return false;
		}
		return true;
	}

}
