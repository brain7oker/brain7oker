<?php
include('includes/config.php');
session_start();

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

    <link rel="stylesheet" href="about-us.css" />
  </head>

  <body>
    <style>
      body {
        background-image: url('images/bg1.png');
      }
    </style>
    <!-- Navigation -->
    <?php 
    if( isset( $_SESSION["user"])){
      include('includes/headerin.php');
    }else{
      include('includes/header.php');
    }
    ?>
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
      <section class="pa-4">

		<div id="title">
			<div id="subtitle">Our Works</div>
			<div id="text">
				Hai semua, Terima Kasih sudah mengujungi web kita. Kami selaku CEO dan CTO serta karyawan dari Catering Maju Jaya mengucapkan semoga kalian puas dengan website ini dan dapat menggunakannya dengan baik.<br>
				Sedikit Cerita mengenai Catering Maju Jaya. Catering Maju Jaya diciptakan oleh 2 orang yang sekarang menjabat sebagai CEO dan CTO di Catering Maju Jaya. Mereka mengembangkan usaha ini dengan tujuan mendapatkan nilai dari mata kuliah PTI di UNIVERSITAS MULTIMEDIA NUSANTARA.<br>
				Usaha Catering Maju Jaya ini kami harap menjadi usaha yang sangat sukses di Tangerang dan akhirnya melebarkan sayap ke seluruh nusantara dan menjadi catering nomor 1 di Indonesia.
			</div><br>
		</div>


		<div id="mt-5 mb-5">
			<div id="subsubtitle">Meet Our Team</div><br>
			<div id="gridlist">


			  <div id="item">
			  	
			  	<img src="gambar/charlie.jpg" alt="Image" height="200" width="200">
			  	<p class="subjudul">Charlie Frederico</p>

			  </div>

			  <div id="item">
			  	
			  	<img src="gambar/henry.jpg" alt="Image" height="200" width="200">

			  	<p class="subjudul">Henry Laufrans</p>

			  </div>

			  <div id="item">
			  	
				<img src="gambar/christian.png" alt="Image" height="200" width="200">
				<p class="subjudul">Christian Alexander</p>

			</div>

        <div id="item">
			  	
			  	<img src="gambar/ferdy.jpg" alt="Image" height="200" width="200">
			  	<p class="subjudul">Ferdy Willy</p>

			  </div>

			</div>
		</div>
	</section>
<?php } ?>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  
  </body>
    <footer class="py-5 bg-dark">Copyright © CCFH 2021
      <div class="container"></div>
    </footer>
</html>