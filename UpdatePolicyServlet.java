package test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdatePolicyServlet")
public class UpdatePolicyServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Forward the request to the updatePolicy.jsp or any other page you prefer for displaying the form
        request.getRequestDispatcher("updatePolicy.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        int policyId = Integer.parseInt(request.getParameter("policy_id"));
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        double coverageAmount = Double.parseDouble(request.getParameter("coverage_amount"));
        double premiumAmount = Double.parseDouble(request.getParameter("premium_amount"));

        // Perform database operation to update policy
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/deepu", "root", "webstudent");
            String query = "UPDATE Policy SET name = ?, description = ?, coverage_amount = ?, premium_amount = ? WHERE policy_id = ?";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, name);
            stmt.setString(2, description);
            stmt.setDouble(3, coverageAmount);
            stmt.setDouble(4, premiumAmount);
            stmt.setInt(5, policyId);
            int rowsAffected = stmt.executeUpdate();
            
            // Optionally, you can redirect to a success page after updating the policy
            response.sendRedirect("policyUpdateSuccess.jsp");
        } catch (ClassNotFoundException | SQLException e) {
            // Handle exceptions
            e.printStackTrace();
            // Optionally, you can forward to an error page if the update fails
            request.getRequestDispatcher("policyUpdateError.jsp").forward(request, response);
        } finally {
            // Close resources
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }
}
