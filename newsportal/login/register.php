<?php

include('../includes/config.php');

if(isset($_POST['register'])){

    // filter data yang diinputkan
    $fname = filter_input(INPUT_POST, 'fname', FILTER_SANITIZE_STRING);
    $bname = filter_input(INPUT_POST, 'bname', FILTER_SANITIZE_STRING);
    $username = filter_input(INPUT_POST, 'username', FILTER_SANITIZE_STRING);
    // enkripsi password
    $password = password_hash($_POST["password"], PASSWORD_DEFAULT);
    $email = filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL);
    $gender = $_POST["gender"];
    $ttl = $_POST["ttl"];
    $imgfile = $_FILES["userimg"]["name"];
    // get the image extension
    $extension = substr($imgfile,strlen($imgfile)-4,strlen($imgfile));
    // allowed extensions
    $allowed_extensions = array(".jpg","jpeg",".png",".gif");
    // Validation for allowed extensions .in_array() function searches an array for a specific value.
    if(!in_array($extension,$allowed_extensions)){
        echo "<script>alert('Invalid format. Only jpg / jpeg/ png /gif format allowed');</script>";
    }else{
        //rename the image file
        $foto=md5($imgfile).$extension;
        // Code for move image into directory
        move_uploaded_file($_FILES["userimg"]["tmp_name"],"userimg/".$foto);
        
        $query=mysqli_query($con,"insert into users(fname, bname, username, email, password, ttl, gender, photo) values('$fname','$bname','$username','$email','$password','$ttl','$gender','$foto')");
        if($query){
            echo "<script type='text/javascript'> document.location = 'login.php'; </script>";
        }
        else{
            $error="Something went wrong . Please try again.";    
        } 
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Register Pesbuk</title>

    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/register.css" />
</head>
<body>

<div id="container">
    <div class="row">
        <div class="col-md-6">

        <p>&larr; <a href="index.php">Home</a>

        <h4>Bergabunglah bersama ribuan orang lainnya...</h4>
        <p>Sudah punya akun? <a href="login.php">Login di sini</a></p>

        <form action="" method="POST" enctype="multipart/form-data">

            <div class="form-group">
                <label for="name">Nama Depan</label>
                <input class="form-control" type="text" name="fname" placeholder="Masukkan nama depanmu.." required/>
            </div>

            <div class="form-group">
                <label for="name">Nama Belakang</label>
                <input class="form-control" type="text" name="bname" placeholder="Masukkan nama belakangmu.." required />
            </div>

            <div class="form-group">
                <label for="username">Username</label>
                <input class="form-control" type="text" name="username" placeholder="Username" required />
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <input class="form-control" type="email" name="email" placeholder="Alamat Email" required />
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input class="form-control" type="password" name="password" placeholder="Password" required />
            </div>
            
            <div class="form-group">
                <label for="ttl">Tanggal Lahir</label>
                <input class="form-control" type="date" name="ttl" required />
            </div>

            <div class="form-group">
                <label for="ttl">Jenis Kelamin</label>
                <ol>
                    <li>
                        <input type="radio" name="gender" value="1" />Laki-Laki
                    </li>
                    <li>
                        <input type="radio" name="gender" value="2" />Perempuan
                    </li>
                </ol>
            </div>

            <div class="card-box">
                <h4 class="m-b-30 m-t-0 header-title"><b>Foto Profil</b></h4>
                <input type="file" class="form-control" id="userimg" name="userimg" ></br>
            </div>

            <input type="submit" class="btn btn-success btn-block" name="register" value="Daftar" />

            
        </form>
            
        </div>

    </div>
</div>

</body>
</html>