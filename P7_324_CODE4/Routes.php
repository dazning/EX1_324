<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/','Home::index');
$routes->post('Home/editadores', 'Home::deleteStudent');
$routes->post('Home/deleteStudent', 'Home::deleteStudent'); // Esto asume que tienes un método "deleteStudent" en tu controlador "Home"
$routes->post('deleteStudent', 'Home::deleteStudent'); // Esto asume que tienes un método "deleteStudent" en tu controlador "Home"
$routes->post('agregarEstudiante', 'Home::agregarEstudiante');
$routes->get('hola', 'Home::hola');
$routes->post('edit', 'Home::editadores');
$routes->resource('UserModel.php');
$routes->resource('User2Model.php');
$routes->post('Home/editadores/edit', 'Home::agregarEstudiante');
$routes->post('/agregar-estudiante', 'NombreDelControlador::agregarEstudiante');

$routes->post('editarEstudiante', 'Home::editarEstudiante');

$routes->get('editarEstudiante', 'Home::editarEstudiante');
// Otras rutas personalizadas si es necesario





