<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup_aspx.aspx.cs" Inherits="db.signup_aspx" %>
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
  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
}
.container .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
}
.container .title::before{
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 70px;
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
  width: calc(100% / 2 - 20px);
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
   display: flex;
   width: 80%;
   margin: 14px 0 ;
   justify-content: space-between;
 }
 form .category label{
   display: flex;
   align-items: center;
   cursor: pointer;
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
 #dot-1:checked ~ .category label .one,
 #dot-2:checked ~ .category label .two,
 #dot-3:checked ~ .category label .three{
   background: #9b59b6;
   border-color: #d9d9d9;
 }

  #member:checked ~ .category label .one,
 #volunteer:checked ~ .category label .two,
 #donor:checked ~ .category label .three{
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
    <div class="title">CREATE ACCOUNT</div>
    <div class="content">
      <form id="sign_up_form" runat="server">
        <div class="user-details">
          <div class="input-box">
            <span class="details">First Name</span>
            <input type="text" name="firstname" placeholder="Enter your First Name" required>
          </div>
          <div class="input-box">
            <span class="details">Last name</span>
            <input type="text" name="lastname" placeholder="Enter your Last Name" required>
          </div>
            <div class="input-box">
            <span class="details">Nationality</span>
            <input type="text" name="nationality" placeholder="Enter your Nationality" required>
          </div>
            <div class="input-box">
            <span class="details">Address</span>
            <input type="text" name="address" placeholder="Enter your Address" required>
          </div>
          <div class="input-box">
            <span class="details">Email</span>
            <input type="email" name="email" placeholder="Enter your email" required>
          </div>
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text" name="phone" placeholder="Enter your number" required>
          </div>
          <div class="input-box">
            <span class="details">Password</span>
            <input type="password" name="pass" placeholder="Enter your password" required>
          </div>
          <div class="input-box">
            <span class="details">Confirm Password</span>
            <input type="password" name="cpass" placeholder="Confirm your password" required>
          </div>
            <asp:Label ID="ResultLabel" runat="server" CssClass="red-text" Visible="false" ></asp:Label>
        </div>
          <div class="gender-details">
          <input type="radio" name="type" value="MEMBER" id="member" >
          <input type="radio" name="type" value="VOLUNTEER" id="volunteer" >
          <input type="radio" name="type" value="DONOR" id="donor" >

          <span class="gender-title">TYPE</span>
          <div class="category">
            <label for="member">
            <span class="dot one"></span>
            <span class="gender">Member</span>
          </label>
          <label for="volunteer">
            <span class="dot two"></span>
            <span class="gender">Volunteer</span>
          </label>
              <label for="donor">
            <span class="dot three"></span>
            <span class="gender">Donor</span>
          </label>
         
              

          </div>
        </div>
        <br />
        <div class="gender-details">
          <input type="radio" name="gender" value="M" id="dot-1">
          <input type="radio" name="gender" value="F" id="dot-2">

          <span class="gender-title">Gender</span>
          <div class="category">
            <label for="dot-1">
            <span class="dot one"></span>
            <span class="gender">Male</span>
          </label>
          <label for="dot-2">
            <span class="dot two"></span>
            <span class="gender">Female</span>
          </label>
 
             
          </div>
        </div>
          <br />
          
             <asp:Button class="button" runat="server" Text="Sign Up" OnClick="sign_up_store" />
      </form>
    </div>
  </div>
   
</asp:Content>
