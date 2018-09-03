package contribution;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ContributionConpServlet
 */
@WebServlet("/ContributionConpServlet")
public class ContributionConpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContributionConpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession(false);
		String IdeaName = request.getParameter("name");
		String IdeaGenre = request.getParameter("genre");
		String IdeaQuality1 = request.getParameter("quality1");
		String IdeaQuality2 = request.getParameter("quality2");
		String IdeaQuality3 = request.getParameter("quality3");
		String IdeaContent = request.getParameter("content");

		IdeaDB i = new IdeaDB();
		ArrayList<IdeaDB> DupList = new ArrayList<IdeaDB>();

		i.setName(IdeaName);
		i.setGenre(IdeaGenre);
		i.setGenreName(IdeaGenre);
		i.setQuality1(IdeaQuality1);
		i.setQuality2(IdeaQuality2);
		i.setQuality3(IdeaQuality3);
		i.setContent(IdeaContent);

		DupList = IdeaDB.IdeaDuplication(IdeaGenre);
		session.setAttribute("InsertIdea",i);
		session.setAttribute("DupList",DupList);

		RequestDispatcher rd=request.getRequestDispatcher("/ContributionConf.jsp");
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
