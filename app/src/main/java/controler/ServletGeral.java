package controler;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet({"*.action", "/"})
public class ServletGeral extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) {
		
		String path = req.getServletPath();
		ServletContext sc = req.getServletContext();
		
		switch (path) {
		case "/":
			try {
				sc.getRequestDispatcher("/jsp/index.jsp").forward(req, res);
			} catch (Exception e) {}
			break;
			
		case "/cr.action":
			try {
				sc.getRequestDispatcher("/jsp/cadastrarReceita.jsp").forward(req, res);
			} catch (Exception e) {}
			break;
			
		case "/pr.action":
			try {
				sc.getRequestDispatcher("/jsp/pesquisarReceita.jsp").forward(req, res);
			} catch (Exception e) {}
			break;
			
		case "/ci.action":
			try {
				sc.getRequestDispatcher("/jsp/cadastrarIngrediente.jsp").forward(req, res);
			} catch (Exception e) {}
			break;
			
		case "/pi.action":
			try {
				sc.getRequestDispatcher("/jsp/pesquisarIngrediente.jsp").forward(req, res);
			} catch (Exception e) {}
			break;
			
		case "/ppi.action":
			try {
				String ingredienteP = req.getParameter("ingredienteP");
				
				req.setAttribute("tb", "10");
				req.setAttribute("idP", "1");
				req.setAttribute("nomeP", "Banana");
				req.setAttribute("descP", "Muito gostoso");
				
				sc.getRequestDispatcher("/jsp/pesquisarIngrediente2.jsp").forward(req, res);
			} catch (Exception e) {}
			break;
			
		case "/ppi.action2":
			try {
				String ingredienteP = req.getParameter("ingredienteP");
				
				req.setAttribute("tb", "10");
				req.setAttribute("idP", "1");
				req.setAttribute("nomeP", "Banana");
				req.setAttribute("descP", "Muito gostoso");
				
				sc.getRequestDispatcher("/jsp/pesquisarIngrediente.jsp").forward(req, res);
			} catch (Exception e) {}
			break;
			
		case "/ppr.action":
			try {
				String receitaP = req.getParameter("receitaP");
				
				req.setAttribute("tb", "5");
				req.setAttribute("idP", "1");
				req.setAttribute("nomeP", "Torta de Banana");
				req.setAttribute("ingrP", "Banana, Farinha, Ovo");
				req.setAttribute("descP", "Coloque 1 banana, depois ovo, depois farinha e banana de novo");
				
				sc.getRequestDispatcher("/jsp/pesquisarReceita2.jsp").forward(req, res);
			} catch (Exception e) {}
			break;
			
		case "/ppr.action2":
			try {
				String receitaP = req.getParameter("receitaP");
				
				req.setAttribute("tb", "5");
				req.setAttribute("idP", "1");
				req.setAttribute("nomeP", "Torta de Banana");
				req.setAttribute("ingrP", "Banana, Farinha, Ovo");
				req.setAttribute("descP", "Coloque 1 banana, depois ovo, depois farinha e banana de novo");
				
				sc.getRequestDispatcher("/jsp/pesquisarReceita.jsp").forward(req, res);
			} catch (Exception e) {}
			break;
			
		default:
			try {
				sc.getRequestDispatcher("/jsp/erro.jsp").forward(req, res);
			} catch (Exception e) {}
			break;
		}
	}
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) {
		
	}
}
