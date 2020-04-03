package controllers;

import models.Categorie;
import models.Plat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "Servlet_menu", urlPatterns = {"/menu"})
public class Servlet_menu extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("views/templates/menu.jsp").forward(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setAttribute("categories", Categorie.getAll());
			request.setAttribute("plats", Plat.getAll());
			request.getRequestDispatcher("views/templates/menu.jsp").forward(request, response);
		} catch (ServletException | IOException | SQLException e) {
			e.printStackTrace();
		}
		
	}
}
