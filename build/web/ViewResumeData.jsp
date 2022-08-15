
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>


        <style>
            .box1 {
                height: 100px;
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 0px 30px;
            }

            .b1{
                width: 140px;
                height: 50px;
                background: linear-gradient(to bottom, #3399ff 0%, #00ccff 100%);
                font-size: 25px;
                font-weight: 700;
                color: white;
            }
           

        </style>
    </head>
    <body>
        <%@ include file="Header.html" %> 

        <div class="box1">

            <div class="boxleft">

                <form action="showUser.jsp">
                    <input  class="b1" type="submit" value="Back">
                </form>

            </div>

            <div class="boxright"> 

                <form action="home.jsp">
                        <input class="b1" type="submit" value="LogOut">
                    </form>

            </div>



        </div>

        <%
            String uid1 = request.getParameter("uid1");
        %>
        <img src="viewResume.jsp?uid1=<%=uid1%>" width="800px" height="1200px">
    </body>
</html>
