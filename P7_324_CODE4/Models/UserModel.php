<?php

namespace App\Models;

use CodeIgniter\Model;

class UserModel extends Model
{
    public function usuarios_lst()
    {
        $sql = "SELECT * FROM estudiante;";
        $query = $this->db->query($sql);
        $result = $query->getResult(); // Cambiar $query a $result
        if (count($result) >= 1) {
            return $result;
        } else {
            return NULL;
        }
    }
   
}
