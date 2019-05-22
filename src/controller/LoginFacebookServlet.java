package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.RestFB;
import com.restfb.types.User;

/**
 * Servlet implementation class LoginFacebookServlet
 */
@WebServlet("/login-facebook")
public class LoginFacebookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginFacebookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String code = request.getParameter("code");

		if (code == null || code.isEmpty()) {
			RequestDispatcher dis = request.getRequestDispatcher("Login.jsp");
			dis.forward(request, response);
		} else {
			String accessToken = RestFB.getToken(code);
			User user = RestFB.getUserInfo(accessToken);
			request.setAttribute("id", user.getId());
			request.setAttribute("name", user.getName());

			RequestDispatcher dis = request.getRequestDispatcher("successFacebook.jsp");
			dis.forward(request, response);
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
