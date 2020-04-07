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
import java.util.Enumeration;

@WebServlet(name = "Servlet_mod", urlPatterns = {"/mod"})
public class Servlet_mod extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("views/templates/menu.jsp").forward(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) {
		try {
			Enumeration<String> parameterNames = request.getParameterNames();
			while (parameterNames.hasMoreElements()) {
				String paramName = parameterNames.nextElement();
				String paramValue = request.getParameter(paramName);
				Plat plat = new Plat(Integer.parseInt(paramValue));
				request.setAttribute("object", plat);
				request.getRequestDispatcher("views/templates/menu.jsp").forward(request, response);
			}
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}
}
