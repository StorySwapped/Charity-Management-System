<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="education.aspx.cs" Inherits="db.education" %>
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
                background: rgba(0, 0, 0, 0.6); /* Black background with 0.5 opacity */
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
                border:5px solid;
                border-color:black;
                
               
            }
            #para
            {
                font-size:30px;
                text-align:center;
                font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
                color:#890707;
                padding:50px 0 0 350px;
                max-width:1000px;
            }

            #para2
            {
                 font-size:25px;
                text-align:center;
                font-family:'Agency FB';
                color:#bd1313;
                padding:50px 0 0 300px;
                max-width:1100px;
            }

            .container2 {
display:flex;
}

.container2 .introimage
{
    height:300px;
    width:400px;
    margin:100px 0 0 400px;
    float:left;
}
.container2 .content2
{
    position:relative;
    font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    margin:90px 0 0 40px;
    font-size:30px;
}
.container2 #text
{
    
    font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    max-width:500px;
    margin:0.25rem;
    margin-top:30px;
    font-size:17px;
    color:grey;
}


.container3 {
display:flex;
}

.container3 .image
{
    height:300px;
    width:400px;
    margin:50px 0 50px 400px;
    float:left;
    border-radius:50px;
}

.container3 .image2
{
    height:300px;
    width:400px;
    margin:50px 0 50px 0px;
    float:left;
    border-radius:50px;
}
.container3 .content2
{
    position:relative;
    font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    margin:90px 0 0 40px;
    font-size:30px;
}
.container3 .text
{
    
    font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    max-width:500px;
    margin:0.25rem;
    margin-top:30px;
    font-size:17px;
    color:grey;
}

 .card1 {
           width:500px;
           height:300px;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  background-color:whitesmoke;
  border-radius:20px;
  transition: 0.3s;
  margin:50px 100px 0 100px;
}

  .card2 {
           width:500px;
           height:300px;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  background-color:whitesmoke;
  border-radius:20px;
  transition: 0.3s;
  margin:50px 100px 0 400px;
}

/* On mouse-over, add a deeper shadow */
.card1:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

/* Add some padding inside the card container */
.containercard{
    
  padding: 2px 16px;
}

.heading
{
    font-size:30px;
    text-align:center;
    font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;

}

.con
{
    padding:20px 0 0 40px;
    max-width:400px;
    color:grey;
}


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container1">
        <img id="image1" src="education1.jpeg" />
        <div class="content1">
            <div id="content11">
            <p id="text1"><b>Everyone</b> deserves the right to an equal and fair<span style="color:#930a0a"><b> Education</b></span></p>
                </div>
        </div>
    </div>
    <br />
    <br />
    <p id="para">
       <b>"Hope believes that education is the key to unlocking the full potential of individuals and communities, and is committed to providing access to quality educational programs and resources for all."
    </b>
           </p>

    <br />
    <p id="para2">
       <b>Pakistan faces a serious education emergency. 21% of school-aged children in Pakistan do not receive an education.
    </b>
           </p>
    <div class="container2">
    <img src="education2.jpeg" class="introimage" />
        <div class="content2">
            <p id="text">
              We know that education holds the power to help people escape poverty, even in the face of adversity.
                <br />
                <br />
               If Pakistan were to halve inequality in access to education, it would increase its economic growth by 1.7%.
                <br />
                <br />
               HOPE Foundation’s is on a mission to provide quality marketable education to all.  We view our as nation building.  By empowering our children with a good education, we aim to make them productive members of society.
            <br />
                <br />
             We believe that one day, these children will help build a happier more prosperous Pakistan.
            </p>
        </div>
        </div>
    <h1 style="margin-left:700px;margin-top:100px;color:#a70b0b;font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif">What We Do</h1>
    <br />
    <br />


        <div class="container3" style="background-color:#8b0808;">
    <img src="construct.jpg" class="image" />
        <div class="card1">
            <br />
          <h2 class="heading" style="color:#8b0808;">School Construct</h2>
            <p class="con">Building schools is an essential aspect of improving access to education in underprivileged communities. Schools provide a safe and conducive learning environment for children to acquire knowledge and skills that can help them build a better future. Lack of proper infrastructure is a significant barrier to education in many developing countries.Many children attend schools with no proper classrooms, furniture, or equipment. These students face difficulties in learning and often drop out of school early.</p>
        </div>
        </div>

    <div class="container3" style="background-color:#a75b5b;">
         <div class="card2">
          
             <br />
          <h2 class="heading" style="color:#a75b5b;">Fee Support</h2>
            <p class="con">Fee support is a crucial form of assistance that can help underprivileged students access education. Many students around the world face significant financial barriers that prevent them from enrolling in schools or universities. The cost of tuition fees, textbooks, and other educational materials can be prohibitive for low-income families, making it difficult for them to afford education. Fee support initiatives can help alleviate these financial challenges by providing financial assistance to students in need.</p>
        </div>
    <img src="fee.jpg" class="image2" />
       
        </div>

    <div class="container3" style="background-color:#b2a2a2;">
    <img src="equi.jpg" class="image" />
        <div class="card1">
          <br />
          <h2 class="heading" style="color:#b2a2a2;">Equipment</h2>
            <p class="con">Equipment support is an essential component of improving the quality of education in underprivileged communities. In many areas around the world, schools lack the necessary resources and equipment to provide a quality education to their students. The lack of proper equipment, such as computers, lab equipment, or books, can have a significant impact on the quality of education that students receive. Equipment support initiatives can help provide schools and educational institutions with the resources they need to offer a quality education to their students. </p>
        </div>
        </div>
</asp:Content>
