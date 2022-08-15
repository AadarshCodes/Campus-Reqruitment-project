<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>



        <%

            // data fetch from session
            String uid = (String) session.getAttribute("uid");
            String upass = (String) session.getAttribute("upass1");
            String uname1 = (String) session.getAttribute("uname1");

            if (uid != null && upass != null && uname1 != null) {

                // deta fetch from apply button
                String cname = request.getParameter("cname");
                String cemail = request.getParameter("cemail");
                String cri = request.getParameter("cri");
                String cdesig = request.getParameter("desig");
                String salary = request.getParameter("salary");
                String cpass = request.getParameter("cpass");
                String cid = request.getParameter("cid");
                String cloc = request.getParameter("cloc");

                Connection con = null;
                PreparedStatement pst = null;
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CampusRec", "root", "");
                    String sql = "insert into udata values(?,?,?,?,?,?,?,?,?)";
                    pst = con.prepareStatement(sql);

                    pst.setString(1, cname);
                    pst.setString(2, cemail);
                    pst.setString(3, cri);
                    pst.setString(4, cdesig);
                    pst.setString(5, salary);
                    pst.setString(6, upass);
                    pst.setString(7, cid);
                    pst.setString(8, uname1);
                    pst.setString(9, cloc);

                    pst.execute();

                } catch (Exception e) {
                    out.print("sUD 1" + e);
                }

                ResultSet rs1;
                Connection con1 = null;
                PreparedStatement pst1 = null;
                try {

                    Class.forName("com.mysql.jdbc.Driver");
                    con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/CampusRec", "root", "");
                    String sql1 = "select * from userdata where uid=?";
                    pst1 = con1.prepareStatement(sql1);
                    pst1.setString(1, uid);

                    rs1 = pst1.executeQuery();
                    if (rs1.next()) {
                        String uname = rs1.getString("uname");
                        String umo = rs1.getString("umo");
                        String uemail = rs1.getString("uemail");
                        String udesig = rs1.getString("desig");
                        String uid1 = rs1.getString("uid");

                        Connection con11 = null;
                        PreparedStatement pst11 = null;
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            con11 = DriverManager.getConnection("jdbc:mysql://localhost:3306/CampusRec", "root", "");
                            String sql11 = "insert into cdata values(?,?,?,?,?,?,?)";
                            pst11 = con11.prepareStatement(sql11);

                            pst11.setString(1, uname);
                            pst11.setString(2, umo);
                            pst11.setString(3, uemail);
                            pst11.setString(4, udesig);
                            pst11.setString(5, cpass);
                            pst11.setString(6, uid1);
                            pst11.setString(7, cname);

                            pst11.execute();

                        RequestDispatcher rd = request.getRequestDispatcher("viewUserData.jsp");
                        rd.forward(request, response);
                        
                        
                        } catch (Exception e) {
                            out.print("sUD 1" + e);
                        }


                    } else {

                        response.sendRedirect("login.jsp");

                    }

                } catch (Exception e) {
                    out.print("sUD 2" + e);
                }

            } else {
                response.sendRedirect("login.jsp");
            }

        %>


    </body>
</html>
