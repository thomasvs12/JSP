
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
	<body>
		
		<%
	    	for(int i = 1; i < 10; i++) {
	    		out.println(i + " x 5 = " + (i*5));
	    		%>
	    		<br>
	    		<%
	    	}
		%>
	</body>
</html>
