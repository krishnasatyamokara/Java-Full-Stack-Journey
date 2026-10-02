package practice_java;

import jakarta.servlet.ServletException;
import java.io.PrintWriter;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class ReadingUrlParameters
 */
@WebServlet("/ReadingUrlParameters")
public class ReadingUrlParameters extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReadingUrlParameters() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().print("Hello satya"); --> even when u add any new parameters in the url the this will not change
		response.getWriter().print(request.getParameter("val3")); // here we get the val of the parameter
		// we can also pass multiple parameters in the url
		PrintWriter out = response.getWriter();
		
		out.println("\nvalue of val1: "+ request.getParameter("val1"));
		out.println("value of val2: "+ request.getParameter("val2"));
	}

	
}
