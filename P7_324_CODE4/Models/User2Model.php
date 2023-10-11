<?php

namespace App\Models;

use CodeIgniter\Model;

class User2Model extends Model
{
    protected $table = 'estudiante';
    protected $primaryKey = 'IDEstudiante';
    protected $returnType = 'array';
    protected $allowedFields = ['Nombre', 'Apellido', 'FechaNacimiento', 'IDDepartamento','Genero', 'Username', 'Password', 'Rol'];
    protected $useTimestamps = false;
    protected $allowedMethods = ['delete', 'get', 'post','update'];
    protected $validationRules = [];
    protected $validationMessages = [];
    protected $skipValidation = false;
}

