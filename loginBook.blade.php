<DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="cssIOT/login.css" rel="stylesheet">
<link  rel="icon" href="image/title2.jpg" />
<title>IOT</title>
<style>
::placeholder {
  color: #454545;
  opacity: 1; /* Firefox */
}
</style>
</head>
<body>
<div class="login-box" style="margin-left:500px">

<h1>Login Here</h1>
<form action="login" method="post" id="form1" >
<p>Email</p>
<input type="email" name="email" placeholder="Enter Useremail" required autocomplete="on" />
<p>Password</p>
<input type="password" name="password" placeholder="Enter your password" required />

<h4 id="h1"></h4>


<br><input type="submit" name="submit"  value="login"><br/>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href="Registration.php">Registration</a>    &nbsp; &nbsp; &nbsp; &nbsp;<a href="ForgotPassword.php">Forgot password</a>
</form>
</div>

<script src="jquery.js"></script>
<script>
	var flag=0;
	function validateCatcha()
	{
		$(document).ready(function(){
			var capta=$('#captcha').val();
			if(capta!="")
			{
				$.ajax({
					url:"CaptchaTest.php",
					type:"post",
					data:{capta:capta},
					success:function(data,status)
					{
						if(data=="Incorrect Captcha")
						{
							$('#h1').html(data);
							$('#h1').css("color","red");
							$('#form1').submit(function(event){
								event.preventDefault();                                       
							});
							return false;
						}
						else
						{
							$('#h1').html("Captcha OK");
							$('#h1').css("color","green");
						}
					}
				
				});
			}
	});
	}
</script>

</body>
</html>