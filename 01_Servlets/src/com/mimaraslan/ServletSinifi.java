package com.mimaraslan;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletSinifi
 */
@WebServlet(name="ServletSinifi", urlPatterns = { "/ServletSinifi" })
public class ServletSinifi extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletSinifi() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		
		try {
			String kullanciAdi = request.getParameter("kullanciAdi").toString();
			String parola = request.getParameter("parola").toString();
			
			
			out.println("<html>");
			out.println("<head>");
			out.println("<meta http-equiv=Content-Type content=text/html; charset=UTF-8>");
			out.println("<title>Merkez</title>");
			out.println("</head>");
			out.println("<body>");
			
			out.println("<h1>Servlet : "+ request.getContextPath() + "</h1>");
			out.println("<h2> Kullanıcı Adı : <font color=red>" + kullanciAdi + "</font> HOŞ GELDİNİZ</h2>");
			out.println("<h2> Parola        : <font color=red>" + parola + "</font> </h2>");
			
			out.println("</body>");
			out.println("</html>");

			
		} finally {
out.close();
}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}


















