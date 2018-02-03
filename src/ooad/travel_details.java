package ooad;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class travel_details
 */
public class travel_details extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public travel_details() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		String destin=request.getParameter("dest");
		String doj=request.getParameter("date");
		String trmode=request.getParameter("mode");
		String noft=request.getParameter("notck");
		String s1;
		String s2;
		ArrayList list=new ArrayList();
		try {
		Class.forName("org.h2.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:h2:tcp://localhost/~/test","sa","");  
		  
		Statement stmt=con.createStatement(); 
		String sql="select *from bus";
		ResultSet rs=stmt.executeQuery(sql);
		//ArrayList list=new ArrayList();
		if(trmode.equals("bus"))
		{
			//out.println("<b> the available buses are</b>");
			while(rs.next())
			{
				if(rs.getString("dest").equals(destin))
				{   //int result;
				    //result=noft.compareTo(rs.getString("notck"));
				    int result=Integer.parseInt(rs.getString("notck"));
				    int result1=Integer.parseInt(noft);
				    
				    if(result1<=result)
				   {
				    	
				     s1=rs.getString("trname");
					s2=rs.getString("notck");
					//out.println("<a href='passenger_details.jsp'>"+s1+"</a>");
					//out.println(s2);
					list.add(s1);
					list.add(s2);
					
				
				
				   }
				  
				}
				}
			
			
			
		}      
		if(trmode.equals("flight"))
		{
			//out.println("<b> the available buses are</b>");
			while(rs.next())
			{
				if(rs.getString("dest").equals(destin))
				{   //int result;
				    //result=noft.compareTo(rs.getString("notck"));
				    int result=Integer.parseInt(rs.getString("notck"));
				    int result1=Integer.parseInt(noft);
				    
				    if(result1<=result)
				   {
				    	
				     s1=rs.getString("trname");
					s2=rs.getString("notck");
					//out.println("<a href='passenger_details.jsp'>"+s1+"</a>");
					//out.println(s2);
					list.add(s1);
					list.add(s2);
					
				
				
				   }
				  
				}
				}
			
			
			
		}          
		if(trmode.equals("train"))
		{
			//out.println("<b> the available buses are</b>");
			while(rs.next())
			{
				if(rs.getString("dest").equals(destin))
				{   //int result;
				    //result=noft.compareTo(rs.getString("notck"));
				    int result=Integer.parseInt(rs.getString("notck"));
				    int result1=Integer.parseInt(noft);
				    
				    if(result1<result)
				   {
				    	
				     s1=rs.getString("trname");
					s2=rs.getString("notck");
					//out.println("<a href='passenger_details.jsp'>"+s1+"</a>");
					//out.println(s2);
					list.add(s1);
					list.add(s2);
					
				
				
				   }
				  
				}
				}
			
			
			
		}          
		
				
		}		
			
		
		
		
		catch (Exception e2) {System.out.println(e2);}
		
		

		

    request.setAttribute("list1", list);
	getServletContext().getRequestDispatcher("/bus.jsp").forward 
    (request, response); 

	
}
}