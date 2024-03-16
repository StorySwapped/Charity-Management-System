
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="project.aspx.cs" Inherits="db.project" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hope For All</title>
    <style>
        html, body
        {
            scroll-behavior: smooth;
        }

/* Position the content inside the overlay */
.overlay-content {
  position: relative;
  top: 25%; /* 25% from the top */
  width: 100%; /* 100% width */
  text-align: center; /* Centered text/links */
  margin-top: 30px; /* 30px top margin to avoid conflict with the close button on smaller screens */
}

/* The navigation links inside the overlay */
.overlay a {
  padding: 8px;
  text-decoration: none;
  font-size: 36px;
  color: #818181;
  display: block; /* Display block instead of inline */
  transition: 0.3s; /* Transition effects on hover (color) */
}

/* When you mouse over the navigation links, change their color */
.overlay a:hover, .overlay a:focus {
  color: #f1f1f1;
}

/* Position the close button (top right corner) */
.overlay .closebtn {
  position: absolute;
  top: 20px;
  right: 45px;
  font-size: 60px;
}

/* When the height of the screen is less than 450 pixels, change the font-size of the links and position the close button again, so they don't overlap */
@media screen and (max-height: 450px) {
  .overlay a {font-size: 20px}
  .overlay .closebtn {
    font-size: 40px;
    top: 15px;
    right: 35px;
  }
}
        .navigationmenu {
            height: 0;
            width: 99vw;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1;
            background: linear-gradient(to right, #827878, #800000);
            overflow-x: hidden;
            transition: 0.5s;
        }


            .navigationmenu a {
                margin: 20px 45% 10px 45%;
                text-decoration: none;
                font-size: 45px;
                color: white;
                display:block;
                transition: 0.3s;
            }


                .navigationmenu a:hover {
                    color: black;

                }


          
            .navigationmenu .closebtn {
                position: fixed;
                top: 15px;
                left: 25px;
                font-size: 80px;
                color: white;
                position: relative;
            }
                .navigationmenu .closebtn:hover {
                    cursor: pointer;
                    color: black;
                }


        .dropbtn {
            position: relative;
            margin: 10px 45% 10px 44vw;
            background-color: inherit;
            cursor: pointer;
            border: none;
            font-family: 'Times New Roman';
            text-decoration: none;
            font-size: 45px;
            color: white;
            display: block;
            transition: 0.3s;
        }


            .dropbtn:hover, .dropbtn:focus {
                color: black;
            }

/* The container <div> - needed to position the dropdown content */
.dropdown {
  position: relative;
  display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
  display: none;
  position: relative;
  margin: 10px 45% 10px 10vw;
  background-color: #f1f1f1;
 width:80vw;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
    justify-content:center;
  color: black;
  padding:5px 0 0 -40px;
  font-size:30px;
  text-decoration: none;
  display: block;
}


/* Show the dropdown menu (use JS to add this class to the .dropdown-content container when the user clicks on the dropdown button) */
.show {display:block;}
        #mainmenu {
            background-color: black;
            position: relative;
            top: -8px;
            left: -8px;
            background-image: url(cover11.jpeg);
            background-size: cover;
            height: 100vh;
            width: 99vw;
        }
            #mainmenu #login {
                border: 3px solid;
                font-size: 30px;
                color: white;
                background-color: #8b0000;
                border: 3px solid;
                border-color: #8b0000;
                border-radius: 12px;
                padding: 7px 10px 7px 10px;
                position: absolute;
                top: 25px;
                left: 100px;
                text-decoration: none;
            }
                #mainmenu #login:hover {
                    color: black;
                    cursor: pointer;
                }
            #mainmenu #signup {
                border: 3px solid;
                font-size: 30px;
                color: white;
                background-color: #800000;
                border: 3px solid;
                border-color: #800000;
                border-radius: 12px;
                padding: 7px 10px 7px 10px;
                position: absolute;
                top: 25px;
                left: 210px;
                text-decoration: none;
            }


                #mainmenu #signup:hover {
                    color: black;
                    cursor: pointer;
                }

              #mainmenu #donate {
                border: 3px solid;
                font-size: 30px;
                color: white;
                background-color: #189b09;
                border: 3px solid;
                border-color: #189b09;
                border-radius: 12px;
                padding: 7px 10px 7px 10px;
                position: absolute;
                top: 25px;
                left: 350px;
                text-decoration: none;
            }


                #mainmenu #donate:hover {
                    color: black;
                    cursor: pointer;
                }


                #mainmenu #profile {
                border: 3px solid;
                font-size: 30px;
                color: white;
                background-color: #c9cb10;
                border: 3px solid;
                border-color: #c9cb10;
                border-radius: 12px;
                padding: 7px 10px 7px 10px;
                position: absolute;
                top: 25px;
                right: 50px;
                text-decoration: none;
            }


                #mainmenu #profile:hover {
                    color: black;
                    cursor: pointer;
                }
            #mainmenu #bars {
                font-size: 50px;
                color: white;
                background-color: black;
                position: absolute;
                top: 13px;
                left: 25px;
                border: 5px solid;
                border-color: black;
                border-radius: 15px;
            }
                #mainmenu #bars:hover {
                    cursor: pointer;
                }

            #mainmenu #button {
                transition: 0.5s;
                position: absolute;
                left: 0;
                top: 0;
                width: 99vw;
            }


        @font-face {
            font-family: 'maintext';
            src: url('Futura Black.ttf');
        }
        #mainmenu #maintext {
            transition: 0.5s;
            position: absolute;
            left: 0;
            top: 0;
        }

        #mainmenu #arrow {
            position: absolute;
            top: 90%;
            left: 50%;
            height: 70px;
            width: 70px;
            transition: 0.5s;
        }
            #mainmenu #arrow:hover {
                cursor: pointer;
            }


        #aboutus {
            position: relative;
            top: -25px;
            left: -8px;
            border-bottom: 100px solid;
            border-color: #b20000;
            background-size: cover;
            height: 80vh;
            width: 99vw;
        }
            #aboutus #educationlogo {
                position: absolute;
                height: 100px;
                width: 100px;
                top: 310px;
                left: 400px;
            }
            #aboutus #edutext {
                position: absolute;
                height: 200px;
                width: 200px;
                top: 310px;
                left: 550px;
                color: #b20000;
                font-size: 50px;
            }
            #aboutus #foodlogo {
                position: absolute;
                height: 100px;
                width: 100px;
                top: 310px;
                left: 1050px;
            }
            #aboutus #foodtext {
                position: absolute;
                height: 200px;
                width: 200px;
                top: 310px;
                left: 1210px;
                color: #b20000;
                font-size: 50px;
            }
            #aboutus #medicallogo {
                position: absolute;
                height: 130px;
                width: 130px;
                top: 470px;
                left: 380px;
            }
            #aboutus #medicaltext {
                position: absolute;
                height: 200px;
                width: 200px;
                top: 480px;
                left: 550px;
                color: #b20000;
                font-size: 50px;
            }

            #aboutus #homelogo {
                position: absolute;
                height: 110px;
                width: 110px;
                top: 470px;
                left: 1050px;
            }
            #aboutus #hometext {
                position: absolute;
                height: 180px;
                width: 180px;
                top: 480px;
                left: 1210px;
                color: #b20000;
                font-size: 50px;
            }
            #aboutus #paratext {
                background: linear-gradient(to right, #9f9494, #9db40d);
                position: absolute;
                left: 300px;
                top: 50px;
                text-align: center;
                font-style: oblique;
                padding: 10px;
                font-family: 'Times New Roman';
                font-size: 25px;
                color: #b20000;
                border-radius: 10px;
                border: 5px solid;
                border-color: #b20000;
                box-shadow: 20px 10px 5px 5px #b20000;
            }
            #aboutus #arrow2 {
                position: absolute;
                top: 103%;
                left: 50%;
                height: 70px;
                width: 70px;
                transition: 0.5s;
            }
                #aboutus #arrow2:hover {
                    cursor: pointer;
                }

        #projects {
            position: relative;
            left: -7px;
            padding: 100px 0 0 0;
            width: 98.5vw;
            height: 80vh;
            border-bottom: 100px solid;
            border-spacing: 50px 50px;
            border-color: #b20000;
            background-size: cover;
            height: 80vh;
            width: 99vw;
        }
            #projects .slideshow-container {
                max-width: 1000px;
                position: relative;
                margin: auto;
                left: 0px;
            }
            #projects .image
            {
                width:1000px;
                height:600px;
            }
            #projects .prev, .next {
                cursor: pointer;
                position: absolute;
                top: 50%;
                width: auto;
                margin-top: -22px;
                padding: 16px;
                color: white;
                font-weight: bold;
                font-size: 18px;
                transition: 0.6s ease;
                border-radius: 0 3px 3px 0;
                user-select: none;
            }
            #projects .next {
                right: 0;
                border-radius: 3px 0 0 3px;
            }
            #projects .prev:hover, .next:hover {
                background-color: rgba(0,0,0,0.8);
            }
            #projects .dot {
                cursor: pointer;
                height: 15px;
                width: 15px;
                margin: 0 2px;
                background-color: #bbb;
                border-radius: 50%;
                display: inline-block;
                transition: background-color 0.6s ease;
            }
            #projects .active, .dot:hover {
                background-color: #717171;
            }
            #projects .fade {
                animation-name: fade;
                animation-duration: 1.5s;
            }
            #projects #arrow3 {
                position: relative;
                top: 100px;
                left: 48%;
                height: 70px;
                width: 70px;
                transition: 0.5s;
            }
                #projects #arrow3:hover {
                    cursor: pointer;
                }

        #contactus {
            position: relative;
            left: -7px;
            top: 200px;
            width: 98.5vw;
            height: 35vh;
        }

            #contactus .column {
                float: left;
                width: 23vw;
                margin-bottom: 16px;
                padding: 0 14px;
            }

            #contactus .card {
                padding: 15px 0 0 0;
                box-shadow: 0 4px 8px 0 rgba(178, 0, 0, 0.5);
                margin: 8px;
            }

            #contactus .contact-section {
                padding: 40px;
                text-align: center;
                background-color: #b20000;
                color: white;
            }

            #contactus .container {
                padding: 0 16px;
            }
                #contactus .container p {
                    color: #b20000;
                }
                #contactus .container h2 {
                    color: #b20000;
                }
                #contactus .container::after, .row::after {
                    content: "";
                    clear: both;
                    display: table;
                }

            #contactus .title {
                color: #b20000;
            }

            #contactus .button {
                border: none;
                outline: 0;
                display: inline-block;
                padding: 8px;
                color: white;
                background-color: #b20000;
                text-align: center;
                cursor: pointer;
                width: 100%;
            }

                #contactus .button:hover {
                    background-color: #555;
                }

        @keyframes fade {
            from {
                opacity: .4
            }

            to {
                opacity: 1
            }
        }

        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
 
}

footer{

  position: relative;
  background: #830b0b;
  width: 100%;
  margin-bottom:auto;
  
  bottom: 0;
  left: 0;
  margin-top:100px;

}
footer::before{
  content: '';
  position: absolute;
  left: 0;
  top: 100px;
  height: 1px;
  width: 100%;
  background: #830b0b;
 

}
footer .content{
  max-width: 1250px;
  margin: auto;
  padding: 30px 40px 40px 40px;
}
footer .content .top{
  display: flex;
  
   
}
.content .top .logo-details{
  color: #fff;
  font-size: 30px;
}
.content .top .media-icons{
  display: flex;
}
.content .top .media-icons a{
  height: 40px;
  width: 40px;
  margin: 0 8px;
  border-radius: 50%;
  text-align: center;
  line-height: 40px;
  color: #fff;
  font-size: 17px;
  text-decoration: none;
  transition: all 0.4s ease;
}
.top .media-icons a:nth-child(1){
  background: #4267B2;
}
.top .media-icons a:nth-child(1):hover{
  color: #4267B2;
  background: #fff;
}
.top .media-icons a:nth-child(2){
  background: #1DA1F2;
}
.top .media-icons a:nth-child(2):hover{
  color: #1DA1F2;
  background: #fff;
}
.top .media-icons a:nth-child(3){
  background: #E1306C;
}
.top .media-icons a:nth-child(3):hover{
  color: #E1306C;
  background: #fff;
}
.top .media-icons a:nth-child(4){
  background: #0077B5;
}
.top .media-icons a:nth-child(4):hover{
  color: #0077B5;
  background: #fff;
}
.top .media-icons a:nth-child(5){
  background: #FF0000;
}
.top .media-icons a:nth-child(5):hover{
  color: #FF0000;
  background: #fff;
}
footer .content .link-boxes{
  width: 100%;
  display: flex;
  justify-content: space-between;
}
footer .content .link-boxes .box{
  width: calc(100% / 5 - 10px);
}
.content .link-boxes .box .link_name{
  color: #fff;
  font-size: 18px;
  font-weight: 400;
  margin-bottom: 10px;
  position: relative;
}
.link-boxes .box .link_name::before{
  content: '';
  position: absolute;
  left: 0;
  bottom: -2px;
  height: 2px;
  width: 35px;
  background: #fff;
}
.content .link-boxes .box li{
  margin: 6px 0;
  color:black;
  list-style: none;
}
.content .link-boxes .box li a{
  color: #fff;
  font-size: 14px;
  font-weight: 400;
  text-decoration: none;
  opacity: 0.8;
  transition: all 0.4s ease
}
.content .link-boxes .box li a:hover{
  opacity: 1;
  text-decoration: underline;
}
.content .link-boxes .input-box{
  margin-right: 55px;
}
.link-boxes .input-box input{
  height: 40px;
  width: calc(100% + 55px);
  outline: none;
  border: 2px solid #AFAFB6;
background-color:white;
  border-radius: 4px;
  padding: 0 15px;
  font-size: 15px;
  color: black;
  margin-top: 5px;
}
.link-boxes .input-box input::placeholder{
  background-color:white;
  font-size: 16px;
}
.link-boxes .input-box input[type="button"]{
 background-color:white;
  color: #140B5C;
  border: none;
  font-size: 18px;
  font-weight: 500;
  margin: 4px 0;
  opacity: 0.8;
  cursor: pointer;
  transition: all 0.4s ease;
}
.input-box input[type="button"]:hover{
  opacity: 1;
}
footer .bottom-details{
  width: 100%;
  background: #830b0b;
}
footer .bottom-details .bottom_text{
  max-width: 1250px;
  margin: auto;
  padding: 20px 40px;
  display: flex;
  justify-content: space-between;
}
.bottom-details .bottom_text span,
.bottom-details .bottom_text a{
  font-size: 14px;
  font-weight: 300;
  color: #fff;
  opacity: 0.8;
  text-decoration: none;
}
.bottom-details .bottom_text a:hover{
  opacity: 1;
  text-decoration: underline;
}
.bottom-details .bottom_text a{
  margin-right: 10px;
}

	  </style>
   

    <script>
        function openNav() {
            document.getElementById("mynavigationmenu").style.height = "100%";
            document.getElementById("button").style.top = "100%";
            document.getElementById("arrow").style.top = "100%";
            document.getElementById("maintext").style.top = "100%";

        }
        function closeNav() {
            document.getElementById("mynavigationmenu").style.height = "0";
            document.getElementById("button").style.top = "0";
            document.getElementById("arrow").style.top = "90%";
            document.getElementById("maintext").style.top = "0";
        }

        let slideIndex = 1;
        showSlides(slideIndex);

        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function showSlides(n) {
            let i;
            let slides = document.getElementsByClassName("mySlides");
            let dots = document.getElementsByClassName("dot");
            if (n > slides.length) { slideIndex = 1 }
            if (n < 1) { slideIndex = slides.length }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
        }
       
        function myFunction() {
            event.preventDefault();
            document.getElementById("myDropdown").classList.toggle("show");
        }
        function myFunction1() {
            event.preventDefault();
            document.getElementById("myDropdown1").classList.toggle("show");
        }

        // Close the dropdown menu if the user clicks outside of it
        window.onclick = function (event) {
            if (!event.target.matches('.dropbtn')) {
                var dropdowns = document.getElementsByClassName("dropdown-content");
                var i;
                for (i = 0; i < dropdowns.length; i++) {
                    var openDropdown = dropdowns[i];
                    if (openDropdown.classList.contains('show')) {
                        openDropdown.classList.remove('show');
                    }
                }
            }
        }
    </script>
</head>
<body onload="plusSlides(0)">
   

    <form id="form1" runat="server">
           <section id="mainmenu">
               <div id="mynavigationmenu" class="navigationmenu" >
                   <span class="closebtn" onclick="closeNav()">&times </span>
                   <a href="project.aspx" style="padding-top:50px" onclick="closeNav()";">Home</a>
                    <div class="dropdown">
                      <button onclick="myFunction1()" class="dropbtn">Projects&#x25BE</button>
                      <div id="myDropdown1" class="dropdown-content">
                        <a href="education.aspx">Education</a>
                        <a href="food.aspx">Food</a>
                        <a href="health.aspx">Health</a>
                          <a href="our_team.aspx">Shelter</a>
                      </div>
                    </div>
                   <a href="#">Events</a>
                   <a href="#">Past&nbspWork</a>
                   <a href="bankinfo.aspx" onclick="closeNav()">Bank&nbspInfo</a>
                   <div class="dropdown">
                      <button onclick="myFunction()" class="dropbtn">About&#x25BE</button>
                      <div id="myDropdown" class="dropdown-content">
                        <a href="introduction.aspx">Introduction</a>
                        <a href="story.aspx">Story</a>
                        <a href="our_team.aspx">Team</a>
                      </div>
                    </div>
                   
</div>
                
        
           
                <div id="button">
                    <span id="bars" onclick="openNav()">&#9776 </span>
                    <a href="login_page.aspx"  id="login">Login</a>
                    <a href="signup_aspx.aspx"  id="signup">Sign Up</a>
                     <a href="Donation.aspx"  id="donate">Donate</a>
                     <a href="profile.aspx"  id="profile">Profile</a>

                </div>
                <a href="#aboutus"> <img src="down.png" id="arrow"/></a>
            </section> 

        <section id="aboutus">
            <br />
            <p1 id="paratext"><b> <b><b><b>HOPE FOR ALL</b></b></b> is dedicated to making a positive impact on the lives of those in need.<br />
                Every day, we witness the resilience and strength of the individuals and families we support.<br />
                Their stories touch our hearts and inspire us to continue our work, striving to create a better future for all. <br />
                We are grateful for the opportunity to make a difference, and we will continue to work tirelessly to support those in need.</b></p1>
           <img src="edu.png" id="educationlogo" />
           <h1 id="edutext">100000+ </h1>

            <img src="food.png" id="foodlogo" />
            <h1 id="foodtext">50000+</h1>

            <img src="medical.png" id="medicallogo" />
            <h1 id="medicaltext">70000+</h1>
            
            <img src="home.png" id="homelogo" />
            <h1 id="hometext">60000+</h1>
            <a href="#projects"> <img src="down.png" id="arrow2"/></a>
        </section>
      
         
        <section id="projects">
              <div class="slideshow-container">

              <div class="mySlides fade">
                <img src="1.jpeg" class="image"/>
              </div>

              <div class="mySlides fade">
                <img src="2.jpeg" class="image"/>
              </div>

              <div class="mySlides fade">
                <img src="3.jpeg" class="image"/>
              </div>

              <div class="mySlides fade">
                <img src="4.jpeg" class="image"/>
              </div>

              <div class="mySlides fade">
                <img src="5.jpeg" class="image"/>
              </div>

              <div class="mySlides fade">
                <img src="6.jpeg" class="image"/>
              </div>

               <div class="mySlides fade">
                <img src="7.jpeg" class="image"/>
              </div>


             
              <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
              <a class="next" onclick="plusSlides(1)">&#10095;</a>
            </div>
            <br />

            <div style="text-align:center">
              <span class="dot" onclick="currentSlide(1)"></span>
              <span class="dot" onclick="currentSlide(2)"></span>
              <span class="dot" onclick="currentSlide(3)"></span>
              <span class="dot" onclick="currentSlide(4)"></span>
              <span class="dot" onclick="currentSlide(5)"></span>
              <span class="dot" onclick="currentSlide(6)"></span>
              <span class="dot" onclick="currentSlide(7)"></span>
            
                </div>
            <br />
            <a href="#contactus"> <img src="down.png" id="arrow3"/></a>
          </section>
        <section id="contactus">
            <div class="contact-section">
                <h1>Contact Us</h1>
                  <p><strong><b>Address:</b> </strong>Plot 786, Block B Faisal Town, Lahore, Punjab   </p>
                  <p><strong>Phone: </strong> 042-31234567      </p>
                  <p><strong>Hours: </strong>7-20  </p>
  
 
            </div>
            <br />
            <br />
            <br />
            <br />
            <h2 style="text-align:center;color:#b20000;font-size:50px;">Our Team</h2>
            <br />
            <br />
            <div class="row">
              <div class="column">
                <div class="card">
                  <div class="container">
                    <h2>Sayyeda Fatima Masood</h2>
                    <p class="title">CEO & Founder</p>
                    <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                    <p>sayyedabukhari@gmail.com</p>
                    <p><button class="button">Contact</button></p>
                  </div>
                </div>
              </div>

              <div class="column">
                <div class="card">
                  <div class="container">
                    <h2>Abdul Aziz</h2>
                    <p class="title">Media Manager</p>
                    <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                    <p>abdulaziz@gmail.com</p>
                    <p><button class="button">Contact</button></p>
                  </div>
                </div>
              </div>

              <div class="column">
                <div class="card">
                  <div class="container">
                    <h2>Aatiqa Hussain</h2>
                    <p class="title">Head Volunteer</p>
                    <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                    <p>aatiqahussain@gmail.com</p>
                    <p><button class="button">Contact</button></p>
                  </div>
                </div>
              </div>
                  <div class="column">
                <div class="card">
                  <div class="container">
                    <h2>Hammad Ali</h2>
                    <p class="title">Volunteer</p>
                    <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                    <p>hammadali@gmail.com</p>
                    <p><button class="button">Contact</button></p>
                  </div>
                </div>
              </div>
            </div>
            <br />
            <br />
        </section>
 
<footer>
    <div class="content">
      
      <div class="link-boxes">
        <ul class="box">
          <li class="link_name">Hope</li>
          <li><a href="project.aspx">Home</a></li>
          <li><a href="#">Contact us</a></li>
          <li><a href="#">About us</a></li>
          <li><a href="signup_aspx.aspx">Get started</a></li>
        </ul>
       
        <ul class="box">
          <li class="link_name">About</li>
          <li><a href="introduction.aspx">Introduction</a></li>
          <li><a href="Story.aspx">Story</a></li>
          <li><a href="our_team.aspx">Team</a></li>
 
        </ul>
           <ul class="box">
          <li class="link_name">Projects</li>
          <li><a href="education.aspx">Education</a></li>
          <li><a href="food.aspx">Food</a></li>
          <li><a href="health.aspx">Health</a></li>
          <li><a href="#">Shelter</a></li>
        </ul>
        <ul class="box input-box">
          <li class="link_name">Feedback</li>
          <li><input type="text" placeholder="Enter your Feedback"/></li>
          <li><input type="button" value="Submit" onlick="checkLogin()"/></li>
        </ul>
      </div>
    </div>
    <div class="bottom-details">
      <div class="bottom_text">
        <span class="copyright_text">Copyright © 2021 <a href="#">Hope</a>All rights reserved</span>
        <span class="policy_terms">
          <a href="#">Privacy policy</a>
          <a href="#">Terms & condition</a>
        </span>
      </div>
    </div>
  </footer>

           
    </form>
      
              
      
</body>
</html>

