<?php
include('includes/config.php');

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
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">

  </head>

  <body>
  <link href="log.css" rel="stylesheet">
  <?php
        $name; $captcha;
        if(isset($_POST['name'])) $name = $_POST['name'];
        if(isset($_POST['g-recaptcha-response'])) $captcha = $_POST['g-recaptcha-response'];

        if(!$captcha){
            echo "<h2>Please check the captcha form</h2>";
            return;
        }
        
        $str = "https://www.google.com/recaptcha/api/siteverify?secret=6LeKD10cAAAAALNvwWwEdAVoKhXjkY7WuhB89J5B"."&response=".$captcha."&remoteip=".$_SERVER['REMOTE_ADDR'];
        $response =file_get_contents($str);
        $response_arr=(array) json_decode($response);

        if($response_arr["success"]==false)
            echo "<h2>You are spammer ! GET OUT</h2>";
    ?>
<a href="login/index.php"><button class="btn first">As Userr</button></a>

<a href="admin/index.php"><button class="btn first">As Admin</button></a>
    <!-- Navigation -->
    <?php include('includes/header.php');?>
    <!-- Page Content -->
    <div class="container">

<?php 
$pagetype='login';
$query=mysqli_query($con,"select PageTitle,Description from tblpages where PageName='$pagetype'");
while($row=mysqli_fetch_array($query))
{

?>
      <h1 class="mt-4 mb-3"><?php echo htmlentities($row['PageTitle'])?>
  
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.php">Home</a>
        </li>
        <li class="breadcrumb-item active">About</li>
      </ol>

      <!-- Intro Content -->
      <div class="row">

        <div class="col-lg-12">

          <p><?php echo $row['Description'];?></p>
        </div>
      </div>
      <!-- /.row -->
<?php } ?>
    
    </div>
    <!-- /.container -->

    <!-- Footer -->
 <?php include('includes/footer.php');?>

  </body>

</html>
