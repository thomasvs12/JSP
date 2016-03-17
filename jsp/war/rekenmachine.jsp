<%@ page import="jsp.Rekenmachine" %>

<%
// Rekenmachine
    String uitkomst = "";
    String foutboodschap = "";
    
    if(request.getParameter("functie") !=null) {
    	String getal1 = request.getParameter("getal1");
    	String getal2 = request.getParameter("getal2");
    	String functie = request.getParameter("functie");
    	
    	Rekenmachine rm = new Rekenmachine(getal1, getal2,functie);
    	uitkomst = rm.getuitkomst();
    	foutboodschap = rm.getfoutboodschap();
    }
%>
<head> <style>
div#rekenmachine, div#gradeninvoer {
    width: 100%;
    max-width: 400px;
    text-align: center;
    border: 1px solid black;
    border-radius: 5px;
    overflow: hidden;
    margin-top: 1.5em;
    margin-bottom: 1.5em;
    }
    </style>

</head>
<h2>Rekenmachine</h2>


<form action="rekenmachine.jsp" method="get">
    <table id="rekenmachine">

        <tr>
            <th colspan="2">Eerste getal</th>
            <th colspan="2">Tweede getal</th>
        </tr>
        <tr>
            <td colspan="2"><input name="getal1" value="<%= uitkomst %>">
            </td>
            <td colspan="2"><input name="getal2"></td>
        </tr>
        <tr>
            <td><input type="submit" name="functie" value="+"></td>
            <td><input type="submit" name="functie" value="-"></td>
            <td><input type="submit" name="functie" value="X"></td>
            <td><input type="submit" name="functie" value="/"></td>
        </tr>
        <tr>
            <td colspan="4">
                <%= foutboodschap %>
            </td>
        </tr>


    </table>
</form>
