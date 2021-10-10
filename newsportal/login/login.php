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
    <title>Login</title>

    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
</head>
<body>
    <div class="container">
      <div class="wrapper">
        <div class="title"><span>Login Form</span></div>
        <form action="#">
          <div class="row">
            <i class="fas fa-user"></i>
            <input type="text" placeholder="Email or Phone" required>
          </div>
          <div class="row">
            <i class="fas fa-lock"></i>
            <input type="password" placeholder="Password" required>
          </div>
          <div class="row button">
            <input type="submit" value="Login">
          </div>
          <div class="signup-link">Not a member? <a href="register.html">Signup now</a></div>
        </form>
      </div>
    </div>

  </body>
</html>