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

    <!-- Navigation -->
    <?php include('includes/header.php');?>
    <!-- Page Content -->
    <div class="container">

<?php 
$pagetype='aboutus';
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

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    

  </body>

</html>
  <!---
  <font color="#7b8898" face="Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif"><span style="font-size: 26px;">
	<section class="pa-4">

		<div class="mt-2 mb-5">
			<h3 class="black-color--text mb-3">Our Works</h3>
			<p class="black-color--text line-height-base">
				Hai semua, Terima Kasih sudah mengujungi web kita. Kami selaku CEO dan CTO serta karyawan dari Catering Maju Jaya mengucapkan semoga kalian puas dengan website ini dan dapat menggunakannya dengan baik.<br>
				Sedikit Cerita mengenai Catering Maju Jaya. Catering Maju Jaya diciptakan oleh 2 orang yang sekarang menjabat sebagai CEO dan CTO di Catering Maju Jaya. Mereka mengembangkan usaha ini dengan tujuan mendapatkan nilai dari mata kuliah PTI di UNIVERSITAS MULTIMEDIA NUSANTARA.<br>
				Usaha Catering Maju Jaya ini kami harap menjadi usaha yang sangat sukses di Tangerang dan akhirnya melebarkan sayap ke seluruh nusantara dan menjadi catering nomor 1 di Indonesia.
			</p>
		</div>


		<div class="mt-5 mb-5">
			<h3 class="black-color--text mb-3">Meet Our Team</h3>
			<div class="gridlist">


			  <div class="item">
			  	
			  	<img src="gambar/charlie.jpg" alt="Image" height="150" width="150">
			  	<p class="subjudul">Charlie Frederico</p>

			  </div>

			  <div class="item">
			  	
			  	<img src="gambar/henry.jpg" alt="Image" height="150" width="150">

			  	<p class="subjudul">Henry Laufrans</p>

			  </div>

			  <div class="item">
			  	
				<img src="gambar/christian.png" alt="Image" height="150" width="150">
				<p class="subjudul">Christian Alexander</p>

			</div>

                                <div class="item">
			  	
			  	<img src="gambar/ferdy.jpg" alt="Image" height="150" width="150">
			  	<p class="subjudul">Ferdy Willy</p>

			  </div>

			</div>
		</div>
	</section></span></font><br>
  --->
  