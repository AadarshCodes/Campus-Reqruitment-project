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
            .reg {
                height: 700px;
                display: flex;
                justify-content: center;
                background-color: rgba(210, 95, 166, 0.03);
            }

            .box{
                height: 540px;
                border: 1px solid black;
                padding: 10px 20px;
                border-radius: 10px;
                margin-top: 121px;
                background-color: rgba(94, 90, 86, 0.03);

            }

            .box:hover{
                box-shadow: 15px 20px 8px #888888;
            }

            .n1{
                width: 280px;
                height: 38px;
                margin-bottom: 5px;
                font-size: medium;
                font-family: Times New Roman;

                border: none;
                outline: none;
                border-bottom: 1px solid black;
            }

            .f1 {
                width: 280px;
                height: 38px;
                margin-top: 10px;
                font-size: larger;

            }

            .but1{
                width: 260px;
                height: 38px;
                font-size: larger;
                background-color: #0A3EF0;
                color: white;
                margin-left: 10px;
                border-radius: 15px;
            }

            .but1:hover{
                box-shadow: 5px 5px 2px #888888;
                background-color: #1A41C5;
            }
            h2{
                text-align: center;
            }
            h3{
                color: green;
            }
            .logo-inuserreg{
                display: flex;
                height: 94px;
                text-align: center;
                margin-right: -315px;
                margin-top: 27px;
            }
        </style>

    </head>


    <body>
        <%

            String msg = (String) request.getAttribute("msg");

            if (msg != null) {
        %>

        <%
            } else {

            }
        %>
        <%--<%@ include file="Header.html" %>--%> 
        <%--<%@include file="Header.html" %>--%>


        <!-----about section------->

        <div class="reg">
            <div class="logo-inuserreg">
                <img src="image/newLogo.png" class="company-card-image"  style="height: 80px;" alt="...">
            </div>

            <div class="box">

                <h2>CREATE ACCOUNT</h2>
                <form action="UserData" method="post" enctype="multipart/form-data">

                    <input class="n1" type="text" name="name" placeholder="Enter Full Name" /><br />
                    <input class="n1" type="number" name="umo" placeholder="Enter Contact Number" /><br />
                    <input class="n1" type="email" name="uemail" placeholder="Enter Email Id" /><br />
                    <input class="n1" type="text" name="uname" placeholder="Enter User Name" /><br />
                    <input class="n1" type="Password" name="upass" placeholder="Enter Password" /><br />

                    <select class="n1" name="desig" title="Select Qualification">
                        <option value="-1"> Select Qualification</option>
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

                    </select><br />

                    <label for="">Upload your Image</label><br>

                    <input type="file" name="uimage" class="f1" title="Upload Your Image" /><br />

                    <label for="">Upload Your Resume into Image Format</label><br>
                    <input type="file" name="resume" class="f1" title="Upload Your Resume into Image Format"/><br /><br />

                    <input class="but1" type="submit" value="Sign Up" /><br>





                </form>

            </div>

        </div>
        <!---------------services------->

        <%@ include file="Footer.html" %> 

    </body>
</html>



