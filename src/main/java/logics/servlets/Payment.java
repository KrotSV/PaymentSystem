package logics.servlets;

import logics.DAO;
import logics.ResourceManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Payment", urlPatterns = "/payCard")
public class Payment extends HttpServlet {
    private DAO dao = ResourceManager.getDAO();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getSession().setAttribute("account", dao.getAccount(Integer.parseInt(request.getParameter("cardChoose"))));
        request.getRequestDispatcher("WEB-INF/payment.jsp").forward(request, response);
    }
}