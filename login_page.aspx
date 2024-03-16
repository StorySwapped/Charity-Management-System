<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login_page.aspx.cs" Inherits="db.login_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
       
.login {
    height: 100vh;
    width: 100%;
    position: relative;
}
.login_box {
    width: 100vw;
    height: 100vh;
    position: absolute;
    top: 50%;
    left: 49.5%;
    padding-top:50px;
    transform: translate(-50%,-50%);
    display: flex;
    overflow: hidden;
}
.login_box .left{
  width: 60%;
  height: 100%;
  padding: 25px 25px;
  
}
.login_box .right{
  width: 59%;
  height: 100%  
}
.left .top_link a {
    color: #970e0e;
    font-weight: 400;
}
.left .top_link{
  height: 20px
}
.left .contact{
	display: flex;
    align-items: center;
    justify-content: center;
    align-self: center;
    height: 100%;
    width: 73%;
    margin: auto;
}
.left h3{
  text-align: center;
  margin-bottom: 40px;
}
.left input {
    border: none;
    width: 80%;
    margin: 15px 0px;
    border-bottom: 1px solid #8f0a0a;
    padding: 7px 9px;
    width: 100%;
    overflow: hidden;
    background: transparent;
    font-weight: 600;
    font-size: 14px;
}
.left{
	background-color:white;
}
.submit {
    border: none;
    padding: 15px 70px;
    border-radius: 8px;
    display: block;
    position:absolute;
    margin:680px 0 0 390px;
    background: #a00e0e;
    color: #fff;
    font-weight: bold;
    -webkit-box-shadow: 0px 9px 15px -11px rgba(88,54,114,1);
    -moz-box-shadow: 0px 9px 15px -11px rgba(88,54,114,1);
    box-shadow: 0px 9px 15px -11px rgba(88,54,114,1);
}
.submit:hover
{
    cursor:pointer;
}


.right {
	background:url(login2.jpg);
    background-repeat:no-repeat;
	color: #fff;
	position: relative;
}

.right .right-text{
  height: 100%;
  position: relative;
  transform: translate(0%, 45%);
}
.right-text h2{
  display: block;
  width: 100%;
  text-align: center;
  font-size: 50px;
  font-weight: 500;
}
.right-text h5{
  display: block;
  width: 100%;
  text-align: center;
  font-size: 19px;
  font-weight: 400;
}

.right .right-inductor{
  position: absolute;
  width: 70px;
  height: 7px;
  background: #fff0;
  left: 50%;
  bottom: 70px;
  transform: translate(-50%, 0%);
}
.top_link img {
    width: 28px;
    padding-right: 7px;
    margin-top: -3px;
}

.login_error
{
     position:absolute;
    margin:780px 0 0 360px;
    color:#960707;
    font-size:25px;
}

form .gender-details .gender-title{
  font-size: 15px;
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
  height: 5px;
  width: 5px;
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



   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
	<section class="login">
		<div class="login_box">
			<div class="left">
				
				<div class="contact">
					<div action="">
						<h3 style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;font-size:40px;">SIGN IN</h3>
						<input type="email" name="username" placeholder="EMAIL" required>
						<input type="password" name="password" placeholder="PASSWORD" required>
                       <div class="gender-details">
          <input type="radio" name="type" value="MEMBER" id="member" >
          <input type="radio" name="type" value="VOLUNTEER" id="volunteer" >
          <input type="radio" name="type" value="DONOR" id="donor" >

          <span class="gender-title"></span>
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

				<%--		<button style="" class="submit" onclick="Page_Load()">LET'S GO</button>--%>
                        
         
          
                        <br />
                        
					</div>
				</div>
			</div>
			<div class="right">
				<div class="right-text">
					<h2 style="font-size:70px">HOPE</h2>
					<h5 style="font-size:50px">JOIN US</h5>
				</div>
				
			</div>
		</div>
        
         <asp:Button class="submit" runat="server" Text="Submit" OnClick="login" />
        
        <asp:Label ID="ResultLabel" runat="server" CssClass="login_error" Visible="false" ></asp:Label>
	</section>
         </form>
</asp:Content>
