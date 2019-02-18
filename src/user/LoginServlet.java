package user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession(false);
		String jsp = "/LoginError.jsp";
		UserDB u = new UserDB();

		String userId = request.getParameter("id");
		String pass = request.getParameter("pass");
		System.out.println(session.getAttribute("LoginUser"));
	    if (session == null || session.getAttribute("LoginUser") == null) {
			 session = request.getSession(true);
	    }
		u = UserDB.UserLogin(userId,pass);
	    if(userId.equals(u.getId()) && pass.equals(u.getPass())){
			jsp = "./MypageServlet";
	    }else{
			jsp = "/LoginError.jsp";
	    }
	    session.setAttribute("LoginUser",u);
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
