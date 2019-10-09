<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ngo.aspx.cs" Inherits="ngo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NGO LOGIN</title>


<!-- Style-sheets -->
<link rel="stylesheet" href="css/creditly.css"/>
<link rel="stylesheet" href="css/style.css"/>


<!-- //Style-sheets -->
<!-- web-fonts -->
<link href="//fonts.googleapis.com/css?family=Carter+One" rel="stylesheet"/>
<link href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet"/>


<!-- //web-fonts -->
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Orphanage Donation Form  Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Meta tag Keywords -->
    <style>
        .textbox_ngo{
            padding: 8px 11px;
            display: block;
            width: 90%;
            background: none;
            border: none;
            outline: none;
            color: #fff;
            border-radius: 10px;
            font-size: 15px;
            box-shadow: inset 0px 0px 3px #ffffff;
        }

        .drop_ngo{
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding: 8px 11px;
            display: block;
            background-color:#454443;
            outline: none;
            color: #fff;
            border-radius: 10px;
            font-size: 15px;
            box-shadow: inset 0px 0px 3px #ffffff;
            margin-left: 3px;
        }
        
        .button_ngo{
                text-transform: capitalize;
                background: #fc636b;
                color: #fff;
                padding: .7em 0em;
                border: none;
                font-size: 14px;
                outline: none;
                text-transform: uppercase;
                width: 100%;
                border-radius: 10px;
                font-weight: 600;
                margin-top: 2em;
                -webkit-appearance: none;
                cursor: pointer;
        }
        .button_ngo:hover {
	           background:#3be8b0;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="w3layouts">
		<div class="donate_form_w3l">
			<h5 class="center-w3ls">NGO</h5>
            <br />
		<center>
			<div class="left-agileinfo">
             
                <p>Medicine ID: </p>
					<asp:TextBox ID="MedicineId" runat="server" Width="188px" CssClass="textbox_ngo" ></asp:TextBox>
			
                <p>Medicine Name </p>
                <asp:DropDownList ID="MedicineListNGO" runat="server" CssClass="drop_ngo" Width="188px">
                        <asp:ListItem>Medicine</asp:ListItem>
                        
                        <asp:ListItem>1.</asp:ListItem>
                    </asp:DropDownList>
                 <br />
                 <asp:TextBox ID="Medicine" runat="server" Width="188px" placeholder="Enter the medicine name" CssClass="textbox_ngo"></asp:TextBox>
				
                
                
                <p>Quantity</p>
					<asp:TextBox ID="NgoQuantity" runat="server" Width="188px" CssClass="textbox_ngo"></asp:TextBox>          
                <asp:Button ID="PickUp" runat="server" Text="Pick Up" Width="188px" CssClass="button_ngo" OnClick="PickUp_Click"/>
               
                </div>
             </center>
               </div>  
                </form>
   
</body>

</html>
	<div class="clear"></div>
     </div>