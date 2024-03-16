<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="our_team.aspx.cs" Inherits="db.our_team" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8"/>
  <title>Team Cards</title>
  <link rel="stylesheet" type="text/css" href="style.css"/>
  <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:wght@400;500&family=IBM+Plex+Serif:wght@300;400&display=swap" rel="stylesheet"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
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
                background: rgba(0, 0, 0, 0.5); /* Black background with 0.5 opacity */
                color: #f1f1f1; /* Grey text */
                width: 100%; /* Full width */
                height: 97%;
            }
            .container1 #content11
            {
                max-width:500px;
                margin-top:200px;
                margin-left:100px;
                line-height:80px;
                justify-content:center;
                text-align:center;
            }
            .container1 #text1
            {
                font-size:60px;
            }

h1,h2,h3 {
    margin: 0;
    font-family: 'IBM Plex Sans',Serif;
    color:#811010;
}
p {
    margin: 0;
    font-size: 18px;
    line-height: 24px;
    color:#a51111;
}
a {
    color: #3d0a0c;
}
a:hover {
  color: #3d0a0c;
}
.teamWrapper {
    margin-top: 50px;
}
.container {
  --container: 1160px;
  max-width: var(--container);
  margin:80px 0 0 270px;
}
.teamGrid {
    display: grid;
    grid-template-columns: 24% 24% 24% 24%;
    column-gap: 4%;
    margin-top: 100px;
}
.avatar {
    position: absolute;
    left: 0;
    right: 0;
    top: -80px;
    text-align: center;
}
.teamcolinner {
    position: relative;
}
.avatar > img {
    width: 150px;
    margin: auto;
    border-radius: 50%;
    border: 1px solid rgb(170 170 173/ 1);
    box-shadow: 0px 3px 10px 3px rgb(170 170 173 / 0.5);
}
.teamcolinner {
    position: relative;
    border: 1px dashed #ddd;
    min-height: 100px;
    background: #fff;
    z-index: 9;
}
.teamcol {
    padding: 15px;
    background: #fff;
    border-radius: 10px;
    position: relative;
    transition: transform 1s ease-in-out;
}
.teamcol:hover {
    transform: translateY(-30px);
    box-shadow: 0px 3px 10px 3px rgb(170 170 173 / 0.5);
    transition: transform 1s ease-in-out;
}
.teamcol:before {
    content: "";
    width: 50%;
    height: 50%;
    position: absolute;
    right: 0;
    top: 0;
    background: -webkit-linear-gradient(#330306, #871a21);
    border-top-right-radius: 10px;
    transition: width 1s ease-in-out;
}
.teamcol:after {
    content: "";
    width: 50%;
    height: 50%;
    position: absolute;
    left: 0;
    bottom: 0;
    background: -webkit-linear-gradient(#871a21, #330306);
    border-bottom-left-radius: 10px;
    transition: width 1s ease-in-out;
}
.teamcol:hover::before, .teamcol:hover::after {
    width: 100%;
    transition: width 1s ease-in-out;
}
.member-name {
    margin-top: 80px;
}
.member-info {
    padding: 10px 20px;
}
.social-listing {
    align-items: center;
    justify-content: center;
    display: flex;
    list-style: none;
    padding: 0;
}
.social-listing >li {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 30px;
    height: 30px;
    background: #f4f5f7;
    border-radius: 50%;
    margin: 5px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="container1">
        <img id="image1" src="team1.jpg" />
        <div class="content1">
            <div id="content11">
                </div>
        </div>
    </div>
   

    <div class="teamWrapper">
    <div class="container">
      <p align="center">In the world full of takers</p>
      <h1 align="center">BE A GIVER</h1>
        <br /><br /><br />
      <div class="teamGrid">
        <div class="colmun">
          <div class="teamcol">
            <div class="teamcolinner">
              <div class="avatar"><img src="fatima.png" alt="Member"/></div>
              <div class="member-name"> <h2 align="center">Sayyeda Fatima Masood
</h2> </div>
              <div class="member-info"><p align="center"> Photo unavailable due to chagra with lady don. Also known as phupho of the team.</p></div>
              <div class="member-mail"> <p align="center"> <a href="mailto:@gmail.com">Phupho@fasaad.com</a> </p> </div>
              <div class="member-social"> 
                <ul class="social-listing">
                  <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                  <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                  <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                </ul> 
              </div>
            </div>
          </div>
        </div>
            <div class="colmun">
          <div class="teamcol">
            <div class="teamcolinner">
              <div class="avatar"><img src="arab.png" alt="Member"></div>
              <div class="member-name"> <h2 align="center">Aatiqa Hussain
</h2> </div>
              <div class="member-info"><p align="center">Photo unavaiable due to chagra with phupho. Also know as lady don of the team</p></div>
              <div class="member-mail"> <p align="center"> <a href="mailto:@gmail.com">don@encounter.com</a> </p> </div>
              <div class="member-social"> 
                <ul class="social-listing">
                  <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                  <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                  <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                </ul> 
              </div>
            </div>
          </div>
        </div>
      
        <div class="colmun">
          <div class="teamcol">
            <div class="teamcolinner">
              <div class="avatar"><img src="aziz.jpg" alt="Member"></div>
              <div class="member-name"> <h2 align="center">Abdul Aziz
</h2> </div>
              <div class="member-info"><p align="center">Photo unavaiable due to well left the messages. Also known as pta ni.</p></div>
              <div class="member-mail"> <p align="center"> <a href="mailto:@gmail.com">kaunhumain@ptani.com</a> </p> </div>
              <div class="member-social"> 
                <ul class="social-listing">
                  <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                  <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                  <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                </ul> 
              </div>
            </div>
          </div>
        </div>
        <div class="colmun">
          <div class="teamcol">
            <div class="teamcolinner">
              <div class="avatar"><img src="boy.png" alt="Member"></div>
              <div class="member-name"> <h2 align="center">Hammad Ali
</h2> </div>
              <div class="member-info"><p align="center">Photo unavaiable due to meri marzi. Marasi by profession.</p></div>
              <div class="member-mail"> <p align="center"> <a href="mailto:@gmail.com">marasi@jugatbazi.com</a> </p> </div>
              <div class="member-social"> 
                <ul class="social-listing">
                  <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                  <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                  <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                </ul> 
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>  
  </div>
</asp:Content>
