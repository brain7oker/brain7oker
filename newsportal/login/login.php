<?php 

include('../includes/config.php');

if(isset($_POST['login'])) {
    // Getting username/ email and password
$uname=$_POST['username'];
$password=$_POST['password'];
// Fetch data from database on the basis of username/email and password
$sql =mysqli_query($con,"SELECT username, password FROM users WHERE (username='$uname')");
$num = mysqli_fetch_array($sql);
if($num>0){
    $hashpassword=$num['password']; // Hashed password fething from database
    //verifying Password
    if (password_verify($password, $hashpassword)) {
        session_start();
        $_SESSION['user']=true;
        echo "<script type='text/javascript'> document.location = '../index.php'; </script>";
    } else {
    echo "<script>alert('Wrong Password');</script>";
    }
}
//if username or email not found in database
else{
echo "<script>alert('User not registered with us');</script>";
} 
}

/*if(isset($_POST['login'])){

    $username = filter_input(INPUT_POST, 'username', FILTER_SANITIZE_STRING);
    $password = filter_input(INPUT_POST, 'password', FILTER_SANITIZE_STRING);
    $sql = "SELECT * FROM users WHERE username=:username OR email=:email OR username=:username";
    $stmt = $db->prepare($sql);
    
    // bind parameter ke query
    $params = array(
        ":username" => $username,
        ":email" => $username,
    );


    $stmt->execute($params);

    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    // jika user terdaftar
    if($user){
        // verifikasi password
        if(password_verify($password, $user["password"])){
            // buat Session
            session_start();
            $_SESSION['user'] = $username;
            // login sukses, alihkan ke halaman timeline
            header("Location: ../index.php");
        }
    }
}
*/
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login Pesbuk</title>

    <link rel="stylesheet" href="css/bootstrap.min.css" />
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="row">
        <div class="col-md-6">

        <p>&larr; <a href="index.php">Home</a>

        <h4>Masuk ke Pesbuk</h4>
        <p>Belum punya akun? <a href="register.php">Daftar di sini</a></p>

        <form action="" method="POST" >

            <div class="form-group">
                <label for="username">Username</label>
                <input class="form-control" type="text" name="username" placeholder="Username atau email" required/>
            </div>


            <div class="form-group">
                <label for="password">Password</label>
                <input class="form-control" type="password" name="password" placeholder="Password" required/>
            </div>

            <input type="submit" class="btn btn-success btn-block" name="login" value="Masuk" required/>

        </form>
            
        </div>

        <div class="col-md-6">
            <!-- isi dengan sesuatu di sini -->
        </div>

    </div>
</div>
    
</body>
</html>