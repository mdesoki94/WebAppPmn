package com.example.webapp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

@WebServlet("/inscription")
public class InscriptionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        this.getServletContext().getRequestDispatcher("/WEB-INF/inscription.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String email = request.getParameter("email");
        String birth = request.getParameter("date");
        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
        long l = 0;
        try {
            l = sdf.parse(birth).getTime();
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
        Date date = new Date(l);
        String genre = request.getParameter("genre");
        String password = request.getParameter("password");
        String envoyer = request.getParameter("envoyer");

        request.setAttribute("nom",nom);
        request.setAttribute("prenom",prenom);
        request.setAttribute("email",email);
        request.setAttribute("date",birth);
        request.setAttribute("genre",genre);
        request.setAttribute("password",password);
        request.setAttribute("envoyer",envoyer);
        this.getServletContext().getRequestDispatcher("/WEB-INF/inscription.jsp").forward(request, response);

    }
}
