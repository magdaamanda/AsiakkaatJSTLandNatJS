package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.Dao;

/**
 * Servlet implementation class PoistaAsiakas
 */
@WebServlet("/poistaasiakas")
public class PoistaAsiakas extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PoistaAsiakas() {
        super();
        // TODO Auto-generated constructor stub
        System.out.println("PoistaAsiakas.PoistaAsiakas()");
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("PoistaAsiakas.doGet()");
		int asiakas_id = Integer.parseInt(request.getParameter("asiakas_id"));
		Dao dao = new Dao();
		dao.poistaAsiakas(asiakas_id);
		response.sendRedirect("haeasiakkaat?hakusana=");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("PoistaAsiakas.doPost()");
		doGet(request, response);
	}

}
