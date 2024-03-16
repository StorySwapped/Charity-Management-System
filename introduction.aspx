<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="introduction.aspx.cs" Inherits="db.introduction" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">

    <style>
        .container {
  position: relative;
  width:98.3vw;
  overflow:hidden;
}
        .container .image
        {
            width:99vw;
            height:40vh;
        }
.container .content {
  position: absolute; /* Position the background text */
  bottom: 0; /* At the bottom. Use top:0 to append it to the top */
  top:0;
  background: rgb(0, 0, 0); /* Fallback color */
  background: rgba(0, 0, 0, 0.8); /* Black background with 0.5 opacity */
  color: #f1f1f1; /* Grey text */
  width: 98.9vw; /* Full width */
 
}
@font-face {
  font-family: 'vina'; /* Choose a name for your font */
  src: url('/VinaSans-Regular.ttf');
}
.container .content h1
{
    margin-top:35px;
    font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
  font-size:100px;
  padding:40px 0px 0px 37vw;
}

 .container1 {
display:flex;
}

.container1 .introimage
{
    height:500px;
    width:500px;
    margin:100px 0 0 300px;
    float:left;
}
.container1 .content1
{
    position:relative;
    font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    margin:90px 0 0 40px;
    font-size:30px;
}
.container1 #text
{
    
    font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    max-width:600px;
    margin:0.25rem;
    margin-top:20px;
    font-size:20px;
}

.container2
{
     position: relative;
  max-width:80vw;
  margin:0 auto;
  overflow:hidden;
}
.container2 #image2
{
    width:60vw;
    height:40vh;
    margin:200px 20vw 0 10vw;
}
.container2 #content2
{
    position: absolute; /* Position the background text */
  top: 200px; /* At the bottom. Use top:0 to append it to the top */
  bottom:0;
  left:10vw;
  background: rgb(0, 0, 0); /* Fallback color */
  background: rgba(0, 0, 0, 0.8); /* Black background with 0.5 opacity */
  color: #f1f1f1; /* Grey text */
  width: 60vw; /* Full width */
}
.container2 #text2
{
    font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    max-width:1000px;
    line-height:50px;
    margin:50px 50px 0 40px;
    font-size:30px;
    color:white;
}

.container3
{
  position: relative;
  max-width:60vw;
  margin:0 auto;
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

.container4
{
  position: relative;

  max-width:60vw;
  margin:0 auto;
  overflow:hidden;
  border:3px solid;
  border-color:#830c0c;
  box-shadow:rgba(0,0,0,0.8) 10px 10px;
}
.container4 #content4
{
    max-width:1000px;
    padding:30px;
}
.container4 #text4
{
    position:relative;
  
    font-family:Andalus;
    font-size:20px;
    color:black;
    text-decoration:auto;
}



    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
  <img src="about1.jpg" alt="Notebook" class="image">
  <div class="content">
    <h1>About <span style="color:yellow">Us</span></h1>
  </div>
</div>
    <div class="container1">
    <img src="hope.jpg" class="introimage" />
        <div class="content1">

            <h1><b>WHO WE <span style="color:#960707;">ARE</span></b></h1>
            <p id="text">
                Hope is an organization dedicated to providing support and assistance to individuals and families who are facing difficult circumstances.
                <br />
                <br />
                Founded with the belief that everyone deserves hope and a chance to live a fulfilling life, this organization offers a range of services and resources aimed at improving the well-being of those in need. From providing counseling services to offering financial assistance and educational programs, Hope strives to empower individuals and families to overcome their challenges and build a brighter future.
                <br />
                <br />
                With a team of passionate and dedicated professionals, Hope is committed to making a positive difference in the lives of those they serve.
            </p>
        </div>
        </div>
    <div class="container2">
        <img src="about2.jpg" id="image2"/>
        <div id="content2">
            <p id="text2"><b>Those who spend their wealth in charity day and night, secretly and openly—their reward is with their Lord, and there will be no fear for them, nor will they grieve.</b></p>
            <br />
            <br />
            <t1 style="font-size:35px; margin-left:50px; "><b>Quran (<span style="color:#6c0808">2:274</span>)</b></t1>
        </div>
    </div>
    <br />
    <br />
    <div class="container3">
        <div id="content3">
    <h1 style="color:#690606; padding:5px 20px 10px 400px ; font-size:50px">Vision</h1>
        <t1 id="text3"><b>Our vision at Hope is to create a world where every individual has the opportunity to live a fulfilling and meaningful life. We believe that by providing support, guidance, and resources to those in need, we can help break the cycle of poverty, inequality, and hopelessness that often hold people back. We envision a society where everyone has access to education, healthcare, and basic human needs, regardless of their background or circumstances. Our ultimate goal is to empower individuals and communities to reach their full potential, and to inspire a movement of hope and positivity that will transform lives and create a brighter future for generations to come.</b></t1>
    </div>
        </div>

    <br />
    <br />
    <br />
    <div class="container4">
        <div id="content4">
    <h1 style="color:#690606; padding:5px 20px 10px 400px ; font-size:50px">Mission</h1>
        <t1 id="text4"><b>At Hope, our mission is to provide compassionate support and resources to individuals and families facing difficult circumstances. We are committed to serving our community with integrity, professionalism, and empathy, and to helping each person we work with achieve their unique goals and aspirations. Through a range of programs and services, including counseling, financial assistance, education, and advocacy, we strive to empower individuals to overcome their challenges and build a brighter future. We believe that by creating a supportive and inclusive environment, we can inspire hope and foster resilience in those we serve, and make a positive difference in the lives of our clients and their families.</b></t1>
    </div>
        </div>
</asp:Content>
