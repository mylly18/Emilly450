package agenda.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/tchau")
public class NovoServlet extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out =response.getWriter();
		
		out.println("<html>");
		out.println("<body>");
		out.println("<h1>Emilly Beatriz</h1>");
		out.println("<h1>mylly.mauay2017@gmail.com</h1>");
		out.println("<h1>20151074010450</h1>");
		out.println("</body>");
		out.println("</html>");
	
	}
}
