<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <style>

            .reg {


                display: flex;
                font-size: 15px;
                line-height: 1.6rem;
                letter-spacing: 0.004em;
                color: #958d9e;
                width: 100%;
                height: 100%;
                overflow-x: hidden;
                -webkit-font-smoothing: antialiased;
                justify-content: center;
                align-items: center;
                font-family:gorgien;
                font-size: bold;
                background-color: rgba(8, 50, 98, 0.03);

            }

            .box {
                display: flex;
                height: 400px;
                border: 1px solid black;
                border-radius: 10px;
                padding: 30px 20px;
                background-color: white;
                margin-top: 500px;
                margin-right: 500px;
                justify-content: center;
                padding: 40px;
                margin: 40px;
                width: 300px;
                font-weight: 5px;



            }

            .n1 {
                width: 280px;
                height: 38px;
                margin-bottom: 5px;
                border: none;
                outline: none;
                border-bottom: 1px solid black;
            }

            .but1 {
                width: 210px;
                height: 38px;
                font-size: larger;
                background-color: #0A3EF0;
                color: white;
                margin-left: 40px;
                margin-bottom: 5px;
                border-radius: 15px;
                background-color:#0000ff;
                font-family:gorgien;
            }

            .but1:hover {
                box-shadow: 5px 5px 2px #888888;
                background-color: #1A41C5;
            }

            h3{
                text-align: center;
            }

            h1 {
                text-align: center;
            }

            label{
                font-weight: 700;
            }


        </style>
    </head>

    <body>

      
        <div class="reg">


            <div class="box" display:flex;>
                <form action="LoginCheck" method="post">
                    <h1>Log in</h1> 
                    <h3>Fill the form to log in</h3> 
                    <br />
                    <label>Username</label><br>
                    <input class="n1" type="text" name="uname" placeholder="Type your username" /><br />
                    <label>Password</label><br>
                    <input class="n1" type="password" name="upass" placeholder="Type your Password" /><br /> <br />

                    <input class="but1" type="submit" value="Sign In " /><br /><br>
                    <label>Don't have an account:?</label> <a href="userReg.jsp">Sign Up</a><br />

                    <%
                        String msg1 = (String) request.getAttribute("msg");
                        if (msg1 != null) {
                            out.print(msg1);
                        } else {

                        }

                    %> 
                </form>

            </div>

        </div>

        <%@ include file="Footer.html" %> 
    </body>

</html>


