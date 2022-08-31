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
  <div class="form-check">
    <input class="form-check-input" type="checkbox" name="check" id="ps5" value="ps5">
    <label class="form-check-label" for="ps5">
      PS5
    </label>
  </div>
  <div class="form-check">
    <input class="form-check-input" type="checkbox" name="check2" id="xbox" value="xbox">
    <label class="form-check-label" for="xbox">
      XBOX ONE
    </label>
  </div>
  <div class="form-check">
    <input class="form-check-input" type="checkbox" name="check3" id="switch" value="switch">
    <label class="form-check-label" for="switch">
      SWITCH
    </label>
  </div>
  <div class="form-check">
    <input class="form-check-input" type="checkbox" name="check4" id="ps4" value="ps4">
    <label class="form-check-label" for="ps4">
      PS4
    </label>
  </div>
   <input type="submit" name="envoyer" value="Envoyer">
  <br> <br>
</form>
  <br>

    <%
      String nom = (String) request.getAttribute("nom");
      String prenom = (String) request.getAttribute("prenom");
      String email = (String) request.getAttribute("email");
      String date= (String) request.getAttribute("date");
      String genre = (String) request.getAttribute("genre");
      String password = (String) request.getAttribute("password");
      String check = (String) request.getAttribute("check");
      String check2 = (String) request.getAttribute("check2");
      String check3 = (String) request.getAttribute("check3");
      String check4 = (String) request.getAttribute("check4");
      if(nom == null&& prenom == null && email == null && date ==null && genre ==null && password == null && check == null && check2 == null && check3 == null && check4 == null){
        out.println(" ");
      }
      else{
        out.println(nom+"</br>");
        out.println(prenom+"</br>");
        out.println(email+"</br>");
        out.println(date+"</br>");
        out.println(genre+"</br>");
        out.println(password+"</br>");
        out.println(check+"</br>");
        out.println(check2+"</br>");
        out.println(check3+"</br>");
        out.println(check4);

      }
    %>
  </p>
</div>

</body>
</html>
