<!DOCTYPE html>
<html>

<?php include 'header.php' ?>

<?php include 'conexion.inc.php'?>

<body>
<section class="ftco-section">
<div class="container">
<div class="row justify-content-center">
<div class="col-md-6 text-center mb-5">

</div>

</div>

<div class="row justify-content-center">

<div class="col-md-7 col-lg-5">

<div class="login-wrap p-4 p-md-5">

<div class="icon d-flex align-items-center justify-content-center">

<i class="fa fa-user-circle-o fa-5x fa-inverse"></i>
<h2 class="heading-section text-white"> &nbsp; INICIO DE SESIÓN</h2>
</div>
<br>
<form method="post" action="conexion.login.php" class="login-form">
    <div class="form-group">
        <input type="text" class="form-control rounded-left" id="Username" name="Username" placeholder="Username" required>
    </div>
    <div class="form-group d-flex">
        <input type="password" class="form-control rounded-left" id="Password" name="Password" placeholder="Password" required>
    </div>
    <div class="form-group">
        <button type="submit" class="form-control btn btn-primary rounded submit px-3">Login</button>
    </div>
    <div class="form-group d-md-flex">
        <div class="w-50">
            <label class="checkbox-wrap checkbox-primary text-white">Remember Me
                <input type="checkbox" checked>
                <span class="checkmark"></span>
            </label>
        </div>
        <div class="w-50 text-md-right text-white">
            <a href="#">Forgot Password</a>
        </div>
    </div>
</form>

</div>
</div>
</div>
</div>
</section>
<script src="js/jquery.min.js"></script>
<script src="js/popper.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/v8b253dfea2ab4077af8c6f58422dfbfd1689876627854" integrity="sha512-bjgnUKX4azu3dLTVtie9u6TKqgx29RBwfj3QXYt5EKfWM/9hPSAI/4qcV5NACjwAo8UtTeWefx6Zq5PHcMm7Tg==" data-cf-beacon='{"rayId":"8128aa79dfbd0ddd","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2023.8.0","si":100}' crossorigin="anonymous"></script>
</body>
</html>
<br>
<br>  
<br>
<br>
<br>
<br>
<br>


 <!-- Mostrar mensajes de error aquí -->
 <?php if(isset($_GET['error'])) { ?>
    <p class="error"><?php echo $_GET['error']; ?></p>
    <?php } ?>
  <?php include 'foot.php' ?>
</html>