<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="db.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
    background-color: #f9f9fa
  
}

.padding {
    padding: 3rem !important
}

.user-card-full {
    overflow: hidden;
}

.card {
    border-radius: 5px;
    -webkit-box-shadow: 0 1px 20px 0 rgba(69,90,100,0.08);
    box-shadow: 0 1px 20px 0 rgba(69,90,100,0.08);
    border: none;
    margin-bottom: 30px;
}

.m-r-0 {
    margin-right: 0px;
}

.m-l-0 {
    margin-left: 0px;
}

.user-card-full .user-profile {
    border-radius: 5px 0 0 5px;
}

.bg-c-lite-green {
        background: -webkit-gradient(linear, left top, right top, from(#800000), to(#827878));
  background: linear-gradient(to right, #827878, #800000);
}

.user-profile {
    padding: 20px 0;
}

.card-block {
    padding: 1.25rem;
}

.m-b-25 {
    margin-bottom: 25px;
    height:200px;
    width:200px;
}

.img-radius {
    border-radius: 50px;
    height:200px;
    width:200px;

}


 
h6 {
    font-size: 25px;
}

.card .card-block p {
    line-height: 35px;
}

@media only screen and (min-width: 1400px){
p {
    font-size: 20px;
}
}

.card-block {
    padding: 1.25rem;
}

.b-b-default {
    border-bottom: 1px solid #e0e0e0;
}

.m-b-20 {
    margin-bottom: 20px;
}

.p-b-5 {
    padding-bottom: 5px !important;
}

.card .card-block p {
    line-height: 25px;

}

.m-b-10 {
    margin-bottom: 10px;

}

.text-muted {
    color: #919aa3 !important;
}

.b-b-default {
    border-bottom: 1px solid #e0e0e0;
}

.f-w-600 {
    font-weight: 800;
}

.m-b-20 {
    margin-bottom: 20px;
}

.m-t-40 {
    margin-top: 20px;
}

.p-b-5 {
    padding-bottom: 5px !important;
}

.m-b-10 {
    margin-bottom: 10px;
}

.m-t-40 {
    margin-top: 20px;
}

.user-card-full .social-link li {
    display: inline-block;
}

.user-card-full .social-link li a {
    font-size: 20px;
    margin: 0 10px 0 0;
    -webkit-transition: all 0.3s ease-in-out;
    transition: all 0.3s ease-in-out;
}

.signout
{
      height: 45px;
   margin: -300px 100px 0 94%;
   width:100px;
   border-radius: 5px;
   border: none;
   color: white;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   transition: all 0.3s ease;
   background: linear-gradient(135deg, #3c8e04, #710909);
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
    <div class="page-content page-container" id="page-content">
    <div class="padding">
        <div class="row container d-flex justify-content-center">
<div class="col-xl-6 col-md-12">
                                                <div class="card user-card-full">
                                                    <div class="row m-l-0 m-r-0">
                                                        <div class="col-sm-4 bg-c-lite-green user-profile">
                                                            <div class="card-block text-center text-white">
                                                                 <asp:Button class="signout" runat="server" Text="Sign out" OnClick="btnSignOut_Click" />
                                                                <t1 style="font-size:100px;margin:10px 0 0 550px;color:white; display:flex; text-align:center"><b>  <%= Session["fullname"] %> </b></t1>
                                                                
                                                               
  


                                                               <br />
                                                                <p style="font-size:40px;color:white"><b>  <%= Session["log_type"] %> </b></p>
                                                                <i class=" mdi mdi-square-edit-outline feather icon-edit m-t-10 f-16"></i>
                                                           
                                                                </div>
                                                        </div>
                                                        

                                                        <div class="col-sm-8">
                                                            <div class="card-block">
                                                                <h6 class="m-b-20 p-b-5 b-b-default f-w-600">Information</h6>
                                                                <div class="row"  style="display:grid;grid-template-columns:repeat(2,1fr);grid-gap:-50px">
                                                                    <div class="col-sm-6 ">
                                                                        <p class="m-b-10 f-w-600">Email</p>
                                                                        <h3 class="text-muted f-w-400"> <%= Session["username"] %></h3>
                                                                        <br />
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                        <p class="m-b-10 f-w-600" >Phone</p>
                                                                        <h3 class="text-muted f-w-400" > <%= Session["phone"] %></h3>
                                                                        <br />
                                                                    </div>
                                                                </div>
                                                                <br />

                                                                <div class="row" style="display:grid;grid-template-columns:repeat(2,1fr);grid-gap:-50px;">
                                                                    <div class="col-sm-6">
                                                                        <p class="m-b-10 f-w-600">Gender</p>
                                                                        <h3 class="text-muted f-w-400"> <%= Session["gender"] %></h3>
                                                                        <br />
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                        <p class="m-b-10 f-w-600" >Nationality</p>
                                                                        <h3 class="text-muted f-w-400" > <%= Session["nationality"] %></h3>
                                                                        <br />
                                                                    </div>


                                                                </div>
                                                                <br />

                                                                 <div class="row"  style="display:grid;grid-template-columns:repeat(2,1fr);grid-gap:100px;">
                                                                    <div class="col-sm-6">
                                                                        <p class="m-b-10 f-w-600">Address</p>
                                                                        <h3 class="text-muted f-w-400"> <%= Session["address"] %></h3>
                                                                        <br />
                                                                    </div>
                                                                     </div>

                                                                <h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600">Donated</h6>
                                                                <div class="row" style="display:flex">
                                                                    <div class="col-sm-6">
                                                                      <p class="m-b-10 f-w-600" >Education</p>
                                                                        <h3 class="text-muted f-w-400 "><%= Session["edu"] %> PKR</h3>
                                                                        <br />
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                      <p class="m-b-10 f-w-600" style="padding-left:150px"> Food</p>
                                                                        <h3 class="text-muted f-w-400" style="padding-left:150px"><%= Session["food"] %> PKR</h3>
                                                                        <br />
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                      <p class="m-b-10 f-w-600" style="padding-left:150px">Health</p>
                                                                        <h3 class="text-muted f-w-400" style="padding-left:150px"><%= Session["health"] %> PKR</h3>
                                                                        <br />
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                      <p class="m-b-10 f-w-600" style="padding-left:150px">Shelter</p>
                                                                        <h3 class="text-muted f-w-400" style="padding-left:150px"><%= Session["shelter"] %> PKR</h3>
                                                                        <br />
                                                                    </div>
                                                                 
                                                                </div>
                                                                <ul class="social-link list-unstyled m-t-40 m-b-10">
                                                                    <li><a href="#!" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="facebook" data-abc="true"><i class="mdi mdi-facebook feather icon-facebook facebook" aria-hidden="true"></i></a></li>
                                                                    <li><a href="#!" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="twitter" data-abc="true"><i class="mdi mdi-twitter feather icon-twitter twitter" aria-hidden="true"></i></a></li>
                                                                    <li><a href="#!" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="instagram" data-abc="true"><i class="mdi mdi-instagram feather icon-instagram instagram" aria-hidden="true"></i></a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                             </div>
                                                </div>
                                            </div>
        </form>
</asp:Content>
