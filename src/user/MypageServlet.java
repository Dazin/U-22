package user;

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

/**
 * Servlet implementation class MypageServlet
 */
@WebServlet("/MypageServlet")
public class MypageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public MypageServlet() {
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
		UserDB u = new UserDB();
		String jsp = "/Login.jsp";
		String userName = "";
		String passWord = "";


	    if (session == null || session.getAttribute("LoginUser") == null) {
			 session = request.getSession(true);
	    	 jsp = "/Login.jsp";
		}else{
			jsp = "/Mypage.jsp";
			u = (UserDB)session.getAttribute("LoginUser");
			List = IdeaDB.UserIdea(u.getNo());
		    session.setAttribute("UserIdeaList", List);
		}

		RequestDispatcher rd=request.getRequestDispatcher(jsp);
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
