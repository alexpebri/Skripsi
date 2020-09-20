<?php
include 'config.php';

$selisih = $_GET['selisih'];
$query = mysql_query("delete from tbl_bobot where selisih='$selisih'") or die(mysql_error());
if ($query) {
echo "<script>window.alert('bobot berhasil dihapus');
			window.location=(href='index.php?page=bobot')</script>";
}
?>