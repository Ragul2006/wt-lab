import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/SessionServlet")
public class SessionServlet extends HttpServlet {
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    HttpSession session = request.getSession(true);
    Integer visits = (Integer) session.getAttribute("visits");
    if (visits == null) visits = 0;
    visits++;
    session.setAttribute("visits", visits);

    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    out.println("<h2>Session Tracking</h2>");
    out.println("<p>Session ID: " + session.getId() + "</p>");
    out.println("<p>Number of visits: " + visits + "</p>");
  }
}