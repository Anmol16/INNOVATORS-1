<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<html>
<title>AboutUs_Statistics</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
body {font-family: "Times New Roman", Georgia, Serif;}
h1, h2, h3, h4, h5, h6 {
  font-family: "Playfair Display";
  letter-spacing: 5px;
}
.bgimg1 {
  background-image: url("C:/Users/91808/Desktop/contact.jpg");
  min-height: 100%;
  background-position: center;
  background-size: cover;
}
</style>

<!-- Contact Section -->
  <div class="bgimg1"> 
  <div class="w3-container w3-padding-64" id="contact">
    <h1>Contact</h1><br>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <img src="C:/Users/91808/Downloads/hh/WebContent/images/contacticon.png" alt="Krishna" style="width:50%">
      <h3>Krishna</h3>
      <p class="w3-opacity">CEO</p>
      <p>Helping Hand</p>
      <p><button class="w3-button w3-light-grey w3-block">Contact</button></p>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <img src="C:\Users\subha\source\repos\FinalProject\FinalProject\img\contacticon.png" alt="Hari" style="width:50%">
      <h3>Hari</h3>
      <p class="w3-opacity">Senior Manager</p>
      <p>Helping Hand</p>
      <p><button class="w3-button w3-light-grey w3-block">Contact</button></p>
    </div>
     <div class="w3-col l3 m6 w3-margin-bottom">
      <img src="C:/Users/91808/Downloads/hh/WebContent/images/contacticon.png" alt="Akash" style="width:50%">
      <h3>Akash</h3>
      <p class="w3-opacity">Manager</p>
      <p>Helping Hand</p>
      <p><button class="w3-button w3-light-grey w3-block">Contact</button></p>
    </div> <div class="w3-col l3 m6 w3-margin-bottom">
      <img src="C:/Users/91808/Downloads/hh/WebContent/images/contacticon.png" alt="Abhi" style="width:50%">
      <h3>Abhi</h3>
      <p class="w3-opacity">Medical Consultant</p>
      <p>Helping Hand</p>
      <p><button class="w3-button w3-light-grey w3-block">Contact</button></p>
    </div>
 </div>   
 </div>
 
    <!-- feedback Section -->
  <div class="w3-container w3-padding-64" id="feedback">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Feedback</h3>
    <p>To get in touch with us.</p>
    <form action="/action_page.php" target="_blank">
      <input class="w3-input w3-border" type="text" placeholder="Name" required name="Name">
      <input class="w3-input w3-section w3-border" type="text" placeholder="Email" required name="Email">
      <input class="w3-input w3-section w3-border" type="text" placeholder="Subject" required name="Subject">
      <input class="w3-input w3-section w3-border" type="text" placeholder="Comment" required name="Comment">
      <button class="w3-button w3-black w3-section" type="submit">
        <i class="fa fa-paper-plane"></i> SEND FEEDBACK
      </button>
    </form>
  </div>
