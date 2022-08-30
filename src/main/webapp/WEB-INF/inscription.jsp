<%--
  Created by IntelliJ IDEA.
  User: mohameddesoki
  Date: 29/08/2022
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <title>Title</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
</head>
<body>



<h1>Formulaire</h1>
<div class="container">

<form action="/inscription" method="post">
  <div class="mb-3">
    <label for="nom" class="form-label">Nom</label>
    <input type="text" name="nom" class="form-control" id="nom" aria-describedby="emailHelp">
  </div>

  <div class="mb-3">
    <label for="prenom" class="form-label">Prenom</label>
    <input type="text" name="prenom" class="form-control" id="prenom" aria-describedby="emailHelp">
  </div>

  <div class="mb-3">
    <label for="email" class="form-label">Email</label>
    <input type="email" name="email" class="form-control" id="email">
  </div>

  <div class="mb-3">
    <label for="date" class="form-label">Date de naissance</label>
    <input type="date" name="date" class="form-control" id="date" >
  </div>

  <div class="form-check">
    <input class="form-check-input" type="radio" name="genre" id="homme" value="homme">
    <label class="form-check-label" for="homme">
      Homme
    </label>
  </div>
  <div class="form-check">
    <input class="form-check-input" type="radio" name="genre" id="femme" value="femme">
    <label class="form-check-label" for="femme">
      Femme
    </label>
  </div>
  <div class="mb-3">
    <label for="password" class="form-label">Mot de passe</label>
    <input type="password" name="password" class="form-control" id="password">
  </div>
   <input type="submit" name="envoyer" value="Envoyer">
</form>
  <p>
    <%
      String nom = (String) request.getAttribute("nom");
      String prenom = (String) request.getAttribute("prenom");
      String email = (String) request.getAttribute("email");
      String date= (String) request.getAttribute("date");
      String genre = (String) request.getAttribute("genre");
      String password = (String) request.getAttribute("password");
      if(nom == null&& prenom == null && email == null && date ==null && genre ==null && password == null){
        out.println(" ");
      }else{
        out.println(nom+" "+prenom+" "+ email+" "+date+" "+genre+" "+password);
      }
    %>
  </p>
</div>

</body>
</html>
