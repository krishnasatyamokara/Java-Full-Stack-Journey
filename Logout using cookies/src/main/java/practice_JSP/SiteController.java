package practice_JSP;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Cookie;
import java.io.IOException;

@WebServlet("/SiteController")
public class SiteController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public SiteController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.getWriter()
                .append("Served at: ")
                .append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username.equals("satya") && password.equals("12345")) {

            // Destroy old session
            request.getSession().invalidate();

            // Create a new session
            HttpSession newSession = request.getSession();

            // Session expires after 500 seconds of inactivity
            newSession.setMaxInactiveInterval(500);
            Cookie cookie = new Cookie("username",username);
            response.addCookie(cookie);

            // Go to member page
            response.sendRedirect("manage.jsp");

        } else {

            // Login failed
            response.sendRedirect("login.jsp");
        }
    }
}