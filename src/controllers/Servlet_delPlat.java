package controllers;

import models.Plat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Servlet_delPlat",  urlPatterns = {"/delPlat"})
public class Servlet_delPlat extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("views/templates/menu.jsp").forward(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) {
		try {
			Plat.delPlat(request.getParameter("id_plat"));
			response.sendRedirect(request.getContextPath() + "/menu");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
