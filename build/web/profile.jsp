<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <title>Page Title</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
        <script src='main.js'></script>
        <style>
            .box1 {
                height: 100px;
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 0px 30px;
            }
            .box2{
                display: flex;
                justify-content: space-around;
                padding: 20px 20px;
                flex-wrap: wrap;
            }

            .innerbox{
                width: 28%;
                height: 100%;
                background-color: whitesmoke;
                border: 1px solid black;
                box-shadow: 10px 15px 8px #888888;
                padding: 10px;
                margin-bottom: 35px;
            }

            .innerbox:hover{
                box-shadow: 15px 20px 8px #888888;
            }
            .innerbox img{
                width: 100%;
                height: 100px;


            }
            .left{
                float: left;
                width: 40%;
            }
            .left label{
                font-weight: 600;
            }
            .right{
                float: right;
                width: 58%;
                margin-left: 5px;
            }
            .lb{
                font-size: large;
                font-weight: 600;
            }
            #a1{
                font-size: x-large;
            }


            #n1{
                width: 280px;
                height: 35px;
                padding: 5px;
            }

        </style>
    </head>

    <body>

        <%@ include file="Header.html" %> 

        <form action="ShowCompData.jsp" method="post">
            <div class="box1">

                <div class="boxleft">


                    <select id="n1" style="width: 210px;" name="criteria" class="form-control" onchange="this.form.submit();">
                        <option value="-1"> Select Criteria</option>
                        <option>BSc</option>
                        <option>BE</option>
                        <option>BCOM</option>
                        <option>MCOM</option>
                        <option>MCA</option>
                        <option>MSc</option>
                        <option>MBA(Finance)</option>
                        <option>MBA(Marketing)</option>
                        <option>MBA(HR)</option>
                        <option>B.Pharm</option>
                        <option>D.Pharm</option>
                    </select>

                </div>

                <div class="boxright">

                    <a href="viewUserData.jsp">Click here for view your details </a>

                </div>



            </div>

            <div class="box2">


                <%!
                    Connection con;
                    PreparedStatement pst1 = null;
                    ResultSet rs;
                %>

                <%
                    try {

                        String uid = (String) session.getAttribute("uid");
                        String upass = (String) session.getAttribute("upass1");
                        String criteria = request.getParameter("criteria");

                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CampusRec", "root", "");
                        String sql1 = "select * from compdata where criteria=?";
                        pst1 = con.prepareStatement(sql1);
                        pst1.setString(1, criteria);
                        rs = pst1.executeQuery();

                        while (rs.next()) {

                            String cname = rs.getString("cname");
                            String cemail = rs.getString("cemail");
                            String cri = rs.getString("criteria");
                            String desig = rs.getString("desig");
                            String salary = rs.getString("salary");
                            String cpass = rs.getString("cpass");
                            String cid = rs.getString("cid");
                            String cloc = rs.getString("cloc");

                %>



                <div class="innerbox">
                
                    <img src="viewImage.jsp?cid1=<%=cid%>"> <br><br>

                    <table>
                        <tr>
                            <td><label>Company Name</label></td> <td><%=cname%></td>
                        </tr>

                        <tr>
                            <td> <label >Email Id</label></td> <td><%=cemail%></td>
                        </tr>

                        <tr>
                            <td> <label >Qualification</label></td> <td><%=cri%></td>
                        </tr>

                        <tr>
                            <td><label >Designation</label></td> <td><%=desig%></td>
                        </tr>

                        <tr>
                            <td><label >Salary</label></td> <td><%=salary%></td>
                        </tr>


                    </table>
                        
                    <div class="apply">
                        <a id="a1" href="saveUserData.jsp?cname=<%=cname%>&cemail=<%=cemail%>&cri=<%=cri%>&desig=<%=desig%>&salary=<%=salary%>&uid=<%=uid%>&upass=<%=upass%>&cpass=<%=cpass%>&cid=<%=cid%>&cloc=<%=cloc%>" class="btn btn-primary">Apply</a>
                    </div>
                </div>





                <%
                        }
                    } catch (Exception e) {
                        out.println(e);
                    }


                %>


            </div>



            <!--Second Coading for display data-->
            <!------------------------------------------------>

            <div class="box2">



                <%            try {

                       

                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CampusRec", "root", "");
                        String sql1 = "select * from compdata";
                        pst1 = con.prepareStatement(sql1);

                        rs = pst1.executeQuery();

                        while (rs.next()) {

                            String cname = rs.getString("cname");
                            String cemail = rs.getString("cemail");
                            String cri = rs.getString("criteria");
                            String desig = rs.getString("desig");
                            String salary = rs.getString("salary");
                            String cpass = rs.getString("cpass");
                            String cid = rs.getString("cid");
                            String cloc = rs.getString("cloc");
                %>




                <div class="innerbox">
                    <img src="viewImage.jsp?cid1=<%=cid%>"> <br><br>


                    <table>
                        <tr>
                            <td><label>Company Name</label></td> <td><%=cname%></td>
                        </tr>

                        <tr>
                            <td> <label >Email Id</label></td> <td><%=cemail%></td>
                        </tr>

                        <tr>
                            <td> <label >Qualification</label></td> <td><%=cri%></td>
                        </tr>

                        <tr>
                            <td><label >Designation</label></td> <td><%=desig%></td>
                        </tr>

                        <tr>
                            <td><label >Salary</label></td> <td><%=salary%></td>
                        </tr>


                    </table>
       

                    <div class="apply">
                        <a id="a1" href="saveUserData.jsp?cname=<%=cname%>&cemail=<%=cemail%>&cri=<%=cri%>&desig=<%=desig%>&salary=<%=salary%>&cpass=<%=cpass%>&cid=<%=cid%>&cloc=<%=cloc%>" class="btn btn-primary">Apply</a>
                    </div>


                </div>




                <%
                        }

                    } catch (Exception e) {
                        out.println(e);
                    }
                %>

            </div>

        </form>
    </body>

</html>
