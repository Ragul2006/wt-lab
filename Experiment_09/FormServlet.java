import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/FormServlet")
public class FormServlet extends HttpServlet {
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    response.setContentType("text/html");
    String name = request.getParameter("firstname");
    PrintWriter out = response.getWriter();
    out.println("<h2>Hello " + name + ", Welcome to Servlets!</h2>");
  }
}