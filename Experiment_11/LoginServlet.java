import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String user = request.getParameter("username");
    String pass = request.getParameter("password");
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();

    if ("admin".equals(user) && "1234".equals(pass)) {
      out.println("<h2>Login Successful</h2>");
    } else {
      out.println("<h2>Invalid Username or Password</h2>");
    }
  }
}