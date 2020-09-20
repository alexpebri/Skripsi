<?php
include 'config.php';

$id_faktor = $_GET['id_faktor'];
$query = mysql_query("delete from tbl_faktor where id_faktor='$id_faktor'") or die(mysql_error());
if ($query) {
echo "<script>window.alert('faktor berhasil dihapus');
			window.location=(href='index.php?page=faktor')</script>";
}
?>