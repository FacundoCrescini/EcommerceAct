import React, { useState, useEffect } from 'react';
import { Table, Button, Form } from 'react-bootstrap';

type Pedido = {
  id: number;
  estado: string;
  clienteNombre: string;
};

const GestionPedidos: React.FC = () => {
  const [pedidos, setPedidos] = useState<Pedido[]>([]);
  const [nuevoEstado, setNuevoEstado] = useState<{ [key: number]: string }>({});

  useEffect(() => {
    console.log("llamando");
    const fetchPedidos = async () => {
      const response = await fetch('http://localhost:8080/api/pedidos');
      const data = await response.json();
      setPedidos(data);
    };

    fetchPedidos();
  }, []);

  const handleEstadoChange = (id: number, estado: string) => {
    setNuevoEstado((prevState) => ({
      ...prevState,
      [id]: estado,
    }));
  };

  const handleSubmit = async (id: number) => {
    try {
      const response = await fetch(`http://localhost:8080/api/pedidos/editar/${id}`, {
        method: 'PUT',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ estado: nuevoEstado[id] }),
      });

      if (response.ok) {
        alert('Estado actualizado con éxito');
        const updatedPedidos = pedidos.map((p) => (p.id === id ? { ...p, estado: nuevoEstado[id] || p.estado } : p));
        setPedidos(updatedPedidos);
      } else {
        alert('Error al actualizar el estado');
      }
    } catch (error) {
      console.error('Error al actualizar el estado:', error);
      alert('Error al actualizar el estado');
    }
  };

  const estados = ['PREPARACION', 'PENDIENTE_ENTREGA_MP', 'PENDIENTE_ENTREGA_PAGO_EFECTIVO', 'CANCELADO', 'RECHAZADO', 'ENTREGADO'];

  const getClassByEstado = (estado: string) => {
    switch (estado) {
      case 'PREPARACION':
        return 'preparacion';
      case 'PENDIENTE_ENTREGA_MP':
        return 'pendiente';
      case 'PENDIENTE_ENTREGA_PAGO_EFECTIVO':
        return 'pendiente';
      case 'CANCELADO':
        return 'cancelado';
      case 'RECHAZADO':
        return 'rechazado';
      case 'ENTREGADO':
        return 'entregado';
      default:
        return '';
    }
  };

  return (
    <div>
      <h2>Gestión de Pedidos</h2>
      {estados.map((estado) => {
        const pedidosFiltrados = pedidos.filter((pedido) => pedido.estado === estado);
        if (pedidosFiltrados.length === 0) return null;
        return (
          <div key={estado} style={{ marginBottom: '20px' }}>
            <h4>{estado}</h4>
            <Table striped bordered hover>
              <thead>
                <tr>
                  <th>ID</th>
                  <th>Estado</th>
                  <th>Cliente</th>
                  <th>Acciones</th>
                </tr>
              </thead>
              <tbody>
                {pedidosFiltrados.map((pedido) => (
                  <tr key={pedido.id} className={getClassByEstado(pedido.estado)}>
                    <td>{pedido.id}</td>
                    <td>
                      <Form.Control
                        as="select"
                        value={nuevoEstado[pedido.id] || pedido.estado}
                        onChange={(e) => handleEstadoChange(pedido.id, e.target.value)}
                      >
                        <option value="PREPARACION">PREPARACION</option>
                        <option value="PENDIENTE_ENTREGA_MP">PENDIENTE_ENTREGA_MP</option>
                        <option value="PENDIENTE_ENTREGA_PAGO_EFECTIVO">PENDIENTE_ENTREGA_PAGO_EFECTIVO</option>
                        <option value="CANCELADO">CANCELADO</option>
                        <option value="RECHAZADO">RECHAZADO</option>
                        <option value="ENTREGADO">ENTREGADO</option>
                      </Form.Control>
                    </td>
                    <td>{pedido.clienteNombre}</td>
                    <td>
                      <Button onClick={() => handleSubmit(pedido.id)}>Actualizar Estado</Button>
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

export default GestionPedidos;
