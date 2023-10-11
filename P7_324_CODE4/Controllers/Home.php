<?php
namespace App\Controllers;
use App\Models\UserModel;
use App\Models\User2Model;
use CodeIgniter\HTTP\RequestInterface;


class Home extends BaseController
{
    public $UserModel = NULL;

    public function __construct()
    {
        $this->UserModel = model('UserModel');
        $this->User2Model = model('User2Model');
    }

   // public function index()
  //  {
   //     $data['estudiantes'] = $this->modelHome->usuarios_lst();
   //     return view('body', $data);
   // }
    
   public function index()
   {
    $data['estudiantes'] = $this->UserModel->usuarios_lst();
       return view('body', $data); // Cambié 'var_dump' a 'var_dump'
   }
   
   public function deleteStudent() {
    $id = $this->request->getPost('student_id'); // Obtén el ID del estudiante del formulario
    $model = new User2Model(); // Crea una instancia de tu modelo

    if ($model->find($id) == NULL) { // Verifica si el estudiante existe
        throw PageNotFoundException::forPageNotFound();
    }

    $model->delete($id); // Elimina el estudiante
    return redirect()->to('/')->with('message', 'Estudiante eliminado con éxito.'); // Redirige a la página principal con un mensaje de éxito
}


public function agregarEstudiante()
{
    // Verifica si se ha enviado una solicitud POST
    if ($this->request->getMethod() === 'post') {
        // Obtiene los datos ingresados por el usuario desde el formulario
        $data = [
            'Nombre' => $this->request->getPost('nombre'),
            'Apellido' => $this->request->getPost('apellido'),
            'FechaNacimiento' => $this->request->getPost('fecha_nacimiento'),
            'IDDepartamento' => $this->request->getPost('id_departamento'),
            'Genero' => $this->request->getPost('genero'),
            'Username' => $this->request->getPost('username'),
            'Password' => $this->request->getPost('password'), // Se recomienda almacenar contraseñas seguras
            'Rol' => $this->request->getPost('rol'),
        ];

        // Valida los datos según tus reglas de validación (puedes usar CodeIgniter Validation aquí)

        // Llama al modelo para agregar el estudiante (asume que tienes un modelo llamado User2Model)
        $this->User2Model->insert($data);

        // Redirige a la página de lista de estudiantes o a donde desees
        return redirect()->to(base_url('/'))->with('success', 'Estudiante agregado correctamente');
    }
}

public function editarEstudiante()
{
    // Verifica si se ha enviado una solicitud POST
    if ($this->request->getMethod() === 'post') {
        // Obtiene el ID del estudiante del formulario
        $IDEstudiante = $this->request->getPost('IDEstudiante');

        // Obtiene los datos ingresados por el usuario desde el formulario
        $data = [
            'Nombre' => $this->request->getPost('Nombre'),
            'Apellido' => $this->request->getPost('Apellido'),
            'FechaNacimiento' => $this->request->getPost('FechaNacimiento'),
            'IDDepartamento' => $this->request->getPost('IDDepartamento'),
            'Genero' => $this->request->getPost('Genero'),
            'Username' => $this->request->getPost('Username'),
            'Password' => $this->request->getPost('Password'),
            'Rol' => $this->request->getPost('Rol'),
            // Agrega más campos aquí para otros datos del estudiante según sea necesario
        ];

        // Valida los datos según tus reglas de validación (puedes usar CodeIgniter Validation aquí)

        // Llama al modelo para actualizar el estudiante (asume que tienes un modelo llamado User2Model)
        $this->User2Model->update($IDEstudiante, $data);

        // Redirige a la página de lista de estudiantes o a donde desees
        return redirect()->to(base_url('/'))->with('success', 'Estudiante actualizado correctamente');
    }
}




public function hola()
{       
            return view('edit');
       
    // Supongo que aquí obtienes los datos del estudiante que deseas editar.
    


    

}
}