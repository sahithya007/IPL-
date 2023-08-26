<html>

<head>
  <title>Login</title>
  <style>
    body {
      background-image: url("wp3049866.jpg");
      background-position: center center;
      background-size: cover;
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-color: #464646;
    }

    h1 {
      font-size: 70px;
    }

    .f1 {
      position: relative;
      background-color: black;
      opacity: 0.9;
      border-radius: 10px;
      max-width: 400px;
      height: 230px;
      top: 60px;
      margin: 0 auto;
      text-align: center;
    }

    .b1 {
      background-color: #808080;
      border: none;
      color: black;
      border-radius: 10px;
      height: 25px;
      width: 70px;
      font-size: 15px;
      transition-duration: 0.4s;
      cursor: pointer;
    }

    .b1:hover {
      background-color: blue;
      color: black;
    }

    img {
      height: 75px;
      width: 310px;
      opacity: 0.9;
    }
  </style>
</head>

<body>
  <center><img src="Heading1.jpg"></center>
  <br><br><br><br><br><br><br><br><br><br><br><br>
  <form action="login.php" method="post" class="f1">
    <br><label style="font-size: 50px;color: white;">LOGIN</label>&lt;<br><br>
    <input style="width: 230px;height: 30px;" type="text" placeholder="Username" name="uname" required=""><br><br>
    <input style="width: 230px;height: 30px;" type="password" placeholder="Password" name="password" required=""><br><br>
    <button class="b1" value="Submit" type="Submit">Login</button>
  </form>


</body>

</html>
