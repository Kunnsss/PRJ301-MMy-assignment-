import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Kiểm tra thông tin đăng nhập
        if (validateUser(email, password)) {
            HttpSession session = request.getSession();
            session.setAttribute("email", email);

            // Phân biệt loại người dùng dựa trên email
            if (email.endsWith("@lecturer.com")) {
                response.sendRedirect("login.jsp");
            } else if (email.endsWith("@student.com")) {
                response.sendRedirect("student.jsp");
            } else {
                response.sendRedirect("index.jsp");
            }
        } else {
            response.sendRedirect("index.jsp");
        }
    }

    private boolean validateUser(String email, String password) {
        // Kiểm tra thông tin đăng nhập (ví dụ đơn giản với hai tài khoản cố định)
        if (("lecturer@lecturer.com".equals(email) && "password".equals(password)) ||
            ("student@student.com".equals(email) && "password".equals(password))) {
            return true;
        }
        // Bạn có thể kiểm tra thông tin đăng nhập từ cơ sở dữ liệu tại đây
        return false;
    }
}
