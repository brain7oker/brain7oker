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
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>

    <link rel="stylesheet" href="css/login.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
</head>
<body>

<div class="container">
    <div class="wrapper">
        <div class="title"><span>Login Form</span></div>
            <form action="" method="POST" >

                <div class="row">
                    <i class="fas fa-user"></i>
                    <input type="text" name="username" placeholder="Username atau email" required/>
                </div>

                <div class="row">
                    <i class="fas fa-lock"></i>
                    <input type="password" name="password" placeholder="Password" required/>
                </div>

                <div class="row button">
                    <input type="submit" name="login" value="Masuk" required/></br>
                </div>

                <div class="row">
                    <a href="../index.php">Home</a>
                </div>
                
                <div class="signup-link">
                    Not a member? 
                    <a href="register.php">Signup now</a>
                </div>
            </form>
        </div>
        
    </div>
</div>
    
</body>
</html>