package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;
import model.UserDao;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Login() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");

			String action = request.getParameter("action");
			System.out.println(action);

			HttpSession session = request.getSession();
			if (action == null) {

			}  else if (action.equals("signIn")) {

				String username = request.getParameter("email");
				String password = request.getParameter("pass");
				if (UserDao.check(username, password)) {
					User user = UserDao.listCustomer.get(UserDao.findIndexAccount(username));
					session.setAttribute("signIn",  user.getName());
					session.setAttribute("email",  user.getName());
					RequestDispatcher rd = getServletContext().getRequestDispatcher("/success.jsp");
					rd.forward(request, response);
				}
				else {
					request.setAttribute("account", "Email or password wrong");
					RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
					rd.forward(request, response);
				}

			} else if (action.equals("google")) {
				String name = request.getParameter("name");
				session.setAttribute("signIn", name);
				session.setAttribute("google", name);
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/success.jsp");
				rd.forward(request, response);

			}

		}

	}
}
