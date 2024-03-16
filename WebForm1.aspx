%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="db.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="utf-8"/>
  <title>Team Cards</title>
 
    <style>
       .card {
           width:500px;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  margin:50px 100px 0 100px;
}

/* On mouse-over, add a deeper shadow */
.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

/* Add some padding inside the card container */
.container {
    
  padding: 2px 16px;
}

    </style>
</head>
<body>
 <div class="card">
     <img src="hbl.png" style="height:200px;width:200px;float:left;padding:50px 0 70px 10px"/>
  <div class="container">
    <h4 style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"><b>Account Title</b></h4>
    <p style="color:grey;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif">Hope</p>
     <br />
      <h4 style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"><b>Account Number</b></h4>
    <p style="color:grey;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif">897620625143726</p>
      <br />
      <h4 style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"><b>Iban</b></h4>
    <p style="color:grey;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif">PK70BKIP0204300255323411</p>
  </div>
</div>
</body>


</html>
