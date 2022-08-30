package com.example.webapp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.StringTokenizer;

@WebServlet("/factoriel")
public class FactorielServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/factoriel.jsp").forward(request, response);

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        int result = 1;
        for (int i = 1; i <= Integer.parseInt(nombre); i++) {
            result = result * i;
        }
        request.setAttribute("nombre", nombre);
        request.setAttribute("resultat", String.valueOf(result));
        this.getServletContext().getRequestDispatcher("/WEB-INF/factoriel.jsp").forward(request, response);

    }
}
