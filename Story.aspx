<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Story.aspx.cs" Inherits="db.Story" %>
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
                background: rgba(0, 0, 0, 0.85); /* Black background with 0.5 opacity */
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
            }

            .container2
        {
          
            width:100%;
            overflow:hidden;
        }
            .container2 .content2
{
    max-width:800px;
    padding:10px 0 0 350px;
}
                      .container2 .content21
{
    max-width:800px;
    padding:10px 0 0 550px;
}
.container2 .text2
{
    position:relative;
  
    font-family:Andalus;
    font-size:20px;
    color:#810808;
    text-decoration:auto;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container1">
        <img id="image1" src="story1.jpg" />
        <div class="content1">
            <div id="content11">
            <p id="text1"><span style="color:#980c0c"><b>A group</b></span> of like-minded individuals came together with a shared goal of helping those in<span style="color:#980c0c"><b> need</b></span></p>
                </div>
        </div>
    </div>
    <div class="container2">

        <div class="content2">
            <div class="text2">
            <p>In a small town nestled in the heart of the countryside, a group of like-minded individuals came together with a shared goal of helping those in need. They recognized that there were many people in their community who were facing difficult circumstances and who could benefit from additional support and resources. And so, they decided to start a charity organization called Hope.
              
</p>
                  </div>
        </div>
         <div class="content21">
            <div class="text2">
            <p>The founding members of Hope were passionate about their mission, and they worked tirelessly to establish the organization and raise awareness about their cause. They reached out to local businesses, community leaders, and volunteers to help spread the word and recruit support for their efforts
              
</p>
                  </div>
        </div>

        <div class="content2">
            <div class="text2">
            <p>Their hard work paid off, and soon Hope had grown into a thriving organization, with a dedicated team of staff and volunteers who were committed to making a positive difference in the lives of those they served. They offered a range of programs and services, including counseling, financial assistance, education, and advocacy, to help individuals and families overcome their challenges and build a brighter future.
              
</p>
                  </div>
        </div>
         <div class="content21">
            <div class="text2">
            <p>As the years passed, Hope continued to grow and expand its services, reaching more people and making an even greater impact on the community. The founding members may have started small, but their dedication and perseverance had created something truly special.
Today, Hope remains a beacon of hope and inspiration for those in need, and its legacy continues to live on, inspiring future generations to make a positive difference in the world.
              
</p>
                  </div>
        </div>
    </div>
    
</asp:Content>
