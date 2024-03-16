<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="food.aspx.cs" Inherits="db.food" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
       
          .container1
        {
           
            height:99vh;
            width:100%;
            overflow:hidden;
        }
        .container1 #image1
        {
          
            height:97%;
            width:100%;
        }
            .container1 .content1 {
                position: absolute; /* Position the background text */
                bottom: 0; /* At the bottom. Use top:0 to append it to the top */
               
                top: 47px;
                background: rgb(0, 0, 0); /* Fallback color */
                background: rgba(0, 0, 0, 0.7); /* Black background with 0.5 opacity */
                color: #f1f1f1; /* Grey text */
                width: 100%; /* Full width */
                height: 97%;
            }
            .container1 #content11
            {
                max-width:550px;
                margin-top:200px;
                margin-left:100px;
                line-height:80px;
            }
            .container1 #text1
            {
                font-size:50px;
                padding:10px;
                border:8px solid;
                border-color:black;
               
            }

             #projects {
            position: relative;
            left: -7px;
            padding: 100px 0 0 0;
            width: 98.5vw;
            height: 80vh;
            
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


            .container3
{
  position: relative;
  max-width:60vw;
  margin:20px auto;
  overflow:hidden;
  border:3px solid;
  border-color:#850707;
  box-shadow:rgba(0,0,0,0.8) 10px 10px;
}
.container3 #content3
{
    max-width:1000px;
    padding:30px;
}
.container3 #text3
{
    position:relative;
  
    font-family:Andalus;
    font-size:20px;
    color:black;
}


    </style>
    <script>
       

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

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
  <body onload="plusSlides(0)">
    <div class="container1">
        <img id="image1" src="food1.jpg" />
        <div class="content1">
            <div id="content11">
            <p id="text1">The Best of you are those who feed <span style="color:#930a0a"><b> Others.</b></span></p>
                </div>
        </div>
    </div>

     <section id="projects">
 <div class="slideshow-container">

              <div class="mySlides fade">
                <img src="food4.jpg" class="image"/>
              </div>

              <div class="mySlides fade">
                <img src="food5.jpg" class="image"/>
              </div>

              <div class="mySlides fade">
                <img src="food6.jpeg" class="image"/>
              </div>

              

             
              <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
              <a class="next" onclick="plusSlides(1)">&#10095;</a>
            </div>
            <br />

            <div style="text-align:center">
              <span class="dot" onclick="currentSlide(1)"></span>
              <span class="dot" onclick="currentSlide(2)"></span>
              <span class="dot" onclick="currentSlide(3)"></span>
              
            
                </div>
         </section>

      <div class="container3">
        <div id="content3">
        <t1 id="text3"><b>In Pakistan, food insecurity is a pressing issue that affects millions of people, particularly those living in poverty. The lack of access to nutritious food has a significant impact on the health and well-being of individuals and communities, particularly children. Hope believes that everyone deserves access to healthy and nutritious food, and is committed to addressing food insecurity in Pakistan. Through its food programs, Hope provides emergency food aid to families in crisis, distributes food to schools and orphanages, and implements sustainable agriculture and food security initiatives to help communities become self-sufficient. By investing in food programs, Hope is helping to ensure that individuals and families have access to the food they need to survive and thrive, and empowering communities to build a better future. With continued support, Hope is working towards a Pakistan where everyone has access to nutritious food and the opportunity to lead a healthy and fulfilling life.</b></t1>
    </div>
        </div>
      </body>
</asp:Content>
