<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="jsp.Auto, jsp.AutoLijst,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<script src="https://code.jquery.com/jquery-2.1.4.js"></script>
		<title>webshop</title>
		<style>
		div.autokader {
    float: left;	
    margin: 1em;
    width: 220px;
    height: 120px;
    border: 1px solid black;
    border-radius: 5px;
    font-weight: bold;
    text-decoration: none;
    position: relative;
    background: -webkit-linear-gradient(right, rgba(127, 127, 127, 0), rgba(127, 127, 127, 1)); /* For Safari 5.1 to 6.0 */
    background: -o-linear-gradient(left, rgba(127, 127, 127, 0), rgba(127, 127, 127, 1)); /* For Opera 11.1 to 12.0 */
    background: -moz-linear-gradient(left, rgba(127, 127, 127, 0), rgba(127, 127, 127, 1)); /* For Firefox 3.6 to 15 */
    background: linear-gradient(to left, rgba(127, 127, 127, 0), rgba(127, 127, 127, 1)); /* Standard syntax (must be last) */

}

div.autokader img {
    width: 120px;
    margin: 0;
    position: absolute;
    bottom: 0;
    left: 0;
}

div.autokader p.merktype {
    color: #FFF8DC;
    background-color: green;
    text-align: center;
}

div.autokader p.prijs {
    color: blue;
    text-align: right;
    margin-right: 1em;
}
p#url {
	display: none;
}
#iframe-mask {
	position: fixed;
	left: 0px;
	top: 0px;
	width: 100vw;
	height: 100vh;
	background-color: rgba(0, 0, 0, 0.9);
	z-index: 6;
	display: none;
}
#mask-exit {
	z-index: 7;
	position: fixed;
	right: 75px;
	top: 25px;
	width: 100px;
	height: 100px;
}
iframe {
	text-align: center;
	position: fixed;
	left: 25vw;
	top: 20vh;
	z-index: 7;
}
div#autoselectie {
    max-width: 1200px;
}</style>
	</head>
	<body>
	<div id="iframe-mask">
		<img id="mask-exit" src="images/cancel.png"></img>
		<iframe width="560" height="315" src="" frameborder="0" allowfullscreen></iframe>
	</div>
		<form action="webshop.jsp" method= "get">
			<input type="number" name="minprijs">
			<input type="number" name="maxprijs">
			<select name="merk">
         		<option value="alle">Alle merken</option>
	            <option value="Ford">Ford</option>
	            <option value="Opel">Opel</option>
	            <option value="Subaru">Subaru</option>
	            <option value="Mercedes">Mercedes</option>
	            <option value="Ferrari">Ferrari</option>
	            <option value="Citroen">Citroen</option>
	            <option value="Mini">Mini</option>
        	</select>
			<input type="submit" value="ok" name="ok">
		</form>
		
		<%
		int minprijs= 0;
		int maxprijs= 1000000;
		AutoLijst autolijst = new AutoLijst();
		ArrayList<Auto> auto = autolijst.getLijst();
		
		if (request.getParameter("ok") == null) {
			for (Auto autos : auto){
			%>
			<div class="autokader">
				<img src=<%= autos.getFoto() %>>
				<p class="merktype"><%= autos.getMerk() %> <%= autos.getType() %></p>
				<p class="prijs">&euro;<%= autos.getPrijsFormat() %></p>
				<p id="url"><%=autos.getvideourl()%></p>
			</div>
			<%	
			}
		} else {
			try {
				if (request.getParameter("minprijs") == null || request.getParameter("minprijs").equals("")){
					minprijs = 0;
				} else {
					minprijs = Integer.parseInt(request.getParameter("minprijs"));
				}
				
				if (request.getParameter("maxprijs") == null || request.getParameter("maxprijs").equals("")){
					maxprijs = 1000000;
				} else {
					maxprijs = Integer.parseInt(request.getParameter("maxprijs"));
				}
					
				for (Auto autos : autolijst.getMerkenMinMax(request.getParameter("merk"), minprijs, maxprijs)){%>
				<div class="autokader">
					<img src=<%= autos.getFoto() %>>
					<p class="merktype"><%= autos.getMerk() %> <%= autos.getType() %></p>
					<p class="prijs">&euro;<%= autos.getPrijsFormat() %></p>
					<p id="url"><%=autos.getvideourl()%></p>
				</div>
			  <%}
				
			} catch(NumberFormatException e) {
				out.println("Vul alleen getallen in");
				for (Auto autos : auto){%>
				<div class="autokader">
					<img src=<%= autos.getFoto() %>>
					<p class="merktype"><%= autos.getMerk() %> <%= autos.getType() %></p>
					<p class="prijs">&euro;<%= autos.getPrijsFormat() %></p>
					<p id="url"><%=autos.getvideourl()%></p>
				</div>
			  <%}
			}
		}
		
		
		
		
		
		%>
		
	</body>
	
	<script>
		$('.autokader').click(function() {
			$('iframe').attr("src", "https://www.youtube.com/embed/"+$('#url', $(this)).html());
			$('#iframe-mask').css("display", "initial");
		});
		$('#mask-exit').click(function() {
			$('#iframe-mask').css("display", "none");
		});
	</script>
</html>