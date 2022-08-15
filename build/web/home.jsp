<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <title>Campus Recruitment Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css1.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link rel="stylsheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">


        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>





        <link href="assets/images/logo.png" rel="icon">

        <!-- Additional CSS Files -->
        <link rel="stylesheet" type="text/css" href="project/assets/css/bootstrap.min.css">

        <link rel="stylesheet" type="text/css" href="project/assets/css/font-awesome.css">

        <link rel="stylesheet" href="project/assets/css/templatemo-training-studio.css">

        <style>
            * {
                box-sizing: border-box;
            }

            /* Create two unequal columns that floats next to each other */
            /* Left column */
            /*            .leftcolumn {
                            float: left;
                            width: 100%;
                            background-color: white;
            
                        }*/

            /*Right column*/
            /*            .rightcolumn {
                            float: left;
                            width: 25%;
                        }*/

            #services{
                margin-top: 10px;
            }

            /* Fake image */
            body{
                background-color: ghostwhite;
            }
            .fakeimg {
                background-color: #aaa;
                width: 100%;
                padding: 20px;
            }

            /* Add a card effect for articles */
            .card {
                background-color: white;
                padding: 20px;
                margin-top: -41px
            }




            .CompanyCards1{
                border: solid gray 0.5px;
                margin-bottom: 15px;
                margin-left: 30px;
                display: inline-block;
            }
            .company-card-image{
                width: 10rem;
                margin-left: 53px;
                margin-top: 15px;
            }
            #heading{
                font-weight: Revert;
                margin-bottom: 32px;
                margin-top: -77px;
                margin-left: 20px;
                font-size: x-large;
                text: bold;
                color: black;
            }

            .contentwrap {
                padding: 16px;
                border-radius: 12px 6px;

                -webkit-box-pack: center;
                -ms-flex-pack: center;
                justify-content: center;
                height: 92px;
            }
            .contentwrap .title {
                display: -webkit-box;
                -webkit-line-clamp: 2;
                -webkit-box-orient: vertical;
                -o-text-overflow: ellipsis;
                text-overflow: ellipsis;
                overflow: hidden;
                height: unset;
            }
            .contentwrap .title .compName {
                color: #1b2437;
                margin-left: 35px;
            }

            .contentwrap .additionalDetails {
                color: #8292b4;
                position: relative;
                margin: 2px 0 0;
                margin-left: 14px;
            }

            .contentwrap .additionalDetails .star {
                color: #ffc000;
                font-size: 11px;
                position: absolute;
                top: 1px;
                max-width: 12px;
            }
            .contentwrap .additionalDetails .star .starImage {
                position: relative;
                width: 12px;
                height: 12px;
                margin-top: 5px;
            }
            .contentwrap .additionalDetails .rating {
                padding-right: 6px;
                border-right: 1px solid #d3e1ea;
                margin-right: 6px;
                font-weight: 600;
                margin-left: 18px;
            }
            .main-2 {
                font-size: 13px;
                line-height: 14px;
            }
            .tuple.premium .adDescWrap {
                margin-top: 15px;
                display: flex;
                flex-direction: column;
                justify-content: center;
                height: 36px;
            }
            .tuple.premium .adDescWrap .adDesc {
                display: -webkit-box;
                -webkit-line-clamp: 2;
                -webkit-box-orient: vertical;
                text-overflow: ellipsis;
                overflow: hidden;
                color: #8292b4;
                text-align: center;
            }
            .tuple.premium .ctaWrap {
                margin-top: 15px;
                text-align: center;
            }
            p {
                font-size: 14px;
                line-height: 25px;
                color: #7a7a7a;
                text-align: center;
            }
            #applay-button{
                text-align: center;
                border: solid blue 1px;
                height: 40px;
                width: 111px;
                border-radius: 25px;
                margin-top: 15px;
                text-align: center;
                background-color: #f1f5ff;
                margin-left: 46px;
            }
            #cta{
                color: #457eff;
                font-weight: 600;
                background-color: #f1f5ff;
                display: inline-block;
                margin-top: 8px;
            }
            .companyListingTitle {
                font-weight: 700;
                font-size: 27px;
                line-height: 50px;
                color: #1b2437;
                margin: 86px 180px 52px;
                text-align: center;
                max-height: 100px;
                overflow: hidden;
                font-family: "Roboto Slab";
                padding-bottom: 47px;
            }
            .btn-primary {
                margin-left: 100px;
                color: #fff;
                background-color: #007bff;
                border-color: #007bff;
                text-align: center;
                margin-top: 16px;
            }
            .logIn {
                height: 34px;
                width: 72.047px;
                border: solid blue 2px;
                border-radius: 15px;
                margin-top: 20px;
            }
            .col-md-6 {
                -ms-flex: 0 0 50%;
                flex: 0 0 50%;
                max-width: 50%;
                text-align: center;
            }


            /* *****************Media-Queries(Medium-Devices)***********/
            @media screen and (max-width:1024px) {
                Header .link a{
                    display: flex;
                    position:initial
                    background: red
                }
            }
        </style>


    </head>


    <body>

        <%@ include file="Header.html" %> 


        <!--***** Main Banner Area Start *****--> 
        <div class="main-banner" id="top">
            <video autoplay muted loop id="bg-video">
                <source src="project/assets/images/video.mp4" type="video/mp4" />
            </video>

            <div class="video-overlay header-sticky">
                <div class="caption">
                    <h2><em>FIND YOUR DREAM JOB HERE</em></h2>
                    <div class="main-button scroll-to-section">
                        <a href="userReg.jsp">Register</a>
                    </div>
                </div>
            </div>
        </div>
        <!--***** Main Banner Area End *****--> 



        <!-- ***** Companies ***** -->
        <section class="section" id="our-classes">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="section-heading">
                            <h2>Companies <em>for</em> Recruitment</h2>
                            <img src="project/assets/images/line-dec.png" alt="">
                            <p>COMPANIES WE PROVIDE</p>
                        </div>
                    </div>
                </div>

                <section class='tabs-content'>
                    <img src="project/assets/images/byjus.jpg" alt="BYJUS">
                    <img src="project/assets/images/amazon.png" alt="AMAZON">
                    <img src="project/assets/images/capgemini.webp" alt="CAPGEMINI">
                    <img src="project/assets/images/cybage.jpg" alt="CYBAGE">
                    <img src="project/assets/images/google.png" alt="GOOGLE">
                    <img src="project/assets/images/hcl.png" alt="HCL">
                    <img src="project/assets/images/infosys.webp" alt="INFOSYS">
                    <img src="project/assets/images/infosys.webp" alt="INFOSYS">
                    <img src="project/assets/images/mirosoft.png" alt="MICROSOFT">
                    <img src="project/assets/images/wipro.png" alt="WIPRO">
                    <img src="project/assets/images/tech.png" alt="TECH-MAHINDRA">
                    <br><br>
                    <h1 style="text-align: center;"><pre>AND MANY MORE</pre></h1>
                    </article>
                </section>

            </div>
        </section>




        <!--top companys cards 1-->
        <div class=" companyListingTitle">Featured companies actively hiring</div>

        <div class="top-companies" style="">
            <div class="CompanyCards1" style="width: 17rem;
                 display: inline-block;">
                <img src="project/assets/images/google.png" class="company-card-image" alt="...">
                <div class="card-body">
                    <div class="contentwrap" style="background-color: rgba(237, 29, 37, 0.03);">
                        <h3 class="main-6 title" style="-webkit-line-clamp: 2;">
                            <a class="compName" href="">Google</a>
                        </h3>
                        <div class="additionalDetails">
                            <span class="star">
                                <img src="image/starimage.webp" alt="rating" class="starImage">
                            </span>
                            <span class="main-2 rating">4.1</span>
                            <span class="main-2 reviews">11.5K+  reviews</span>
                        </div>
                    </div>
                    <div class="adDescWrap">
                        <p class="main-3 adDesc" style="-webkit-line-clamp: 2;">Leading global IT & services company.</p>
                    </div>
                    <div class="ctaWrap" id="applay-button">
                        <a class="main-5 cta" href="userReg.jsp" id="cta" target="_blank">View jobs</a>                  
                    </div>
                </div>
            </div>

            <!--top companys cards 2-->

            <div class="CompanyCards1" style="width: 17rem;
                 display: inline-block;">
                <img src="project/assets/images/capgemini.webp" class="company-card-image" style="height: 80px;" alt="...">
                <div class="card-body">
                    <div class="contentwrap" style="background-color:rgba(19, 41, 75, 0.03);">
                        <h3 class="main-6 title" style="-webkit-line-clamp: 2;">
                            <a class="compName" style="margin-right: 15px;" href="">Capgemini</a>
                        </h3>
                        <div class="additionalDetails">
                            <span class="star">
                                <img src="image/starimage.webp" alt="rating" class="starImage">
                            </span>
                            <span class="main-2 rating">4.3</span>
                            <span class="main-2 reviews">12.5K+  reviews</span>
                        </div>
                    </div>
                    <div class="adDescWrap">
                        <p class="main-3 adDesc" style="-webkit-line-clamp: 2;">global software & hardware company.</p>
                    </div>
                    <div class="ctaWrap" id="applay-button">
                        <a class="main-5 cta" href="userReg.jsp" id="cta" target="_blank">View jobs</a>                  
                    </div>
                </div>
            </div>


            <!--top companys cards 3-->

            <div class="CompanyCards1" style="width: 17rem;">
                <img src="project/assets/images/byjus.jpg" class="company-card-image" alt="...">
                <div class="card-body">
                    <div class="contentwrap" style="background-color: rgba(245, 171, 64, 0.03);">
                        <h3 class="main-6 title" style="-webkit-line-clamp: 2;">
                            <a class="compName" style="margin-right:20px;" href ="">Byju's</a>
                        </h3>
                        <div class="additionalDetails">
                            <span class="star">
                                <img src="image/starimage.webp" alt="rating" class="starImage">
                            </span>
                            <span class="main-2 rating">3.9</span>
                            <span class="main-2 reviews">15.5K+  reviews</span>
                        </div>
                    </div>
                    <div class="adDescWrap">
                        <p class="main-3 adDesc" style="-webkit-line-clamp: 2;">India's top leading education company.</p>
                    </div>
                    <div class="ctaWrap" id="applay-button">
                        <a class="main-5 cta" href="userReg.jsp" id="cta" target="_blank">View jobs</a>                  
                    </div>
                </div>
            </div>


            <!--top companys cards 4-->

            <div class="CompanyCards1" style="width: 17rem;">
                <img src="project/assets/images/amazon.png" class="company-card-image"  style="height: 80px;" alt="...">
                <div class="card-body">
                    <div class="contentwrap" style="background-color: rgba(142, 159, 226, 0.03);">
                        <h3 class="main-6 title" style="-webkit-line-clamp: 2;">
                            <a class="compName" href="">Amazon</a>
                        </h3>
                        <div class="additionalDetails">
                            <span class="star">
                                <img src="image/starimage.webp" alt="rating" class="starImage">
                            </span>
                            <span class="main-2 rating">4.5</span>
                            <span class="main-2 reviews">8.5K+  reviews</span>
                        </div>
                    </div>
                    <div class="adDescWrap">
                        <p class="main-3 adDesc" style="-webkit-line-clamp: 2;">Leading global gient e-commerce company.</p>
                    </div>
                    <div class="ctaWrap" id="applay-button">
                        <a class="main-5 cta" href="userReg.jsp" id="cta" target="_blank">View jobs</a>                  
                    </div>
                </div>
            </div>
        </div>

        <div class=" companyListingTitle"> Top Review By Satisfied Job Seeker</div>
        <div class="card" style="width:25rem; background-color:rgba(210, 95, 166, 0.03);
             margin-bottom: 150px;
             margin-left:35px;
             display: inline-block;">
            <img src="image/review.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h4 class="card-title">Review By Andy Watson..</h4>
                <p class="card-text">I feel very happy working at TCS
                    The culture is very positive and transparent and everyone is open to new ideas and suggestions
                    There are lots of opportunities for growth at TCS
                    <br>
                    Thank You SO Much Campus Recruitment To Get Me This Opportunity.....</p>
                <a href="#" class="btn btn-primary">More-Info</a>
            </div>
        </div>

        <div class="card" style="width:25rem; background-color:rgba(210, 95, 166, 0.03);
             margin-bottom: 150px;
             margin-left: 35px;
             display: inline-block;">
            <img src="image/review2.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h4 class="card-title">Review By Alina Markos..</h4>
                <p class="card-text">I feel very happy working at TCS
                    The culture is very positive and transparent and everyone is open to new ideas and suggestions
                    There are lots of opportunities for growth at TCS
                    <br>
                    Thank You SO Much Campus Recruitment To Get Me This Opportunity.....</p>
                <a href="#" class="btn btn-primary">More-Info</a>
            </div>
        </div>

        <div class="card" style="width:25rem; background-color:rgba(210, 95, 166, 0.03);
             margin-bottom: 150px;
             margin-left: 35px;
             display: inline-block;">
            <img src="image/reviview5.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h4 class="card-title">Review By Ganesh Arya..</h4>
                <p class="card-text">I feel very happy working at TCS
                    The culture is very positive and transparent and everyone is open to new ideas and suggestions
                    There are lots of opportunities for growth at TCS
                    <br>
                    Thank You SO Much Campus Recruitment To Get Me This Opportunity.....</p>
                <a href="#" class="btn btn-primary">More-Info</a>
            </div>
        </div>



        <section id="AboutUs" style=" background-color: rgba(251, 225, 0, 0.03);"> 
            <div class="container" ">
                <div class="row">
                    <div class="col-md-6">
                        <h2 style="  font-family:Roboto Slab;">About Us</h2>
                        <div class="about-content">
                            This  project  Campus Recruitment  is an application in which jobseekers can register themselves online and apply for job and attend the exam. 
                            Online Recruitment System provides online help to the users all over the world. Using web recruitment systems like recruitment websites or jobsites
                            also play a role in simplifying the recruitment process. Such websites have facilities where prospective candidates can upload their CV’s and apply
                            for jobs suited to them. Such sites also make it possible for recruiters and companies to post their staffing requirements and view profiles of interested candidates. 
                        </div>
                        <button type="button" class="btn btn-primary">Read more>></button>   
                    </div>
                    <div class="col-md-6 skills-bar">
                        <div><h3>User Login</h3></div>
                        <form id="regmenu" action="userlogincheck.jsp" method="post">

                            <input id="n1" type="text" name="uname" title="Enter user Name" placeholder="User name" style="width: 280px;
                                   height: 33px;" required/><br/> 
                            <input id="n1" type="password" name="upass" title="Enter user Password" placeholder="Password" style="width: 280px;
                                   height: 33px;" required/><br/> <br/>   

                            <input id="but1" type="submit" value="Sign In >>" class="btn btn-primary" /><br/>
                            <a class="aaa" href="registration.jsp">New User? Sign Up</a><br/>
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
        </section>
    </div>
    <!---------------services------->
    <section id="services" style=" background-color: rgba(251, 225, 0, 0.03);
             font-family: times new roman;">
        <div class="container">
            <h1>Contact Us</h1>
            <div class="row services">
                <div class="col-md-4 text-center">
                    <form id="regmenu" action="userlogincheck.jsp" method="post">

                        <input id="n1" type="text" name="fname" title="Full Name" placeholder="Full Name" style="width: 280px;
                               height: 33px;
                               margin-right: 68px;" required/><br/> 
                        <input id="n1" type="email" name="email" title="Email" placeholder="Email" style="width: 280px;
                               height: 33px;
                               margin-right: 68px;" required/><br/>  
                        <textarea id="n1" name="disc" rows="5" cols="60" placeholder="Message"></textarea><br/>
                        <input id="but1" style="margin-right:280px" type="submit" value="Submit" class="btn btn-primary" /><br/>



                    </form> 
                </div>


            </div>
        </div>
    </div>

</section><br><br><br>
</div>
</div>
</div>
</div>
</section>

<!-- jQuery -->
<script src="assets/js/jquery-2.1.0.min.js"></script>

<!-- Bootstrap -->
<script src="project/assets/js/popper.js"></script>
<script src="project/assets/js/bootstrap.min.js"></script>

<!-- Plugins -->
<script src="project/assets/js/scrollreveal.min.js"></script>
<script src="project/assets/js/waypoints.min.js"></script>
<script src="project/assets/js/jquery.counterup.min.js"></script>
<script src="project/assets/js/imgfix.min.js"></script> 
<script src="project/assets/js/mixitup.js"></script> 
<script src="project/assets/js/accordions.js"></script>

<!-- Global Init -->
<script src="project/assets/js/custom.js"></script>




</div>
</section>
<%--<%@ include file="Footer.html" %>--%> 
</body>
</html>


