<%--
  Created by IntelliJ IDEA.
  User: mohameddesoki
  Date: 30/08/2022
  Time: 09:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> <title>Recuperer employé</title>
</head>
<body>
<%
    String sql ="select * from employe where numemp=4;";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con =
            DriverManager.getConnection("jdbc:mysql://localhost/employee", "root",
                    "root");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery(sql);
    rs.next();
%>
Numéro Employé : <%= rs.getString(1) %> <br>
Nom : <%= rs.getString(2) %> <br>
Prénom : <%= rs.getString(3) %> <br>
</body>
</html>