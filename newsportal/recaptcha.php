<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Google reCAPTCHA Demo</title>
    <script src="https://www.google.com/recaptcha/api.js"></script>
</head>
<body>
    <h1>Google reCAPTCHA</h1>
    <form id="comment_form" action="login.php" method="post">
        <div class="g-recaptcha" data-sitekey="6LeKD10cAAAAAN494PmOrI7jK77gZYkUyzkruI32" style="margin: bottom 10px;"></div><br>
        <input type="submit" name="submit" value="Submit">
    </form>
</body>
</html>