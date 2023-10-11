<!DOCTYPE html>
<html>

<head>
    <title>Lista de Estudiantes</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    <!-- Enlace al archivo CSS de Bootstrap -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

<!-- Enlace al archivo CSS de FontAwesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

</head>

<h1 class="display-4 text-primary font-weight-bold text-center">Agregar Estudiante</h1>
    
    <!-- Formulario para agregar estudiante -->
    <form class="container bg-light p-4" method="post" action="<?= base_url('/agregarEstudiante') ?>">
    <!-- Nombre -->
    <div class="form-group">
        <label for="nombre">Nombre:</label>
        <input type="text" class="form-control" id="nombre" name="nombre" required>
    </div>

    <!-- Apellido -->
    <div class="form-group">
        <label for="apellido">Apellido:</label>
        <input type="text" class="form-control" id="apellido" name="apellido" required>
    </div>

    <!-- Fecha de Nacimiento -->
    <div class="form-group">
        <label for="fecha_nacimiento">Fecha de Nacimiento:</label>
        <input type="date" class="form-control" id="fecha_nacimiento" name="fecha_nacimiento" required>
    </div>

    <!-- ID Departamento -->
    <div class="form-group">
        <label for="id_departamento">ID Departamento:</label>
        <input type="number" class="form-control" id="id_departamento" name="id_departamento" required>
    </div>

    <!-- Género -->
    <div class="form-group">
        <label for="genero">Género:</label>
        <input type="text" class="form-control" id="genero" name="genero" required>
    </div>

    <!-- Username -->
    <div class="form-group">
        <label for="username">Username:</label>
        <input type="text" class="form-control" id="username" name="username" required>
    </div>

    <!-- Contraseña -->
    <div class="form-group">
        <label for="password">Password:</label>
        <input type="text" class="form-control" id="password" name="password" required>
    </div>

    <!-- Rol -->
    <div class="form-group">
    <label for="rol">Rol:</label>
    <input type="text" class="form-control bg-dark text-light" id="rol" name="rol" value="Estudiante" readonly>
</div>


    <!-- Botón para enviar el formulario -->
    <button type="submit" class="btn btn-primary">Agregar Estudiante</button>
</form>

<body class="bg-dark">
    <h1>Lista de Estudiantes</h1>
    <table class="container bg-white">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Fecha de Nacimiento</th>
                <th>ID Departamento</th>
                <th>Género</th>
                <th>Usuario</th>
                <th>Rol</th>
                <th>Acciones</th> <!-- Nueva columna para acciones -->
            </tr>
        </thead>
        <tbody>
            <?php foreach ($estudiantes as $estudiante): ?>
                <tr>
                    <td><?= $estudiante->IDEstudiante ?></td>
                    <td><?= $estudiante->Nombre ?></td>
                    <td><?= $estudiante->Apellido ?></td>
                    <td><?= $estudiante->FechaNacimiento ?></td>
                    <td><?= $estudiante->IDDepartamento ?></td>
                    <td><?= $estudiante->Genero ?></td>
                    <td><?= $estudiante->Username ?></td>
                    <td><?= $estudiante->Rol ?></td>
                    <td>
    <form method="post" action="deleteStudent">
    <input type="hidden" name="student_id" value="<?php echo $estudiante->IDEstudiante; ?>">
    <button class="btn btn-danger" type="submit"><i class="fas fa-trash"></i></button>
    <a class="btn btn-warning" href="hola?IDEstudiante=<?php echo $estudiante->IDEstudiante; ?>&Nombre=<?php echo $estudiante->Nombre; ?>&Apellido=<?php echo $estudiante->Apellido; ?>&FechaNacimiento=<?php echo $estudiante->FechaNacimiento; ?>&IDDepartamento=<?php echo $estudiante->IDDepartamento; ?>&Genero=<?php echo $estudiante->Genero; ?>&Username=<?php echo $estudiante->Username; ?>&Password=<?php echo $estudiante->Password; ?>&Rol=<?php echo $estudiante->Rol; ?>"><i class="fas fa-pencil-alt"></i></a>

</form>    







           <!--         <a href="<?php echo base_url('/deleteStudent?student_id=' . $estudiante->IDEstudiante) ?>" class="btn btn-danger">Eliminar</a>

                    <button id="eliminarEstudiante" class="btn btn-danger" onclick="eliminarEstudiante()">Eliminar estudiante</button>

                        <a href="<?php base_url('eliminarEstudiante/' . $estudiante->IDEstudiante) ?>" class="btn btn-danger">Eliminar</a>
 -->
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>
</html>
