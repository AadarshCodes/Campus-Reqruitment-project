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
                height: 750px;
                display: flex;
                justify-content: center;
               background-color: rgba(210, 95, 166, 0.03);
            }

            .box {
                height: 500px;
                border: 1px solid black;
                padding: 10px 20px;
                border-radius: 10px;
                    margin-top: 100px;
                    background-color: rgba(30, 102, 0, 0.17)


            }

            .box:hover {
                box-shadow: 15px 20px 8px #888888;
            }

            .n1 {
                width: 280px;
                height: 38px;
                margin-bottom: 5px;
                font-size: larger;

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

            .but1 {
                width: 260px;
                height: 38px;
                font-size: larger;
                background-color: #0A3EF0;
                color: white;
                margin-left: 10px;
                border-radius: 15px;
            }

            .but1:hover {
                box-shadow: 5px 5px 2px #888888;
                background-color: #1A41C5;
            }
            h2{
                text-align: center;
            }
            h3{
                color: green;
            }
              .logo-inuserreg1{
                display: flex;
                height: 94px;
                text-align: center;
                margin-right: -315px;
                margin-top: 12px;
            }
        </style>
    </head>

    <body>


        <%--<%@ include file="Header.html" %>--%> 

        <div class="reg">
            
            <div class="logo-inuserreg1">
                <img src="image/newLogo.png" class="company-card-image"  style="height: 80px;" alt="...">
            </div>

            <%
                String msg1 = (String) request.getAttribute("msg");
                if (msg1 != null) {
            %>

            <h3>Data Successfully Saved</h3>
            <%
                } else {

                }

            %> 

            <div class="box">
                <h2>CREATE ACCOUNT</h2>
                <form action="CompData" method="post" enctype="multipart/form-data">


                    <input class="n1" type="text" name="cname" placeholder="Enter Company Name" /><br />
                    <input class="n1" type="email" name="cemail" placeholder="Enter Email Id" /><br />
                    <input class="n1" type="Password" name="cpass" placeholder="Enter Password" /><br />
                    <input class="n1" type="text" name="cloc" placeholder="Enter Location" /><br />
                    <input class="n1" type="number" name="salary" placeholder="Salary" /><br />
                    <select class="n1" name="criteria" title="Select Criteria ">
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

                    </select><br />

                    <select class="n1" name="desig" title="Select Designation">
                        <option value="-1"> Select Role</option>
                        <option>H.R. manager</option>
                        <option>PHP developer</option>
                        <option>Android developer</option>
                        <option>Project Manager</option>
                        <option>General Manager</option>
                        <option>Business Development Manager</option>
                        <option>Internet Marketing Head</option>
                        <option>Content Writter</option>
                        <option>System Administrator</option>
                        <option>analytics officer</option>
                        <option>administrative officer</option>
                        <option>business officer</option>


                    </select><br />

                    <input class="n1" type="text" name="skill" placeholder="Skills" /><br />
                    <label>Upload company Logo</label><br>
                    <input class="f1" type="file" name="cimg" title="Upload company Logo" /><br /><br />

                    <input class="but1" type="submit" value="Sign Up" /><br>


                </form>

            </div>

        </div>

        <!---------------services------->

        <%--<%@ include file="Footer.html" %>--%> 

    </body>



</html>
