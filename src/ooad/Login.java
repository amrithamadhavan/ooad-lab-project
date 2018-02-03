package ooad;
import java.util.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
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
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	PrintWriter out=response.getWriter();
	String mail=request.getParameter("email");
	String password=request.getParameter("pwd");
	try {
	Class.forName("org.h2.Driver");  
	Connection con=DriverManager.getConnection(  
	"jdbc:h2:tcp://localhost/~/test","sa","");  
	  
	Statement stmt=con.createStatement(); 
	String sql="select *from users";
	ResultSet rs=stmt.executeQuery(sql);
	while(rs.next())
		
	{
		if(mail.equals(rs.getString("mailid"))&&password.equals(rs.getString("pwd")))
		{getServletContext().getRequestDispatcher("/travel_details.jsp").forward 
	        (request, response); 
			//out.println("you are a valid user");
		break;}
			//out.println("password : "+rs.getString("pwd"));
	}
	if(!(rs.next())) {
		//out.println("oops!!!!try logging in again<br><a href='login.jsp'>click here for login</a>");
        getServletContext().getRequestDispatcher("/loginfailed.jsp").forward 
        (request, response); 
	}
	}
	catch (Exception e2) {System.out.println(e2);}
	/*if("abc@gmail.com".equals(mailid)&&"xyz".equals(pwd))
	{
		out.println("login is suuccessful");
		
	}
	else
	{
		out.println("login failed");
		request.getRequestDispatcher("login.jsp").forward(request, response);

	}*/
	}

}
