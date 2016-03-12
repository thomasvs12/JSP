<%
// Rekenmachine
    String uitkomst = "";
    String foutboodschap = "";
%>

<h2>Rekenmachine</h2>


<form action="rekenmachine-demo.jsp" method="get">
    <table id="rekenmachine">

        <tr>
            <th colspan="2">Eerste getal</th>
            <th colspan="2">Tweede getal</th>
        </tr>
        <tr>
            <td colspan="2"><input name="getal_1" value="<%= uitkomst %>">
            </td>
            <td colspan="2"><input name="getal_2"></td>
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
