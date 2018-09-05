package ideaSearch;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import contribution.IdeaDB;

/**
 * Servlet implementation class IdeaSearchServlet
 */
@WebServlet("/IdeaSearchServlet")
public class IdeaSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public IdeaSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ArrayList<IdeaDB> IdeaList = new ArrayList<IdeaDB>();

		String IdeaName = request.getParameter("word");
		String IdeaGenre = request.getParameter("genre");

		if(IdeaGenre.equals("0")) {
			IdeaList = IdeaDB.IdeaSearch(IdeaName);
		}else {
			IdeaList = IdeaDB.IdeaSearch(IdeaName,IdeaGenre);
		}
		request.setAttribute("IdeaList", IdeaList);
		RequestDispatcher rd=request.getRequestDispatcher("/IdeaSearchResult.jsp");
		rd.forward(request, response);


	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		doGet(request,response);
	}

}
