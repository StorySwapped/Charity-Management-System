<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Donation.aspx.cs" Inherits="db.Donation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
<meta charset="UTF-8">
    <title> Sign up </title>
    <link rel="stylesheet" href="style.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>


     @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}

.container{
    position:relative;
    /*margin:30px 0 0 100px;*/
    margin:0 auto;
    margin-top:100px;
  max-width: 700px;
  width: 100%;
  background-color: #fff;
  padding: 25px 30px;
  border-radius: 5px;
  box-shadow: 0 5px 10px #930808;

}
.container .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
  margin-left:200px;
}
.container .title::before{
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 200px;
  border-radius: 5px;
  background: linear-gradient(135deg, #eb1111, #710909);
}
.content form .user-details{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}
form .user-details .input-box{
  margin-bottom: 15px;
  /*width: calc(100% / 2 - 20px);*/
  width:95%;
}
form .input-box span.details{
  display: block;
  font-weight: 500;
  margin-bottom: 5px;
}
.user-details .input-box input{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.user-details .input-box input:focus,
.user-details .input-box input:valid{
  border-color: #7d0909;
}
 form .gender-details .gender-title{
  font-size: 20px;
  font-weight: 500;
 }
 form .category{
   display: block;
   width: 80%;
   margin: 14px 0 ;
   justify-content: space-between;
  
 }
 form .category label{
   display: flex;
   align-items: center;
   cursor: pointer;
    padding-bottom:15px;
 }
 form .category label .dot{
  height: 18px;
  width: 18px;
  border-radius: 50%;
  margin-right: 10px;
  background: #d9d9d9;
  border: 5px solid transparent;
  transition: all 0.3s ease;
}
 #Donation:checked ~ .category label .one,
 #Zakat:checked ~ .category label .two,
 #Sadqah:checked ~ .category label .three{
   background: #9b59b6;
   border-color: #d9d9d9;
 }

  #Education:checked ~ .category label .one,
 #Health:checked ~ .category label .two,
 #Food:checked ~ .category label .three,

 #Shelter:checked ~ .category label .four{
   background: #9b59b6;
   border-color: #d9d9d9;
 }
 form input[type="radio"]{
   display: none;
 }

 .button{
  height: 45px;
   margin: 35px 0;
   width:100%;
   border-radius: 5px;
   border: none;
   color: #fff;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   transition: all 0.3s ease;
   background: linear-gradient(135deg, #eb1111, #710909);
 }
 .button:hover{
  /* transform: scale(0.99); */
  background: linear-gradient(-135deg, #eb1111, #710909);
  }
 @media(max-width: 584px){
 .container{
  max-width: 100%;
}
form .user-details .input-box{
    margin-bottom: 15px;
    width: 100%;
  }
  form .category{
    width: 100%;
  }
  .content form .user-details{
    max-height: 300px;
    overflow-y: scroll;
  }
  .user-details::-webkit-scrollbar{
    width: 5px;
  }
  }
  @media(max-width: 459px){
  .container .content .category{
    flex-direction: column;
  }
}
  .red-text {
    color: red;
}


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="container">
    <div class="title">DONATION FORM</div>
     <br />
     <br>
    <div class="content">
      <form id="sign_up_form" runat="server">
          <div class="gender-details">
          <input type="radio" name="categories" value="Education" id="Education" required>
          <input type="radio" name="categories" value="Health" id="Health" >
          <input type="radio" name="categories" value="Food" id="Food" >
          <input type="radio" name="categories" value="Shelter" id="Shelter" >
   


          <span class="gender-title">Categories for Donation</span>
          <div class="category">
            <label for="Education">
            <span class="dot one"></span>
            <span class="gender">Education</span>
          </label>
          <label for="Health">
            <span class="dot two"></span>
            <span class="gender">Health</span>
          </label>
              <label for="Food">
            <span class="dot three"></span>
            <span class="gender">Food</span>
          </label>
                <label for="Shelter">
            <span class="dot four"></span>
            <span class="gender">Shelter</span>
          </label>
              <br />
         </div>
              </div>
              <div class="gender-details">
          <input type="radio" name="Type" value="Donation" id="Donation" required>
          <input type="radio" name="Type" value="Zakat" id="Zakat">
          <input type="radio" name="Type" value="Sadqah" id="Sadqah">

          <span class="gender-title">Types of Donation</span>
          <div class="category">
            <label for="Donation">
            <span class="dot one"></span>
            <span class="gender">Donation</span>
          </label>
          <label for="Zakat">
            <span class="dot two"></span>
            <span class="gender">Zakat</span>
          </label>
                <label for="Sadqah">
            <span class="dot three"></span>
            <span class="gender">Sadqah</span>
          </label>
 
             
          </div>
        </div>
        

         
          
        <div class="user-details">
          <div class="input-box">
            <span class="details">Donation Amount</span>
              <br />
            <input type="text" name="amount" placeholder="Enter Donation Amount" required>
          </div>
          </div>
          
             <asp:Button class="button" runat="server" Text="Donate" OnClick="adddonation" />
      </form>
    </div>
  </div>

</asp:Content>

