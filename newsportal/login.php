<?php
session_start();
include('includes/config.php');
if(isset($_SESSION['logindulu'])){
  echo "<script>alert('Silahkan Login as User jika mau komen ya!');</script>";
  session_destroy();
}
?>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>News Portal | About us</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">

  </head>

  <body>
  <link href="log.css" rel="stylesheet">
  
 <!-- masukkin recaptcha didalem sini
 disinii
-->
  <a href="login/index.php"><button class="btn first">As User</button></a>

  <a href="admin/index.php"><button class="btn first">As Admin</button></a>
    <!-- Navigation -->
  <?php include('includes/header.php');?>
  <?php include('includes/footer.php');?>

  </body>

</html>
