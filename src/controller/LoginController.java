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

import model.SendMail;
import model.User;
import model.UserDao;

@WebServlet("/Login")
public class LoginCotroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginCotroller() {
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
			else if (action.equals("forgot")) {
				String name = request.getParameter("email");
				String pass = request.getParameter("pass");
				if(UserDao.findIndexAccount(name) != -1) {	
					if(SendMail.sendMail(name, "New password", "New password is: " + pass + "\r\n click link : https://chauvanson.azurewebsites.net/login.jsp  to continue login  \r\t Good day!!!" ) == true){
						UserDao.updateAcount(name, pass);
						request.setAttribute("email", "check mail để tiếp tục vào hệ thống");
						RequestDispatcher rd = getServletContext().getRequestDispatcher("/forgot.jsp");
						rd.forward(request, response);
					}
					else {
					request.setAttribute("email", "Email don't exist");
					RequestDispatcher rd = getServletContext().getRequestDispatcher("/forgot.jsp");
					rd.forward(request, response);}
				}
				else {
					request.setAttribute("email", "Email don't have in system");
					RequestDispatcher rd = getServletContext().getRequestDispatcher("/forgot.jsp");
					rd.forward(request, response);
				}
				

			}
			

		}

	}
}
