package controllers;

import models.Plat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;

@WebServlet(name = "Servlet_validate", urlPatterns = {"/validate"})
public class Servlet_validate extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		try {
			String id = request.getParameter("id_plat");
			Enumeration<String> parameterNames = request.getParameterNames();
			while (parameterNames.hasMoreElements()) {
				String parameterName = parameterNames.nextElement();
				String parameterValue = request.getParameter(parameterName);
				Plat.modPlat(parameterName, parameterValue, id);
			}
			request.getRequestDispatcher("views/templates/menu.jsp").forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("views/templates/menu.jsp").forward(request, response);
	}
}
