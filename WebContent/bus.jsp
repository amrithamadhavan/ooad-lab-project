<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!--<%
    Object var1 = request.getAttribute("var1");
Object var2 = request.getAttribute("var2");
%>
<p><%=var1%></p>
<p><%=var2%></p> -->
<%@ page import="java.util.*" %>
<%
if (request.getAttribute("list1") != null) {

     ArrayList list2 = (ArrayList) request.getAttribute("list1");

   
if(list2.size()==0)
{
	out.println("OOPS REQUESTED MODE NOT AVAILABLE");
	out.println("<a href='travel_details.jsp'>select other mode</a>");
	//getServletContext().getRequestDispatcher("/travel_details.jsp").forward 
    //(request, response); 
}
   out.println(list2.size());
    out.println("<b>THE AVAILABLE agencies AND TICKETS ARE:</b>");
 

    for (int i=0; i < list2.size(); i++) {

        out.println(list2.get(i));

    }

}

else {

    out.println("no data in array");

}  

%>
<a href="passenger_details.jsp">click here to give your details</a> 
</body>
</html>
