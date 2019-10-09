<%@ Page Language="C#" AutoEventWireup="true" CodeFile="donation.aspx.cs" Inherits="donation" %>

<!DOCTYPE html>
<html>
<head>
<title>DONATION MEDICINE</title>
<!-- Style-sheets -->
<!--<link rel="stylesheet" href="css/creditly.css">-->
<link rel="stylesheet" href="css/style.css">
<!-- //Style-sheets -->
<!-- web-fonts -->
<link href="//fonts.googleapis.com/css?family=Carter+One" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet">
<!-- //web-fonts -->
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Orphanage Donation Form  Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 



  </script>
<!-- //Meta tag Keywords -->
</head>
<body>
		
	<div class="w3layouts">
		<div class="donate_form_w3l">
			<h5 class="center-w3ls">Donate Now</h5>

			 <form id="form1" runat="server">
			<div class="left-agileinfo">
			<h5>Your information</h5>
				<p>Donation ID </p>
					<input type="text" name="donationid" id="donationid" required="" value="<%= this.DonationId %>">
				<p>User ID </p>
					<input type="text" name="userid" required="" value="<%= this.UserId %>">
				<p>Date of Donation </p>
					<input  id="datepicker1" name="dateofdonation" type="text" value="mm/dd/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" >
				<p>Medicine Name </p>
               
         <asp:DropDownList ID="MedicineDropDown" MaintainScrollPositionOnPostback="true"  AppendDataBoundItems="true" EnableViewState="true"  runat="server" >
                   

                </asp:DropDownList>
                 <p>Quantity </p>
					<input type="text" name="quantityold" id="quantityold" >
                </br>
    
                
                <p> <u> <asp:CheckBox ID="NewMedicineCheckBox" runat="server" />New Medicine</u> :  </p>
                     
                     <asp:TextBox ID="NewMedicineField" runat="server"></asp:TextBox>

                 <p>Medicine Id  </p>
					<input type="text" name="med_id" id="med_id" required="" value="<%= this.Med_Id %>">
                <p>Batch No  </p>
					<input type="text" name="batch_no" id="batch_no"  value="<%= this.Batch_no %>">
                <p>Manufacturer Name </p>
					<input type="text" name="mfd_name" id="mfd_name"  value="<%= this.Mfd_name %>">
				<p>Usage </p>
					<input type="text" name="usage" id="usage" value="<%= this.Usage %>">
                <p>Quantity </p>
					<input type="text" name="quantity" id="quantity"  >
				<p>Expiry Date </p>
					<input  id="expirydate" name="expirydate" type="text" value="mm/dd/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" >
			<div class="clearfix"></div>
					
                <asp:Button ID="submit" runat="server" Text="DONATE MEDICINE" OnClick="Donate" />
			</div>														
                 
            </form>
		<!-- <form action="#" method="post">
		<div class="left-agileinfo">
		<p>Enter the amount to donate </p>
					<input type="text" name="amount" required="">
		<div class="clearfix"></div>
					<input type="submit" value="DONATE MONEY">
			</div>	
		</div>
		</div>
		</form>
 -->
		<div class="clear"></div>
	</div></div>

		<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- creditly -->			
			<script type="text/javascript" src="js/creditly.js"></script>
<script type="text/javascript">
    $(function() {
      var creditly = Creditly.initialize(
          '.creditly-wrapper .expiration-month-and-year',
          '.creditly-wrapper .credit-card-number',
          '.creditly-wrapper .security-code',
          '.creditly-wrapper .card-type');

      $(".creditly-card-form .submit").click(function(e) {
        e.preventDefault();
        var output = creditly.validate();
        if (output) {
          // Your validated credit card output
          console.log(output);
        }
      });
    });
</script>
<!--// creditly -->	
<!-- Calendar -->
				<link rel="stylesheet" href="css/jquery-ui.css" />
				<script src="js/jquery-ui.js"></script>
				  <script>
						  $(function() {
							$( "#datepicker,#datepicker1,#datepicker2,#datepicker3" ).datepicker();
						  });
				  </script>
			<!-- //Calendar -->

</body>
</html>

		<div class="clear"></div>
	



