package parctice_JSP;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Controller")
public class Controller extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
                           HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String[] languages = request.getParameterValues("language");
        String country = request.getParameter("country");

        response.setContentType("text/html");

        response.getWriter().println("<h2>Form Details</h2>");
        response.getWriter().println("Name: " + name + "<br>");
        response.getWriter().println("Gender: " + gender + "<br>");

        response.getWriter().println("Languages: ");

        if (languages != null) {
            for (String language : languages) {
                response.getWriter().println(language + " ");
            }
        }

        response.getWriter().println("<br>");
        response.getWriter().println("Country: " + country);
    }
}