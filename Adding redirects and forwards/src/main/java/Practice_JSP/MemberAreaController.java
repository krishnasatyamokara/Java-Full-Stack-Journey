
package Practice_JSP;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/MemberAreaController")
public class MemberAreaController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        if (action == null) {
            response.sendError(
                HttpServletResponse.SC_BAD_REQUEST,
                "Missing action parameter"
            );
            return;
        }

        switch (action) {

            case "destroy": {
                HttpSession session = request.getSession(false);

                if (session != null) {
                    session.invalidate();
                }

                response.sendRedirect(
                    request.getContextPath()
                    + "/SiteController?action=login"
                );
                break;
            }

            case "member": {
                HttpSession session = request.getSession(false);

                if (session == null ||
                    session.getAttribute("username") == null) {

                    response.sendRedirect(
                        request.getContextPath()
                        + "/SiteController?action=login"
                    );
                    return;
                }

                request.getRequestDispatcher("/member.jsp")
                       .forward(request, response);
                break;
            }

            default:
                response.sendError(
                    HttpServletResponse.SC_BAD_REQUEST,
                    "Invalid action: " + action
                );
        }
    }
}
