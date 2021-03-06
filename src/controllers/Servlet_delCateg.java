package controllers;

import models.Categorie;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Servlet_delCateg",  urlPatterns = {"/delCateg"})
public class Servlet_delCateg extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("views/templates/menu.jsp").forward(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) {
		try {
			Categorie.delCateg(request.getParameter("id_categ"));
			response.sendRedirect(request.getContextPath() + "/menu");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
