package com.mimaraslan;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/anasayfa")
public class ServletDeneme extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public ServletDeneme() {
		super();
	//	TODO: BURADA HAZIRLIK ISLEMLERINI YAP
	}
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//	TODO: BURADA get ISLEMLERINI YAP

		response.getWriter().append(" Servlet bilgisi: ").append(request.getContextPath());
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//	TODO: BURADA post ISLEMLERINI YAP

		super.doPost(request, response);
	}
	
	

}
