
<?php
session_start(); // Inicia la sesión para acceder a las variables de sesión

//redirigir al presionar guardar color
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $color = $_POST['color'];
    $_SESSION['color'] = $color;
    header("Location: docente.php");
}

// Comprueba si el usuario ha iniciado sesión

if (!isset($_SESSION['Roldocente'])) {
    header("Location: salir.php"); // Redirige al usuario a la página de inicio de sesión si no ha iniciado sesión o no es un estudiante
    exit();
}



include('conexion.inc.php');
$consultaarray = "SELECT D.Nombre AS Departamento, AVG(N.Calificacion) AS MediaNotas
FROM Notas N
INNER JOIN Estudiante E ON N.IDEstudiante = E.IDEstudiante
INNER JOIN Departamento D ON E.IDDepartamento = D.IDDepartamento
GROUP BY D.Nombre;
";

$resultadoarray = $con->query($consultaarray);


$consulta = "SELECT D.Nombre AS Departamento,
AVG(
    CASE
        WHEN N.Calificacion IS NOT NULL THEN N.Calificacion
        ELSE 0
    END
) AS MediaNotas
FROM Departamento D
INNER JOIN Estudiante E ON D.IDDepartamento = E.IDDepartamento
INNER JOIN Notas N ON E.IDEstudiante = N.IDEstudiante
GROUP BY D.Nombre;
";

$resultado = $con->query($consulta);

?>

<!DOCTYPE html>
<html>

<head>
    <title>Página de Docente</title>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <link rel="shortcut icon" href="images/fevicon.png" type="image/x-icon">
<!-- fonts style -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">
<!--owl slider stylesheet -->
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
<!-- nice select -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha256-mLBIhmBvigTFWPSCtvdu6a76T+3Xyt+K571hupeFLg4=" crossorigin="anonymous" />
<!-- font awesome style -->
<link href="css/font-awesome.min.css" rel="stylesheet" />

<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet" />
<!-- responsive style -->
<link href="css/responsive.css" rel="stylesheet" />
<style>
    body {
     background-color: <?php echo $_SESSION['color']; ?>;
     color: white;
    }
    header{
        background-color: #0c0c0c;
    }
    input[type="color"] {
      width: 80px; /* Establece el ancho deseado */
      height: 80px; /* Establece la altura deseada */
    }
    </style>
</head>
<header class="header_section">
      <div class="header_top">
        <div class="container-fluid header_top_container">

          <div class="contact_nav">
            <a href="">
              <i class="fa fa-map-marker" aria-hidden="true"></i>
              <span>
            
              Monoblock Central -
              Edif. Carrera de Informatica
              Piso 5, La Paz, Bolivia
              </span>
            </a>
            <a href="">
              <i class="fa fa-phone" aria-hidden="true"></i>
              <span>
              +591 (2) 244-0338 - (2) 244-0325
              </span>
            </a>
            <a href="">
              <i class="fa fa-envelope" aria-hidden="true"></i>
              <span>
              informatica@informatica.edu.bo
              </span>
            </a>
          </div>
          <div class="social_box">
            <a href="">
              <i class="fa fa-facebook" aria-hidden="true"></i>
            </a>
            <a href="">
              <i class="fa fa-twitter" aria-hidden="true"></i>
            </a>
            <a href="">
              <i class="fa fa-telegram" aria-hidden="true"></i>
            </a>
            <a href="">
              <i class="fa fa-instagram" aria-hidden="true"></i>
            </a>
          </div>
        </div>
      </div>
      <div class="header_bottom">
        <div class="container-fluid">
          <nav class="navbar navbar-expand-lg custom_nav-container ">
          <img src="images/mejor.png" width="50" height="50">
            <a class="navbar-brand " href="index.html"> &nbsp;INFORMATICA UMSA </a>
            
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class=""> </span>
            </button>
            <a href="http://localhost/code4/public/">
            <img src="images/codeigniter.png" width="60" height="50">
            </a>
            <a href="https://localhost:44389/">
            <img src="images/asp.png" width="50" height="50">
            </a>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav  ">
                <li class="nav-item active">
                  <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
                </li>
                
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        CARRERA
                    </a>
                    <div class="dropdown-menu bg-dark">
                    <a class="dropdown-item bg-dark text-white" href="carrera.acercade.php">ACERCA DE LA CARRERA</a></br>
                    <a class="dropdown-item bg-dark text-white" href="carrera.acreditacion.php">ACREDITACIÓN</a></br>
                    <a class="dropdown-item bg-dark text-white" href="carrera.mv.php">MISION, VISION Y OBJETIVOS </a></br>
                    <a class="dropdown-item bg-dark text-white" href="carrera.historia.php">HISTORIA</a>
                    </div>
                </li>
                
                <li class="nav-item">
                  <a class="nav-link" href="kardex.php">KARDEX</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="institutoinvestiga.php"> Instituto de investigación </a>
                </li>
                <li class="nav-item">
               

                </li>
                <li class="nav-item">
                  <a class="nav-link" href="estudiante.php">
                    <i class="fa fa-user" aria-hidden="true"></i>
                    <span>
                      <i>DOCENTE:</i> <i><?php echo $_SESSION['Nombre']; ?></i>
                    </span>
                    
                  </a>
                 
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="salir.php"> SALIR </a>
                </li>
                <form class="form-inline justify-content-center">
                  
                </form>
              </ul>
            </div>
          </nav>
        </div>
      </div>
      
    </header>
    
<body">
<main class="align-items-center justify-content-center">
    <form method="post" action="docente.php">
        <div class="text-center">
            <input type="submit" value="Guardar" class="btn btn-primary">
        </div>
        <div class="text-center">
            <!-- Aplicamos la clase "form-control" para un estilo uniforme -->
            <input type="color" name="color" value="">
        </div>
    </form>
</main>



<div class="container mt-5 bg-white">


    <h1 class="text-dark text-center">Media de Notas con CASE WHEN</h1>
    <table class="table">
        <?php
        // Mostrar los resultados en una tabla Bootstrap
        if ($resultado->num_rows > 0) {
            echo '<thead><tr><th>Departamento</th>';
            while ($fila = $resultado->fetch_assoc()) {
                // Imprime los nombres de los departamentos como encabezados de columna
                echo '<th>' . $fila['Departamento'] . '</th>';
            }
            echo '</tr></thead>';
            echo '<tbody><tr><td>Media de Notas</td>';

            // Reiniciar la consulta para obtener los resultados nuevamente
            $resultado->data_seek(0);

            while ($fila = $resultado->fetch_assoc()) {
                // Imprime las medias de las notas como valores en las columnas
                echo '<td>' . $fila['MediaNotas'] . '</td>';
            }
            echo '</tr></tbody>';
        } else {
            echo "No se encontraron resultados.";
        }
        ?>
    </table>
</div>

<div class="container mt-5 bg-white">
<h1 class="text-dark text-center">Media de Notas con ARRAYS</h1>
    <div class="row">
    <table class="table">
        <?php
        $mediaPorDepartamento = array();

        // Convierte los resultados en un array asociativo
        while ($fila = $resultadoarray->fetch_assoc()) {
            $departamento = $fila['Departamento'];
            $media = $fila['MediaNotas'];
            $mediaPorDepartamento[] = array("Departamento" => $departamento, "MediaNotas" => $media);
        }
        ?>
        <div class="col-md-12 text-dark">
            <?php
            echo "<th>Departamentos: </th>";
            foreach ($mediaPorDepartamento as $fila) {
                echo '<th>' . $fila['Departamento'] . '</th>';
            }
            ?>
        </div>
        
        <div class="col-md-12 text-dark">
            <?php
            // Mostrar medias de notas en otra fila
            echo '</tr></thead>';
            echo '<tbody><tr><td>Media de Notas</td>';
            foreach ($mediaPorDepartamento as $fila) {
                echo '<td>' . $fila['MediaNotas'] . '</td>';
            }
            ?>
             </table>
        </div>
    </div>
</div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.5.0/dist/js/bootstrap.min.js" integrity="sha384-xxxxxx" crossorigin="anonymous"></script>
  
</body>
</html>

 
