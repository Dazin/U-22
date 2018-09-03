package contribution;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.UserDB;

/**
 * Servlet implementation class ContributionInsertServlet
 */
@WebServlet("/ContributionInsertServlet")
public class ContributionInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContributionInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession(false);
		IdeaDB i = (IdeaDB)session.getAttribute("InsertIdea");
		UserDB LoginUser = (UserDB)session.getAttribute("LoginUser");
		IdeaDB.IdeaInsert(i.getName(),i.getGenre(), i.getQuality1(),i.getQuality2(),i.getQuality3(),i.getContent(),LoginUser.getNo());

		RequestDispatcher rd=request.getRequestDispatcher("./MypageServlet");
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
