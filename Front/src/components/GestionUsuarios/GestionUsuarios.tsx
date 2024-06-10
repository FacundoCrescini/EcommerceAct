import React, { useEffect, useState } from 'react';
import { Table, Button, Form } from 'react-bootstrap';

type Usuario = {
  id: number;
  nombre: string;
  rol: string;
};

const GestionUsuarios: React.FC = () => {
  const [usuarios, setUsuarios] = useState<Usuario[]>([]);
  const [nuevoRol, setNuevoRol] = useState<{ [key: number]: string }>({});
  const user = JSON.parse(localStorage.getItem('usuario') || '{}');

  useEffect(() => {
    const fetchUsuarios = async () => {
      const response = await fetch('http://localhost:8080/auth/users');
      const data = await response.json();
      setUsuarios(data);
    };

    fetchUsuarios();
  }, []);

  const handleRolChange = (id: number, rol: string) => {
    setNuevoRol((prevState) => ({
      ...prevState,
      [id]: rol,
    }));
  };

  const handleSubmit = async (id: number) => {
    try {
      const response = await fetch(`http://localhost:8080/auth/users/${id}/role`, {
        method: 'PUT',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(nuevoRol[id]), // Enviar solo el nuevo rol como cadena
      });

      if (response.ok) {
        alert('Rol actualizado con éxito');
        const updatedUsuarios = usuarios.map((u) => (u.id === id ? { ...u, rol: nuevoRol[id] || u.rol } : u));
        setUsuarios(updatedUsuarios);
      } else {
        alert('Error al actualizar el rol');
      }
    } catch (error) {
      console.error('Error al actualizar el rol:', error);
      alert('Error al actualizar el rol');
    }
  };

  const handleEliminar = async (id: number) => {
    try {
      const response = await fetch(`http://localhost:8080/auth/users/${id}`, {
        method: 'DELETE',
      });

      if (response.ok) {
        alert('Usuario eliminado con éxito');
        const updatedUsuarios = usuarios.filter((u) => u.id !== id);
        setUsuarios(updatedUsuarios);
      } else {
        alert('Error al eliminar el usuario');
      }
    } catch (error) {
      console.error('Error al eliminar el usuario:', error);
      alert('Error al eliminar el usuario');
    }
  };

  const roles = ['admin', 'user'];

  return (
    <div>
      <h2>Gestión de Usuarios</h2>
      {roles.map((rol) => {
        const usuariosFiltrados = usuarios.filter((usuario) => usuario.rol === rol);
        if (usuariosFiltrados.length === 0) return null;
        return (
          <div key={rol} style={{ marginBottom: '20px' }}>
            <h4>{rol}</h4> {/* Cambia el título a un h4 para hacerlo más pequeño */}
            <Table striped bordered hover>
              <thead>
                <tr>
                  <th>ID</th>
                  <th>Nombre</th>
                  <th>Rol</th>
                  <th>Acciones</th>
                </tr>
              </thead>
              <tbody>
                {usuariosFiltrados.map((usuario) => (
                  <tr key={usuario.id}>
                    <td>{usuario.id}</td>
                    <td>{usuario.nombre}</td>
                    <td>
                      <Form.Control
                        as="select"
                        value={nuevoRol[usuario.id] || usuario.rol}
                        onChange={(e) => handleRolChange(usuario.id, e.target.value)}
                        disabled={usuario.rol === 'admin' && usuario.nombre !== user.nombre} // Desactivar si es admin y no es el usuario actual
                      >
                        <option value="user">User</option>
                        <option value="admin">Admin</option>
                      </Form.Control>
                    </td>
                    <td>
                      {usuario.rol !== 'admin' || usuario.nombre === user.nombre ? ( // Mostrar botón si no es admin o es el usuario actual
                        <>
                          <Button onClick={() => handleSubmit(usuario.id)}>Actualizar Rol</Button>
                          <Button variant="danger" onClick={() => handleEliminar(usuario.id)} style={{ marginLeft: '10px' }}>
                            Eliminar
                          </Button>
                        </>
                      ) : (
                        <Button variant="secondary" disabled>
                          No permitido
                        </Button>
                      )}
                    </td>
                  </tr>
                ))}
              </tbody>
            </Table>
          </div>
        );
      })}
    </div>
  );
};

export default GestionUsuarios;
