<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<style>
			body {
				text-align: center;
				padding-top: 3.5vw;
				font: 1.8vw "Arial";
			}
			p {display: block;}
			#error {
				color: red;
				font-size: 1vw;
			}
		</style>
		<title>tafels</title>
	</head>

	<body>
		<h3>Kies een tafel</h3>
		<form action="index.jsp" method="post">
			<input type="text" name="number">
			<input type="submit" name="submit" value="OK">
		</form>
		<%
			try {
				if (request.getParameter("submit") != null) {
					int number = Integer.parseInt(request.getParameter("number"));
					for (int i = 1; i <= 10; i++) {
						out.println("<p>"+ i +" × "+ number +" = "+ (i*number) +"</p>");
					}
				}
			}
			catch (NumberFormatException e) {
				out.println("<p id='error'>Error. Porbeer een geheel getal.</p>");
			}
		%>
	</body>
</html>
