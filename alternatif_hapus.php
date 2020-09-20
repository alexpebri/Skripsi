<?php
include 'config.php';

$id_karyawan = $_GET['id_karyawan'];
$query = mysql_query("delete from tbl_karyawan where id_karyawan='$id_karyawan'") or die(mysql_error());
if ($query) {
echo "<script>window.alert('Alternatif berhasil dihapus');
			window.location=(href='index.php?page=alternatif')</script>";
}
?>