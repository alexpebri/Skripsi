<?php
// session_start();
// include 'otentikasi.php';
// if ($_SESSION['Manager'] || $_SESSION['admin']) {
// 	header('location:manager.php');
// }else {
?>


<!DOCTYPE HTML>
<html>

<head>
	<title>SPK PROFILE MATCHING</title>
	<!-- Meta Tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Groovy Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
	/>
	<link rel="icon" type="image/png" href="images/tes.png"/>
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //Meta Tags -->
	<!-- Font-Awesome-CSS -->
		<link href="assets/css/font-awesome.css" rel="stylesheet">
	<!--// Font-Awesome-CSS -->
	<!-- Required Css -->
		<link href="assets/css/style-login.css" rel='stylesheet' type='text/css' />
	<!--// Required Css -->
	<!--fonts-->
	<link href="//fonts.googleapis.com/css?family=Montserrat:300,400,500,600" rel="stylesheet">
	<!--//fonts-->
</head>

<body>
	<!--background-->
	<h2>&nbsp;</h2>
	<!-- Main-Content -->
	<div class="main-w3layouts-form">
	<H2>SPK PEREKRUTAN KARYAWAN<BR>METODE PROFILE MATCHING</H2>
		<img src="images/tes.jpg" width="300px">
		<h2>LOGIN PANEL</h2>
		<hr>
		<!-- main-w3layouts-form -->
		<form method="post" action="otentikasi.php">
			<div class="fields-w3-agileits">
				<span class="fa fa-user" aria-hidden="true"></span>
				<input type="text" name="username" required="" placeholder="Username" />
			</div>
			<div class="fields-w3-agileits">
				<span class="fa fa-key" aria-hidden="true"></span>
				<input type="password" name="password" required="" placeholder="Password" />
			</div>
			<div class="remember-section-wthree">
				<div class="clear"> </div>
			</div>
			<input type="submit" value="Login" />
		</form>
		
	</div>
	<!--// Main-Content-->
	<!-- copyright -->
	<!-- <div class="copyright-w3-agile">
		<p>Copyright &copy; 2020 All Rights Reserved | Design by <a href="https://vannyhadiwijaya.com/" target="_blank">Wijaya Media</a></p>
	</div> -->
	<!--// copyright -->
	<!--//background-->
</body>

</html>

<?php
// }
?>