<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #phone_number {
            width: 103px;
        }
    </style>
</head>
<body>
    <!DOCTYPE html>
<html lang="en">
<head>
	<title>Sign Up</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="images/icons/favicon.png"/>
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
    <script src="js/JavaScript.js"></script>
</head>
<body style="background-color: #999999;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="login100-more" style="background-image: url('images/bg-01.jpg');"></div>

			<div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
				<form id="form1" runat="server">
					<span class="login100-form-title p-b-59">
						<b>Sign Up</b>
					</span>
                    <div class="wrap-input100 validate-input" >
						user_id
						<input class="input100" type="text" id="txtuser_id" name="txtuser_id"  required maxlength="25">
						<br />
                        password<input class="input100" type="text" name="txtpassword"  id="txtpassword"  required maxlength="25">
                        <br />
                        name
                        <input class="input100" type="text" id="txtname" name="txtname"
       					  required maxlength="12"> <span class="focus-input100"></span>
					</div>
					
					
					
					<div class="wrap-input100 validate-input" >
						type_of_user<input class="input100" type="text" name="txttype_of_user" id="txttype_of_user"  required maxlength="100">
						<span class="focus-input100"></span>
					</div>
					
					
					<div class="wrap-input100 validate-input" >
						address<input class="input100" type="text" name="txtaddress" id="txtaddress"  required maxlength="6">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						phone_no
						<input class="input100" type="text" name="txtphone_number" id="txtphone_number" required maxlength="25">
                        <span class="focus-input100">
					</span>
					</div>

					<div class="wrap-input100 validate-input" >
						govt_id
						<input class="input100" type="text" name="txtgovt_id"  id="txtgovt_id"   required maxlength="25">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" >
						email
						<input class="input100" type="text" name="txtemail" id="txtemail"required maxlength="8">
						<span class="focus-input100">
                        <br />
                        </span>
					    <asp:Button ID="Button1" runat="server" OnClick="click" Text="Button" />
					</div>

					<div class="wrap-input100 validate-input" >
					</div>

					<div class="flex-m w-full p-b-33">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								<span class="txt1">
									I agree to the
									<a href="#" class="txt2 hov1">
										Terms of User
									</a>
								</span>
							</label>
						</div>

						
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
                            

						</div>

						<a href="SignIn.html" class="dis-block txt3 hov1 p-r-30 p-t-10 p-b-10 p-l-30">
							Sign in
							<i class="fa fa-long-arrow-right m-l-5"></i>

						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
   <%-- <script type="text/javascript">
        $("#signup").click(function () {
            var data;
            alert("The paragraph was clicked.");
            var user_id = document.getElementById("user_id").value;
            var type_of_user = document.getElementById("type_of_user").value;
            var name = document.getElementById("name").value;
            var address = document.getElementById("address").value;
            var phone_no = document.getElementById("phone_no").value;
            var govt_id = document.getElementById("govt_id").value;
            var email = document.getElementById("email").value;
           var password = document.getElementById("password").value;
            $.ajax({
                url: "https://localhost:44389/api/help",
                type: 'POST',  // http method
                data: {
                    "email": email
                    "password": password
                }  // data to submit
                success: function (data, status, xhr) {
                    $('p').append('status: ' + status + ', data: ' + data);
                }
        error: function (jqXhr, textStatus, errorMessage) {
            $('p').append('Error' + errorMessage);
       
        });
        });
        });
       
        
        
       
       
    </script>--%>

</body>
</html>


</body>
</html>
