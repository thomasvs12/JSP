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
			div {margin-top: 5vw;}
			br {font-size: 2.5vw;}
		</style>
		<title>hoogste &amp; laagste nummer</title>
	</head>

	<body>
		<form action="index.jsp" method="post" id="form">
			<input type="text" name="number">
			<input type="submit" name="submit" value="OK">
		</form>
		<%
			long hoogste = Long.MIN_VALUE;
			long laagste = Long.MAX_VALUE;
			String stringHigh = "";
			String stringLow = "";
			try {
				if (request.getParameter("submit") != null) {
					hoogste = Long.parseLong(request.getParameter("highest"));
					laagste = Long.parseLong(request.getParameter("lowest"));
					long number = Long.parseLong(request.getParameter("number"));
					if (number > hoogste) {hoogste = number;}
					if (number < laagste) {laagste = number;}
					stringHigh += "Highest number: "+ hoogste;
					stringLow += "Lowest number: "+ hoogste;
				}
			}
			catch (NumberFormatException e) {
				if (Long.parseLong(request.getParameter("highest")) != Long.MIN_VALUE
				|| Long.parseLong(request.getParameter("lowest")) != Long.MAX_VALUE) {
					stringHigh += "Highest number: "+ hoogste;
					stringLow += "Lowest number: "+ laagste;
				}
				out.println("<p id='error'>Error. Try using an integer instead.</p>");
			}
		%>
		<div>
			<%
				out.println(stringHigh);
				%><br><%
				out.println(stringLow);
			%>
		</div>
		<input type="hidden" form="form" name="highest" value="<%=hoogste%>">
		<input type="hidden" form="form" name="lowest" value="<%=laagste%>">
	</body>
</html>
