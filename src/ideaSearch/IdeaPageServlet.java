package ideaSearch;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import contribution.IdeaDB;
import user.UserDB;

/**
 * Servlet implementation class IdeaPageServlet
 */
@WebServlet("/IdeaPageServlet")
public class IdeaPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public IdeaPageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession(false);
		ArrayList<IdeaDB> List = new ArrayList<IdeaDB>();
		String IdeaNo = request.getParameter("IdeaNo");
		IdeaDB Idea = new IdeaDB();
		UserDB User = new UserDB();
		Idea = IdeaDB.IdeaPage(IdeaNo);
		User = UserDB.SelectUser(Idea.getUserNo());
		request.setAttribute("User", User);
		request.setAttribute("Idea", Idea);
		RequestDispatcher rd=request.getRequestDispatcher("/IdeaPage.jsp");
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