package controllers;

import models.Categorie;
import models.Plat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Servlet_menu", urlPatterns = {"/menu"})
public class Servlet_menu extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		handleRequest(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) {
		handleRequest(request, response);
	}
	
	public void handleRequest(HttpServletRequest req, HttpServletResponse res) {
		try {
			req.setAttribute("categories", Categorie.getAll());
			req.setAttribute("plats", Plat.getAll());
			req.getRequestDispatcher("views/templates/menu.jsp").forward(req, res);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}
}
