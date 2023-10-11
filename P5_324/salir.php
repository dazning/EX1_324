<?php
session_start();

// Elimina todas las variables de sesión
session_unset();

// Destruye la sesión actual
session_destroy();

// Redirige a la página de inicio o a donde desees
header("Location: login.php");
exit;
?>