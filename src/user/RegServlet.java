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
 * Servlet implementation class RegServlet
 */
@WebServlet("/RegServlet")
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession(false);

		String userName = request.getParameter("name");
		String userId = request.getParameter("id");
		String pass = request.getParameter("pass");
		String passConf = request.getParameter("passConf");
		String sex = request.getParameter("sex");
		String address = request.getParameter("address");
		String post = request.getParameter("post");
		String tel = request.getParameter("tel");

		UserDB u = new UserDB();
		u.setName(userName);
		u.setId(userId);
		u.setPass(pass);
		u.setSex(sex);
		u.setAddress(address);
		u.setPost(post);
		u.setTel(tel);
		u.setPassBrank(pass);

	    if (session == null || session.getAttribute("RegUser") == null) {
			 session = request.getSession(true);
	    }


	    session.setAttribute("RegUser",u);


		RequestDispatcher rd=request.getRequestDispatcher("/RegConf.jsp");
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
