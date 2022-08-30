package com.example.webapp;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.StringTokenizer;


@WebServlet("/compteur")
public class HelloServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        this.getServletContext().getRequestDispatcher("/WEB-INF/compteurDeMots.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, ServletException {
        String message = req.getParameter("message");
        StringTokenizer res = new StringTokenizer(message," ");
        req.setAttribute("resultat", String.valueOf(res.countTokens()));
        this.getServletContext().getRequestDispatcher("/WEB-INF/compteurDeMots.jsp").forward(req, resp);

    }

}