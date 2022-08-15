<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
                width: 200px;
                height: 100px;
                margin-left: 19%;
                box-shadow: 0px 15px 8px #888888;
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

            #hh2{
                display: inline;
            }
            .b1{
                width: 140px;
                height: 50px;
                background-color: #00ccff;
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
            String uname1 = (String) session.getAttribute("uname1");
        %>

        <div class="box1">

            <div class="boxleft">

                <h2 id="hh2">Welcome <%=uname1%></h2>

            </div>

            <div class="boxright">



                <form action="home.jsp" method="post">
                    <input class="b1" type="submit" value="LogOut">
                </form>
                
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

                    String upass1 = (String) session.getAttribute("upass1");

                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CampusRec", "root", "");
                    String sql1 = "select * from udata where uname=? and upass=?";
                    pst1 = con.prepareStatement(sql1);
                    pst1.setString(1, uname1);
                    pst1.setString(2, upass1);
                    rs = pst1.executeQuery();
                    while (rs.next()) {

                        String cname = rs.getString("cname");
                        String cemail = rs.getString("cemail");
                        String cri = rs.getString("cri");
                        String desig = rs.getString("cdesig");
                        String salary = rs.getString("salary");
                        String cid = rs.getString("cid");
                        String upass = rs.getString("upass");

            %>



            <div class="innerbox">
                <img src="viewImage.jsp?cid1=<%=cid%>"> <br><br>

                <div class="left">
                    <label for="" >Company Name</label><br>
                    <label for="">Email Id</label><br>
                    <label for="">Qualification</label><br>
                    <label for="">Designation</label><br>
                    <label for="">Salary</label><br>
                </div>

                <div class="right">
                    <label for="" class="lb"><%=cname%></label><br>
                    <label for=""><%=cemail%></label><br>
                    <label for=""><%=cri%></label><br>
                    <label for=""><%=desig%></label><br>
                    <label for=""><%=salary%></label><br>
                </div>
                <br><br>
                <br><br>
                <div class="bot">
                    
                </div>
                
                <a href="DeleteUserCompData?cid=<%=cid%>&upass=<%=upass%>">Delete</a>
                
               
                    


            </div>



            <%

                    }

                } catch (Exception e) {

                }

            %>


        </div>

        <!---------------services------->
        <script>
            function next()
            {
                
            }
        </script>
    </body>
</html>



