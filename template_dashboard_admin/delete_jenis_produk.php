<?php 
require_once '../db_sembako.php';
?>

<?php
$id_edit = $_GET['iddel'];
var_dump($id_edit);
$sql = "DELETE from jenis_produk where id=?";
 $st = $dbh->prepare($sql);
$st->execute([$id_edit]);
//echo $_POST['nama'];
header("location: jenis_produk.php");
?>