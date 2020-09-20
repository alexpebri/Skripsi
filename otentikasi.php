<?php
include 'config.php';
function antiinjection($data){
	$filter_sql = mysql_real_escape_string(stripslashes(strip_tags(htmlspecialchars($data,ENT_QUOTES))));
	return $filter_sql;
}
session_start();

// if ($_SESSION['Manager'] || $_SESSION['admin']) {
// 		header('location:manager.php');
// 	}else {
	
//tangkap data dari form login
$username = $_POST['username'];
$password = md5($_POST['password']);

//untuk mencegah sql injection
$username = antiinjection($username);
$password = antiinjection($password);

$loginadmin = mysql_query("select * from tbl_user where username='$username' and password='$password'");
// $q=mysql_num_rows($loginadmin);
$q=mysql_fetch_array($loginadmin);


if (mysql_num_rows($loginadmin) == 1) {
	// kalau user dan password sudah terdaftar di database
	// buat session dengan username dengan isi nama user yang login
	// $_SESSION['username'] = $q['username'];
	// $_SESSION['password'] = $q['password'];
	// $_SESSION['nama']	  = $q['nama'];
		if ($q['level'] == "Manager") {
			$_SESSION['Manager'] = $q['level'];
			header('location:manager.php');
		} else if ($q['level']=="admin") {
			$_SESSION['admin']=$q['level'];
			header('location:index.php');

		}
	
	
	// redirect ke halaman index
	// header('location:index.php');
} else {
	//kalau username ataupun password tidak terdaftar di database
	header('location:index.php?error=4');
	echo "<script>alert('Username atau Password anda salah, silahkan coba lagi!'); window.location = 'index.php'</script>";
}
?>

