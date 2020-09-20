<?php
include 'config.php';

$id_user = $_GET['id_user'];
$query = mysql_query("delete from tbl_user where id_user='$id_user'") or die(mysql_error());
if ($query) {
echo "<script>window.alert('user berhasil dihapus');
			window.location=(href='index.php?page=user')</script>";
}
?>