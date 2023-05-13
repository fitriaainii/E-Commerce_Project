<?php 
require_once '../db_sembako.php';
?>
<?php 
   $_jenis = $_POST['jenis_produk'];

   $_proses = $_POST['proses'];

   // array data
   $ar_data[]=$_jenis; // ? 7

   if($_proses == "Simpan"){
    // data baru
    $sql = "INSERT INTO jenis_produk (jenis_produk) VALUES (?)";
   }else if($_proses == "Update"){
    $ar_data[]=$_POST['idedit'];// ? 8
    $sql = "UPDATE produk SET jenis_produk_id=? WHERE id=?";
   }
   if(isset($sql)){
    $st = $dbh->prepare($sql);
    $st->execute($ar_data);
   }
   header('location:jenis_produk.php');
?>