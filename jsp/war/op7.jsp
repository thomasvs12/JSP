<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.Calendar"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Jsp op7 Vermenigvuldigingstabel</title>
</head>
	<body>
		
		<table width="300px" border="1">
		
			<%
			
				for(int i = 1; i < 11; i++) {
					%>
					<tr><td><% out.println("" + i); %></td>
					<%
					for(int j = 2; j < 11; j++) {
						%>
							<td><% out.println("" + (i*j)); %></td>
						<%
					}
					%>
					</tr>
					<%
				}
			
			%>
		
		</table>
	</body>
</html>
