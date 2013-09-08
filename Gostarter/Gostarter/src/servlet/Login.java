package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.HashSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import another.HashingMD5;
import beans.User;

import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
				
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		User loginUser = new User();
		try 
		{
			if(this.checkPassword(email, password, out,loginUser))
			{
				out.println("Login success.Plese Check you mailbox.</br>");
		//		out.println(loginUser.getEmail());
		//		out.println(loginUser.getName());
				
					HttpSession session = request.getSession();
					session.setAttribute("loginUser", loginUser);
					request.setAttribute("message","Login success" );
				
				
			}
			else
			{
		//		out.println("login fail you username or password is fail</br>");
				request.setAttribute("message","Login fail you username or password is fail" );
			}
		} 
		catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher dis = request.getRequestDispatcher("ResultLoginAndRegister.jsp");		
		dis.forward(request, response);
	}
	
	private boolean checkPassword(String email,String password,PrintWriter out,User loginUser) throws NoSuchAlgorithmException
	{
		Connection conn = (Connection) getServletContext().getAttribute("conn");
		java.sql.Statement stmt = null;
		String hashingPassword = HashingMD5.hash(password);
		try
		{
            stmt = conn.createStatement();
            String cmd ="select * from user where email ="+String.format("'%s'",email);
          //  String cmd = "select * from user";
            
            ResultSet obj = stmt.executeQuery(cmd);
            obj.next();
            if(obj.getString("password").equals(hashingPassword))
            {
            	loginUser.setEmail(obj.getString("email"));
            	loginUser.setName(obj.getString("userName"));
            	loginUser.setUserType(obj.getString("userType"));
            	out.println(loginUser.getEmail());
            	return true;
            }
           

		}
		catch(Exception ex)
		{
			out.println(ex+"</br>");
			return false;
		}
		return false;
	}

}
