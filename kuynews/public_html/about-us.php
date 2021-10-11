<?php
include('includes/config.php');
session_start();

?>
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>KuyNews</title>
    <link rel="shortcut icon" href="images/title_icon.png">

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">

    <link rel="stylesheet" href="css/about-us.css" />
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
      <h1 class="mt-4 mb-3 text-center"><?php echo htmlentities($row['PageTitle'])?>
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
      Hi Sobat Kuy!
Selamat datang di website kami "KuyNews".
Kami ingin mengucapkan terima kasih kepada kalian yang sudah mengunjungi website kami. 
Website "KuyNews" diciptakan oleh 4 mahasiswa Universitas Multimedia Nusantara yang terdiri dari Henry Laufrans, Charlie Frederico, Christian Alexander Andrue, dan Ferdy Willy. 
</br></br>
KuyNews berasal dari gabungan 2 kata, yaitu "Kuy" dan "News". Kuy yang berarti mengajak dan News yang berarti berita. Jika digabungkan menjadi "KuyNews" yang berarti mengajak untuk membaca/menulis berita.
Kuynews merupakan website yang bertujuan untuk mencari berita terkini dengan keterangan dan sumber yang jelas. 

Website KuyNews ini kami harap bisa menjadi salah satu website berita terbaik dengan isi berita yang berkualitas di Indonesia.
			</div><br>
		</div>


		<div id="mt-5 mb-5">
			<div id="subsubtitle">Meet Our Team</div><br>
			<div id="gridlist">


			  <div id="item">
			  	
			  	<img src="gambar/charlie.jpg" alt="Image" height="200" width="150" style="width:100%;">
			  	<p class="subjudul">Charlie Frederico</p>

			  </div>

			  <div id="item">
			  	
			  	<img src="gambar/henry.jpg" alt="Image" height="200" width="150" style="width:100%;">

			  	<p class="subjudul">Henry Laufrans</p>

			  </div>

			  <div id="item">
			  	
				<img src="gambar/christian.png" alt="Image" height="200" width="150" style="width:100%;">
				<p class="subjudul">Christian Alexander</p>

			</div>

        <div id="item">
			  	
			  	<img src="gambar/ferdy.jpg" alt="Image" height="200" width="150" style="width:100%;">
			  	<p class="subjudul">Ferdy Willy</p>

			  </div>

			</div>
		</div>
	</section>
<?php } ?>
  
    <?php 
      include('includes/footer.php');
    ?>
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  </body>
</html>