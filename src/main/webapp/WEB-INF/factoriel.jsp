<%--
  Created by IntelliJ IDEA.
  User: mohameddesoki
  Date: 29/08/2022
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title></title>
</head>
<body>
<form action="/factoriel" method="POST">
    <table>
        <tr>
            <td><p>Donnez un nombre </p></td>
            <td><input type="text" name="nombre" > <input type="submit" value="Factoriel"></td>
        </tr>
    </table>
</form>
<p>
    <%
        String resultat = (String) request.getAttribute("resultat");
        String nombre = (String) request.getAttribute("nombre");
        if(resultat == null){
            out.println("null");
        }else{
            out.println(nombre+"!="+resultat);
        }
    %>
</p>
</body>
</html>
