<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="cssRegEmp.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link rel="stylsheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
    
               <style>
                            .box1 {
                                height: 100px;
                                display: flex;
                                justify-content: space-between;
                                align-items: center;
                                padding: 0px 30px;
                            }

                            .box2 {
                                display: flex;
                                justify-content: space-around;
                                padding: 20px 20px;
                                flex-wrap: wrap;
                            }

                            .innerbox {
                                width: 75%;
                                height: 600px;
                                border: 1px solid black;
                                padding: 10px;
                                margin-bottom: 35px;

                            }

                            .c2 {
                                width: 60%;
                            
                                height: 150px;
                            }

                            .c3 {
                                background-color: rgb(212, 206, 198);
                                grid-column: 1/4;
                                height: 200px;
                            }

                        

                            .innerbox img {
                                width: 300px;
                                height: 150px;
                            }



                            .left {
                                float: left;
                                width: 48%;

                            }

                            .left label {
                                font-weight: 600;
                                margin: 30px;
                            }

                            .right {

                                float: right;
                                width: 50%;
                                margin-left: 5px;

                            }

                            .lb {
                                font-size: large;
                                font-weight: 600;
                            }

                            .ach {
                                height: 60px;
                            }

                            .b1 a {
                                font-size: x-large;
                                margin-left: 90px;
                            }

                            #n1 {
                                width: 280px;
                                height: 35px;
                                padding: 5px;
                            }

                            .box101 {
                                display: flex;
                                justify-content: space-between;
                            }

                            .disc {
                                width: 100%;
                                height: 200px;
                             

                            }
                        </style>
    </head>

    <body>

        <%--<%@ include file="Header.html" %>--%> 
        <!-----about section------->

        <div class="box1">

            <div class="boxleft">

            </div>

            <div class="boxright">

                <a href="viewUserData.jsp"> View your details here </a>

            </div>



        </div>

<%
            String cname = request.getParameter("cname");
            String cemail = request.getParameter("cemail");
            String cri = request.getParameter("cri");
            String cdesig = request.getParameter("desig");
            String salary = request.getParameter("salary");
            String cid = request.getParameter("cid");
            String cloc = request.getParameter("cloc");
          
%>

      <div class="box2">

                            <div class="innerbox">

                                <div class="box101">

                                    <div class="c1">
                                        <img src="viewImage.jsp?cid1=<%=cid%>"><br><br>
                                    </div>

                                    <div class="c2">
                                        <span> <label for="" class="lb">
                                                <%=cname%>
                                            </label><br> </span><br>
                                            <span>Email Id : </span><label class="lb" for="">
                                            <%=cemail%>
                                        </label><br>

                                         <span>Location : </span>  <label class="lb" for="">
                                            <%=cloc%>
                                        </label><br>

                                      </div>

                                </div>


                                <div>
                                    <span>Designation:</span> <Span> <label for="">
                                            <%=cdesig%>
                                        </label><br></Span>

                                    <span>Salary: </span> <Span> <label for="">
                                            <%=salary%>
                                        </label><br></Span>


                                </div>

                                <div class="disc">


                                </div>




                                <div class="b1">
                                    <h3>Thanks for Applying</h3>
                                    <label for=""></label> <a href="ShowCompData.jsp">Back</a>
                                </div>

                            </div>



        <%
            String uname = (String) request.getAttribute("uname");
            String umo = (String) request.getAttribute("umo");
            String uemail = (String) request.getAttribute("uemail");
            String udesig = (String) request.getAttribute("udesig");
            String cpass = (String) request.getAttribute("cpass");
            String uid1 = (String) request.getAttribute("uid1");
 
            
//            out.println("-----");
//            out.println(uname);
//            out.println(cname);
//            out.println(uemail);
//            out.println(umo);
//            out.println(udesig);
//            out.println(cpass);
//            out.println(uid1);

            Connection con = null;
            PreparedStatement pst = null;
            try {
               Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CampusRec", "root", "");
                String sql = "insert into cdata values(?,?,?,?,?,?,?)";
                pst = con.prepareStatement(sql);

                pst.setString(1, uname);
                pst.setString(2, umo);
                pst.setString(3, uemail);
                pst.setString(4, udesig);
                pst.setString(5, cpass);
                pst.setString(6, uid1);
                pst.setString(7, cname);

                pst.execute();
     
            } catch (Exception e) {
                out.print(e);
            }
        %>

 <%@ include file="Footer.html" %> 

 
 
</body>

</html>
