<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Estudiante</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <!-- Enlace al archivo CSS de Bootstrap -->

<!-- Enlace al archivo CSS de FontAwesome -->

</head>
<body class="bg-dark">
    <?php 
  
  // Obtiene los datos ingresados por el usuario desde el formulario

  $IDEstudiante = $_GET['IDEstudiante']; // Valor por defecto 14 si no se pasa en la URL
  $Nombre = $_GET['Nombre'];
  $Apellido = $_GET['Apellido'];
  $FechaNacimiento = $_GET['FechaNacimiento'];
  $IDDepartamento = $_GET['IDDepartamento'];
  $Genero = $_GET['Genero'];
  $Username = $_GET['Username'];
  $Password = $_GET['Password'];
  $Rol = $_GET['Rol'];
  $estudiante = [
      'IDEstudiante' => $IDEstudiante,
      'Nombre' =>$Nombre,
      'Apellido' => $Apellido,
      'FechaNacimiento' => $FechaNacimiento,
      'IDDepartamento' => $IDDepartamento,
      'Genero' => $Genero,
      'Username' => $Username,
      'Password' => $Password,
      'Rol' => $Rol,
  ];
  ?>
    <h1 class="display-4 text-primary font-weight-bold text-center">Editar Estudiante</h1>

   
    <!-- Abre el formulario y utiliza el método POST -->
    <!-- app/Views/edit_form.php -->
    <form method="post" action="<?php echo base_url('/editarEstudiante'); ?>" class="container form-control">
    <input type="hidden" name="IDEstudiante" value="<?php echo $estudiante['IDEstudiante']; ?>">
    
    <div class="form-group">
        <label for="Nombre">Nombre:</label>
        <input type="text" class="form-control" name="Nombre" value="<?php echo $estudiante['Nombre']; ?>" required>
    </div>
    
    <div class="form-group">
        <label for="Apellido">Apellido:</label>
        <input type="text" class="form-control" name="Apellido" value="<?php echo $estudiante['Apellido']; ?>" required>
    </div>

    <div class="form-group">
        <label for="FechaNacimiento">Fecha de Nacimiento:</label>
        <input type="text" class="form-control" id="FechaNacimiento" name="FechaNacimiento" value="<?php echo $estudiante['FechaNacimiento']; ?>" required>
    </div>

    <div class="form-group">
        <label for="IDDepartamento">ID Departamento:</label>
        <input type="number" class="form-control" id="IDDepartamento" name="IDDepartamento" value="<?php echo $estudiante['IDDepartamento']; ?>" required>
    </div>

    <div class="form-group">
        <label for="Genero">Género:</label>
        <input type="text" class="form-control" id="Genero" name="Genero" value="<?php echo $estudiante['Genero']; ?>" required>
    </div>

    <div class="form-group">
        <label for="Username">Username:</label>
        <input type="text" class="form-control" id="Username" name="Username" value="<?php echo $estudiante['Username']; ?>" required>
    </div>

    <div class="form-group">
        <label for="Password">Password:</label>
        <input type="text" class="form-control" id="Password" name="Password" value="<?php echo $estudiante['Password']; ?>" required>
    </div>

    <div class="form-group">
    <label for="rol">Rol:</label>
        <input type="text" class="form-control" id="Rol" name="Rol" value="<?php echo $estudiante['Rol']; ?>" required>
    </div>
    
    <!-- Agrega más campos aquí para otros datos del estudiante según sea necesario -->

    <button type="submit" class="btn btn-primary">Guardar Cambios</button>
    <button href="/index" type="submit" class="btn btn-primary">Cancelar</button>
</form>



</ bg-dark>
</html>
