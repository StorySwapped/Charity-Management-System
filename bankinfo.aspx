<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="bankinfo.aspx.cs" Inherits="db.bankinfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         .container1
        {
           
            height:50vh;
            width:100%;
            overflow:hidden;
        }
        .container1 #image1
        {
          
            height:50vh;
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
                height: 50vh;
            }
            .container1 #content11
            {
                max-width:550px;
                margin-top:200px;
                margin-left:650px;
               
            }
            .container1 #text1
            {
                font-size:70px;
            }

        .card1 {
           width:500px;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  margin:50px 100px 0 290px;
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
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <div class="container1">
        <img id="image1" src="bank1.jpg" />
        <div class="content1">
            <div id="content11">
            <p id="text1"><span style="color:#980c0c"><b>Account</b></span> Details</p>
                </div>
        </div>

    </div>
    <div class="grid">
    <div class="card1">
     <img src="hbl.png" style="height:200px;width:200px;float:left;padding:50px 0 70px 10px"/>
  <div class="containercard">
      <br />
    <h4 style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"><b>Account Title</b></h4>
      <br />
    <p style="color:grey;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif">Hope</p>
     <br />
      <br />
      <h4 style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"><b>Account Number</b></h4>
      <br />
    <p style="color:grey;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif">897620625143726</p>
      <br />
      <br />
      <h4 style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"><b>Iban</b></h4>
      <br />
    <p style="color:grey;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif">PK70BKIP0204300255323411</p>
      <br />
      <br />
  </div>
</div>

        <div class="card1">
     <img src="meezan-bank.png" style="height:100px;width:150px;float:left;padding:100px 50px 100px 10px"/>
  <div class="containercard">
      <br />
    <h4 style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"><b>Account Title</b></h4>
      <br />
    <p style="color:grey;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif">Hope</p>
     <br />
      <br />
      <h4 style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"><b>Account Number</b></h4>
      <br />
    <p style="color:grey;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif">897620625143726</p>
      <br />
      <br />
      <h4 style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"><b>Iban</b></h4>
      <br />
    <p style="color:grey;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif">PK70BKIP0204300255323411</p>
      <br />
      <br />
  </div>
</div>
        </div>


</asp:Content>
