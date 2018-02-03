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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Book
 */
@WebServlet("/Book")
public class Book extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Book() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		String mode1=request.getParameter("mode");
		String trvname1=request.getParameter("trvname");
		String dest1=request.getParameter("dest");
		String notck1=request.getParameter("notck2");
		int numberoftickets=Integer.parseInt(notck1);
		int no=0;
		//out.println(mode1);
		try {
		Class.forName("org.h2."
				+ "Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:h2:tcp://localhost/~/test","sa","");  
		  
		//PreparedStatement stmt=con.prepareStatement();
		out.println("hi");
		if(mode1.equals("bus"))
		{
		String sql="update bus set notck=? where dest=? and trname=?";
		PreparedStatement stmt=con.prepareStatement(sql);
		String sql1="select * from bus where dest=?	and trname=?";
        PreparedStatement ps=con.prepareStatement(sql1);
        ps.setString(1, dest1);
        ps.setString(2, trvname1);
        ResultSet rs=ps.executeQuery();
        while(rs.next()) {
        no=rs.getInt(4);}
		stmt.setInt(1,no-numberoftickets);
		stmt.setString(2, dest1);
		stmt.setString(3,trvname1);
		stmt.executeUpdate();
		//out.println("<a href='payment.jsp'>proceed to payment</a>");
		 getServletContext().getRequestDispatcher("/payment.jsp").forward 
	        (request, response); 
		}
		if(mode1.equals("flight"))
		{
		String sql="update flight set notck=? where dest=? and trname=?";
		PreparedStatement stmt=con.prepareStatement(sql);
		String sql1="select * from flight where dest=?	and trname=?";
        PreparedStatement ps=con.prepareStatement(sql1);
        ps.setString(1, dest1);
        ps.setString(2, trvname1);
        ResultSet rs=ps.executeQuery();
        while(rs.next()) {
        no=rs.getInt(4);}
		
		stmt.setInt(1,no-numberoftickets);
		stmt.setString(2, dest1);
		stmt.setString(3,trvname1);
		stmt.executeUpdate();
		//out.println("<a href='payment.jsp'>proceed to payment</a>");
		 getServletContext().getRequestDispatcher("/payment.jsp").forward 
	        (request, response); 
		}
		if(mode1.equals("train"))
		{
		String sql="update train set notck=? where dest=? and trname=?";
		PreparedStatement stmt=con.prepareStatement(sql);
        String sql1="select * from train where dest=?	and trname=?";
        PreparedStatement ps=con.prepareStatement(sql1);
        ps.setString(1, dest1);
        ps.setString(2, trvname1);
        ResultSet rs=ps.executeQuery();
        while(rs.next()) {
        no=rs.getInt(4);}
       // out.println("no of tickets available are"+ no);
        stmt.setInt(1,no-numberoftickets);
		stmt.setString(2, dest1);
		stmt.setString(3,trvname1);
		stmt.executeUpdate();
		//out.println("<a href='payment.jsp'>proceed to payment</a>");
		getServletContext().getRequestDispatcher("/payment.jsp").forward 
	       (request, response); 
		}
		else
			out.println("error");
		}
	catch (Exception e2) {System.out.println(e2);}

}
}
