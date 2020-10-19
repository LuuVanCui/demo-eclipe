<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result - P2</title>
</head>
<body>
	<%
		String processor = request.getParameter("processor");
		String moniter = request.getParameter("moniter");
		String [] peripherals = request.getParameterValues("peripherals");
		
		if (processor == null) {
			processor = "No processor select!";
		}
	%>

	<h1>Order summary:</h1>
    <table>
        <tr>
            <td>Processor</td>
            <td> <%= processor %> </td>
        </tr>
        <tr>
            <td>
                Accessories:
            </td>
            <td>
            	<% if (moniter != null) { %>
            		Moniter <br />            		
            	<% } %>
                <%
                	for (int i = 0; i < peripherals.length; i++) { %>
                		<%= peripherals[i] %> <br/>
                <% } %>
            </td>
       </tr>
    </table>
</body>
</html>