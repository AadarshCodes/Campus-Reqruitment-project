import java.io.File;
import java.sql.*;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.*;

@MultipartConfig
public class CompData extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            Random ra = new Random();
            String cid = ("cid" + ra.nextInt(10000 + 1));

            String cname = request.getParameter("cname");
            String cemail = request.getParameter("cemail");
            String cpass = request.getParameter("cpass");
            String cloc = request.getParameter("cloc");
            String criteria = request.getParameter("criteria");
            String salary = request.getParameter("salary");
            String desig = request.getParameter("desig");
            String skill = request.getParameter("skill");
         
            

            Part file = request.getPart("cimg");     
            String filename = file.getSubmittedFileName();
            InputStream is = file.getInputStream();

            Connection con = null;
            PreparedStatement pst = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CampusRec", "root", "");
                String sql = "insert into compdata values(?,?,?,?,?,?,?,?,?,?)";
                pst = con.prepareStatement(sql);
                
                pst.setString(1, cname);
                pst.setString(2, cemail);
                pst.setString(3, cpass);
                pst.setString(4, cloc);
                pst.setString(5, criteria);
                pst.setString(6, salary);
                pst.setString(7, desig);
                pst.setString(8, cid);
                pst.setBlob(9, is);
                pst.setString(10, skill);

               pst.execute();
               request.setAttribute("msg", "Data Successfully Saved");
               RequestDispatcher rd = request.getRequestDispatcher("compReg.jsp");
               rd.forward(request, response);
         

            } catch (Exception e) {
                out.println(e);
            }

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
