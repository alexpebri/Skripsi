<?php
include 'config.php';

$id_karyawan = $_GET['id_karyawan'];
$query = mysql_query("delete from tbl_sample where karyawan='$id_karyawan'") or die(mysql_error());
if ($query) {
echo "<script>window.alert('Nilai berhasil dihapus');
			window.location=(href='index.php?page=nilai')</script>";
}
?>