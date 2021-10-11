<?php
session_start();
include('includes/config.php');
if(isset($_SESSION['logindulu'])){
  echo "<script>alert('Silahkan Login as User jika mau komen ya!');</script>";
  session_destroy();
}

$name; $captcha;
    if(isset($_POST['name'])) $name = $_POST['name'];
    if(isset($_POST['g-recaptcha-response'])) $captcha = $_POST['g-recaptcha-response'];

    if(!$captcha){
        echo "<h2>Please check the captcha form</h2>";
        return;
    }
    
    $str = "https://www.google.com/recaptcha/api/siteverify?secret=6LeKD10cAAAAALNvwWwEdAVoKhXjkY7WuhB89J5B"."&response=".$captcha."&remoteip=".$_SERVER['REMOTE_ADDR'];

    ?> 

<!DOCTYPE html>
<html lang="en">

  <head>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>KuyNews</title>
    <link rel="shortcut icon" href="images/title_icon.png">

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">

  </head>

  <body>
  <style>
    body {
      background-image: url('images/bg1.png');
    }
  </style>
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
