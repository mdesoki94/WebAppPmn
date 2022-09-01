<%--
  Created by IntelliJ IDEA.
  User: mohameddesoki
  Date: 29/08/2022
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title></title>
</head>
<body>
<form action="/compteur" method="POST">
  <table>
    <tr>
      <td><p>Donnez une chaine</p></td>
      <td><input type="text" name="message" > <input type="submit" value="NbMots"></td>
    </tr>
  </table>
</form>
<p>
  <%String resultat = (String) request.getAttribute("resultat");
    if(resultat == null){
      out.print("0");
    }else{
      out.print(resultat);
    }%>
</p>
</body>
</html>