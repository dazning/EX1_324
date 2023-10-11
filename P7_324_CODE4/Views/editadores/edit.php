<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Estudiante</title>
</head>
<body>
    <h1>Editar Estudiante</h1>
    <!-- Abre el formulario y utiliza el método POST -->
    <!-- app/Views/edit_form.php -->

<form method="post" action="<?php echo base_url('/editarEstudiante'); ?>">
    <input type="hidden" name="IDEstudiante" value="<?php echo $estudiante['IDEstudiante']; ?>">
    
    <label for="Nombre">Nombre:</label>
    <input type="text" name="Nombre" value="<?php echo $estudiante['Nombre']; ?>" required>
    
    <label for="Apellido">Apellido:</label>
    <input type="text" name="Apellido" value="<?php echo $estudiante['Apellido']; ?>" required>
    
    <!-- Agrega más campos aquí para otros datos del estudiante según sea necesario -->

    <button type="submit">Guardar Cambios</button>
</form>

</body>
</html>
