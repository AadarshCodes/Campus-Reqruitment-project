
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
           <%
            Connection con = null;
            PreparedStatement pst1 = null;
            ResultSet rs;
            
            try {
                String uid = request.getParameter("uid1");
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CampusRec", "root", "");
                
                String sql1 = "select * from userdata where uid=?";
                pst1 = con.prepareStatement(sql1);
                pst1.setString(1, uid);
                rs = pst1.executeQuery();
                while (rs.next()) {
                    Blob blob = rs.getBlob("resume");
                    byte byteArray[] = blob.getBytes(1, (int)blob.length());
                    response.setContentType("image/gif");
                    OutputStream os = response.getOutputStream();
                    os.write(byteArray);
                    os.flush();
                    os.close();
                }

              
            } catch (Exception e) {

            }
        %>
    </body>
</html>
