<!DOCTYPE html>
<html>

<head>
    <title>Lista de Estudiantes</title>
</head>
<body>


    <h1>Lista de Estudiantes</h1>
    <table>
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
    <button type="submit">ELIMINAR</button>
    
</form>    
<a href="hola" class="btn btn-danger">EDITAR</a>


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
