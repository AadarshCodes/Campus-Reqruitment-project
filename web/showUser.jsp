<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.awt.Image"%>
<%@page import="javax.swing.ImageIcon"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.lang.String"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

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
                width: 25%;
                height: 300px;
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
                width: 180px;
                height: 140px;
                margin-left: 19%;
                box-shadow: 0px 15px 8px #888888;
            }
            .middle{
                display: flex;
                justify-content: space-between;
                background-color: #aaa;
            }
            .left{
/*                float: left;*/
                width: 40%;
            }
            .last{
                margin-top: 40px;
            }
            .left label{
                font-weight: 600;
            }
            .right{
/*                float: right;*/
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

            #hh2{
                display: inline;
            }
            .b1{
                width: 140px;
                height: 50px;
                background: linear-gradient(to bottom, #3399ff 0%, #00ccff 100%);
                font-size: 25px;
                font-weight: 700;
                color: white;
            }
            .bot{
                height: 50px;

            }

        </style>

    </head>


    <body>

        <%@ include file="Header.html" %> 
        <!-----about section------->

        <%
            String cname1 = (String) session.getAttribute("cname1");
        %>

        <div class="box1">

            <div class="boxleft">

                <h2 id="hh2">Welcome <%=cname1%></h2>

            </div>

            <div class="boxright">

                <form action="showUser.jsp" method="post">


                    <select id="n1" style="width: 210px;" name="desig" class="form-control" onchange="this.form.submit();" >
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

                    <form action="home.jsp">
                        <input class="b1" type="submit" value="LogOut">
                    </form>

            </div>



        </div>
        <!------------------------------------------------------------------------------------------->


        <div class="box2">


            <%!
                Connection con;
                PreparedStatement pst1 = null;
                ResultSet rs;


            %>
            <%

                try {

                    String cpass1 = (String) session.getAttribute("cpass1");

                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CampusRec", "root", "");
                    String sql1 = "select * from cdata";
                    pst1 = con.prepareStatement(sql1);
                    rs = pst1.executeQuery();
                    while (rs.next()) {

                        String uname = rs.getString("uname");
                        String cemail = rs.getString("uemail");
                        String umo = rs.getString("umo");
                        String desig = rs.getString("udesig");
                        String uid = rs.getString("uid");


            %>



            <div class="innerbox">
                <img src="ViewUserImage.jsp?uid1=<%=uid%>"> <br><br>



                <div class="middle">

                    <div class="left">
                        <label for="" >Name</label><br>
                        <label for="">Email Id</label><br>
                        <label for="">Contact No.</label><br>
                        <label for="">Qualification</label><br>

                    </div>

                    <div class="right">
                        <label for="" class="lb"><%=uname%></label><br>
                        <label for=""><%=cemail%></label><br>
                        <label for=""><%=umo%></label><br>
                        <label for=""><%=desig%></label><br>
                        <label for=""><%=uid%></label><br>

                    </div>

                </div>


                        <div class="last">   <a href="ViewResumeData.jsp?uid1=<%=uid%>"> Click here for Resume </a></div>

            </div>



            <%

                    }

                } catch (Exception e) {

                }

            %>


        </div>


    </body>
</html>


