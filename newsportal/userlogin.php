<?php

if( isset($_POST["register"]) ){
    if( registrasi($_POST) > 0 ){
        echo "<script>
                alert('user baru berhasil ditambahkankan!');
              </script>";
    }else{
        echo mysqli_error($conn);
    }
}

?>
<!DOCTYPE html>
<html>

<head>
    <title>Halaman Registrasi</title>
</head>
<body>
<h1>Halaman Registrasi</h1>
<form action="" method="post">
    <ul>
        <li>
            <label for="fname">First Name :</label>
            <input type="text" name="fname" id="fname">
        </li>
        <li>
            <label for="lname">Last Name :</label>
            <input type="text" name="lname" id="lname">
        </li>
        <li>
            <label for="username">Username :</label>
            <input type="text" name="username" id="username">
        </li>
        <li>
            <label for="password">Password :</label>
            <input type="password" name="password" id="password">
        </li>
        <li>
            <label for="birthdate">Born Date :</label>
            <input type="date" name="birthdate" id="birthdate">
        </li>
        <li>
            <label for="kelamin">Jenis Kelamin :</label>
            <select name="kelamin" id="kelamin">
            <option value="">Pilih salah satu</option>
            <option value="laki">Laki - Laki</option>
            <option value="perempuan">perempuan</option>
            </select>
        </li>
        <li>
            <button type="submit" name="register">Register</button> 
        </li>
        
    </ul
</form>
</body>

</html>