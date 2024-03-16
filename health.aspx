<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="health.aspx.cs" Inherits="db.health" %>
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
.container3 .text3
{
    position:relative;
  
    font-family:Andalus;
    font-size:20px;
    color:black;
}


 .card1 {

           width:500px;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  margin:50px 100px 0 330px;
}

/* On mouse-over, add a deeper shadow */
.card1:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

/* Add some padding inside the card container */
.containercard{
    
  padding: 2px 16px;
}
.grid {
  display: grid;
  grid-template-columns: repeat(2, 700px);
  grid-gap: 32px;
  position: relative;
  z-index: 1;
}

.image
{
    height:150px;
    width:200px;
    margin:0 auto;
    padding:50px 0 0 130px;
}

.text
{
    
    color:gray;
   padding:10px 50px 40px 50px;
    font-size:18px;
    font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
}

.heading
{
    padding:10px 0 10px 150px;
    color:#720808;
    font-size:30px;
    font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container1">
        <img id="image1" src="health.jpg" />
        <div class="content1">
            <div id="content11">
            <p id="text1"><span style="color:#930a0a;text-shadow:2px 2px 2px black;"><b> Health</b></span> is not valued till the sickness come</p>
                </div>
        </div>
    </div>


     <div class="container3">
        <div id="content3">
       
            <t1 class="text3"><b>Health issues are a significant challenge in Pakistan, with millions of people facing inadequate access to quality healthcare and health services. According to the World Health Organization (WHO), Pakistan has one of the highest rates of infant mortality in the world, with approximately 260,000 newborns dying each year. Malnutrition, lack of clean water and sanitation, and limited access to healthcare services are major contributing factors to the high rates of infant and maternal mortality.</b></t1>
    <br />
            <br />
            <t1 class="text3"><b>In addition to high rates of infant mortality, Pakistan is also facing a significant burden of communicable diseases such as malaria, tuberculosis, and hepatitis. Non-communicable diseases such as cardiovascular disease, diabetes, and cancer are also on the rise, with lifestyle factors such as poor diet, lack of physical activity, and tobacco and alcohol use contributing to the increase in these diseases.</b></t1>
          <br />
            <br />
            <t1 class="text3"><b>The healthcare system in Pakistan faces a range of challenges, including inadequate infrastructure, limited resources, and a shortage of trained healthcare professionals. Many people in rural areas have limited access to healthcare facilities, with long distances to travel and a lack of transportation options making it difficult to access health services.</b></t1>
  
              <br />
            <br />
            <t1 class="text3"><b>Hope is committed to addressing health issues in Pakistan by providing access to quality healthcare services, training healthcare professionals, and implementing sustainable health programs. Through its healthcare initiatives, Hope provides medical care and treatment to communities in need, including emergency medical care, maternal and child health services, and treatment for communicable and non-communicable diseases. Additionally, Hope works to improve access to clean water and sanitation, which can have a significant impact on reducing rates of infectious diseases.</b></t1>
  
              <br />
            <br />
            <t1 class="text3"><b>By investing in healthcare in Pakistan, Hope is working towards a future where every individual has access to quality healthcare services and the opportunity to lead a healthy and fulfilling life. With continued support, Hope is making a positive impact on the health and well-being of communities across Pakistan.</b></t1>
  
        
        </div>
        </div>

    <h1 style="margin-left:800px;margin-top:100px;color:#a70b0b;font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif ;font-size:40px;text-shadow:2px 2px 2px black;">We Provide</h1>
    <br />
    <br />
    <div class="grid">
        <div class="card1">
            <img src="Clinic.jpg" class="image"/>
        <div class="containercard">
            <br />
            <h1 class="heading"><b>Clinics</b></h1>
            <p class="text">Hope recognizes the importance of clinics in providing essential healthcare services to underserved communities, and is committed to supporting the development and operation of clinics across the globe. Through its medical programs, Hope has established and supported clinics in low-income communities, providing primary healthcare services to those who would otherwise have limited access to healthcare facilities. </p>

        </div>
        </div>
        <div class="card1">
        <img src="doctor.jpg" class="image"/>
        <div class="containercard">
            <br />
            <h1 class="heading"><b>Doctors</b></h1>
            <p class="text">Hope recognizes the importance of clinics in providing essential healthcare services to underserved communities, and is committed to supporting the development and operation of clinics across the globe. Through its medical programs, Hope has established and supported clinics in low-income communities, providing primary healthcare services to those who would otherwise have limited access to healthcare facilities.</p>

        </div>
        </div>
          
    <div class="card1">
        <img src="med.jpeg" class="image"/>
        <div class="containercard">
            <br />
            <h1 class="heading"><b>Medicine</b></h1>
            <p class="text">Hope recognizes the importance of medicine in healthcare and is committed to improving access to medicines for communities in need. Through its medical programs, Hope provides essential medicines and medical supplies to communities affected by natural disasters, conflicts, and other crises. In addition to providing access to medicines, Hope also works to ensure that medicines are used safely and appropriately. </p>

        </div>
    </div>
        
    <div class="card1">
    <img src="blood.png" class="image"/>
        <div class="containercard">
            <br />
            <h1 class="heading"><b>Blood</b></h1>
            <p class="text">Hope recognizes the importance of blood and is committed to improving access to safe and adequate blood supplies for communities in need. Through its blood donation programs, Hope works to raise awareness about the importance of blood donation and encourage individuals to donate blood. Hope also partners with blood banks and other organizations to support the collection, processing, and distribution of blood products to hospitals and clinics in underserved communities.</p>

        </div>
        </div>
    
    </div>
  
        
</asp:Content>
