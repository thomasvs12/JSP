
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<% 
			long a = 0L;
			long b = 1L;
			long c = 1L;
			long maxWaarde = 900000000000000000L;
			for(int i = 0; i < 100; i++) {
				out.println(c + ", ");
				c = a + b;
				a = b;
				b = c;
				
				
			}
		%>
	</body>
</html>
