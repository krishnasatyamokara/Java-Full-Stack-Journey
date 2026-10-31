
package Practice_jsp;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Locale;

@WebServlet("/Home")
public class Home extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String page = request.getParameter("page");

        if (page == null || page.trim().isEmpty()) {
            request.getRequestDispatcher("/error.jsp").forward(request, response);
            return;
        }

        switch (page.trim().toLowerCase(Locale.ROOT)) {
            case "home":
                request.getRequestDispatcher("/index.jsp").forward(request, response);
                break;

            case "listusers":
                request.getRequestDispatcher("/listusers.jsp").forward(request, response);
                break;

            default:
                response.setStatus(HttpServletResponse.SC_NOT_FOUND);
                request.getRequestDispatcher("/error.jsp").forward(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
