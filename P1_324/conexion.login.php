<?php
session_start();
include 'conexion.inc.php';  // Incluye el archivo de conexión a la base de datos

// Obtener los valores ingresados en el formulario
$usuario = $_POST['Username'];
$password = $_POST['Password'];

$sql = "SELECT * FROM docente WHERE Username = '$usuario' LIMIT 1";
$result = $con->query($sql);

if ($result->num_rows == 1) {
    // Encontró un usuario en la tabla 'docente'
    $row = $result->fetch_assoc();
    
    // Verificar la contraseña (puedes usar password_verify si has almacenado contraseñas hasheadas)
    if ($row['Password'] == $password) {
        // Usuario y contraseña son válidos
        $nombreDelUsuario = $row['Nombre'];
        $roldocente = $row['Roldocente'];
        $_SESSION['Roldocente'] = $roldocente;
        $_SESSION['Nombre'] = $nombreDelUsuario;
        $_SESSION['color'] = $color; // Asigna el color seleccionado a la sesión
        header("Location: docente.php");
        exit();
    }
}

// Si no se encontró en la tabla 'docente', buscar en la tabla 'estudiante'
$sql = "SELECT * FROM estudiante WHERE Username = '$usuario' LIMIT 1";
$result = $con->query($sql);

if ($result->num_rows == 1) {
    // Encontró un usuario en la tabla 'estudiante'
    $row = $result->fetch_assoc();
    
    // Verificar la contraseña (puedes usar password_verify si has almacenado contraseñas hasheadas)
    if ($row['Password'] == $password) {
        // Usuario y contraseña son válidos
        $nombreDelUsuario = $row['Nombre'];
        $rolestudiante = $row['Rol'];
        $_SESSION['Rol'] = $rolestudiante;
        $idestudiante = $row['IDEstudiante'];
        $_SESSION['IDEstudiante'] = $idestudiante;
        $_SESSION['Nombre'] = $nombreDelUsuario;
        $_SESSION['color'] = $color; // Asigna el color seleccionado a la sesión
        header("Location: estudiante.php");
        exit();
    }
}

// Si no se encontró en ninguna de las tablas, mostrar mensaje de error
$error = "Usuario o contraseña incorrectos";
header("Location: login.php?error=" . urlencode($error));
exit();
?>
