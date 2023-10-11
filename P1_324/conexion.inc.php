
<?php


$servername = "localhost";  // Cambia esto si tu servidor de base de datos no está en localhost
$username = "root";   // Reemplaza con tu nombre de usuario de MySQL
$password = ""; // Reemplaza con tu contraseña de MySQL
$database = "mibd_ticona"; // Reemplaza con el nombre de tu base de datos

// Crear una conexión
$con = new mysqli($servername, $username, $password, $database);

// Verificar la conexión
if ($con->connect_error) {
    die("Error de conexión: " . $con->connect_error);
}


?>
