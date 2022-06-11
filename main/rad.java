import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.telusko.Student;

@WebServlet("/DemoServlet")
public class rad extends HttpServlet{

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String name = "navion";
		
		List<Student> studs = Arrays.asList(new Student(1,"nishyss"), new Student(2,"aarti"));
		
		
		//Student s = new Student(2,"nishty");
		request.setAttribute("students", studs);
		RequestDispatcher rd = request.getRequestDispatcher("display.jsp");
		rd.forward(request, response);
	}
}
