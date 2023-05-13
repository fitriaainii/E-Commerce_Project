<?php 
require_once 'db_sembako.php';
?>
<?php 
   $_pembeli = $_POST['nama_pembeli'];
   $_alamat = $_POST['alamat'];
   $_produk= $_POST['produk_id'];
   $_tanggal = $_POST['tanggal'];
   $_quantity = $_POST['quantity'];

   $_proses = $_POST['proses'];

   // array data
   $ar_data[]=$_pembeli; // ? 1
   $ar_data[]=$_alamat; // ? 2
   $ar_data[]=$_produk;// 3
   $ar_data[]=$_tanggal; // ? 7
   $ar_data[]=$_quantity; // ? 7

   if($_proses == "Simpan"){
    // data baru
    $sql = "INSERT INTO pesanan (nama_pembeli,alamat,produk_id,tanggal,quantity) VALUES (?,?,?,?,?)";
   }else if($_proses == "Update"){
    $ar_data[]=$_POST['idedit'];// ? 6
    $sql = "UPDATE pesanan SET nama_pembeli=?,alamat=?,
    produk_id=?,tanggal=?,quantity=? WHERE id=?";
   }
   if(isset($sql)){
    $st = $dbh->prepare($sql);
    $st->execute($ar_data);
   }
   header('location:../toko_sembako/template_dashboard_admin/list_pesanan.php');
?>