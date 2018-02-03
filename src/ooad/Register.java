package ooad;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		String fname1=request.getParameter("fname");
		String lname1=request.getParameter("lname");
		String email1=request.getParameter("email");
		String pwd1=request.getParameter("pwd");
		
		try {
		Class.forName("org.h2.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:h2:tcp://localhost/~/test","sa","");  
		  
		PreparedStatement stmt=con.prepareStatement("insert into users values(?,?)"); 
		stmt.setString(1, email1);
		stmt.setString(2,pwd1);
		stmt.executeUpdate();
		out.println("successfully updated");
	}
		catch (Exception e2) {System.out.println(e2);}
}
}
