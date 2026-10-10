
package Practice_JSP;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/SiteController")
public class SiteController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        if ("login".equals(action)) {
            request.getRequestDispatcher("/login.jsp")
                   .forward(request, response);
        } else {
            request.getRequestDispatcher("/index.jsp")
                   .forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if ("satya".equals(username) &&
            "12345".equals(password)) {

            HttpSession oldSession = request.getSession(false);

            if (oldSession != null) {
                oldSession.invalidate();
            }

            HttpSession newSession = request.getSession(true);
            newSession.setMaxInactiveInterval(500);
            newSession.setAttribute("username", username);

            response.sendRedirect(
                request.getContextPath()
                + "/MemberAreaController?action=member"
            );

        } else {
            response.sendRedirect(
                request.getContextPath()
                + "/SiteController?action=login"
            );
        }
    }
}
