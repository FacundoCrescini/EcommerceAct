import React, { useState, useEffect, useContext } from 'react';
import { Table, Button, Modal } from 'react-bootstrap';
import ArticulosContext from '../context/ArticulosContext';

type DetallePedido = {
  id: number;
  cantidad: number;
  subTotal: number;
  articuloDenominacion: string;
};

type Pedido = {
  id: number;
  estado: string;
  clienteNombre: string;
  detallePedidos: DetallePedido[];
};

const Cocina: React.FC = () => {
  const { articulos } = useContext(ArticulosContext);
  const [pedidos, setPedidos] = useState<Pedido[]>([]);
  const [detallePedido, setDetallePedido] = useState<DetallePedido[]>([]);
  const [showDetalleModal, setShowDetalleModal] = useState(false);
  const [showRecetasModal, setShowRecetasModal] = useState(false);

  useEffect(() => {
    const fetchPedidos = async () => {
      const response = await fetch('http://localhost:8080/api/pedidos');
      const data = await response.json();
      setPedidos(data.filter((pedido: Pedido) => pedido.estado === 'PREPARACION'));
    };

    fetchPedidos();
  }, []);

  const handleSubmit = async (id: number) => {
    try {
      const response = await fetch(`http://localhost:8080/api/pedidos/editar/${id}`, {
        method: 'PUT',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ estado: 'PREPARADO' }),
      });

      if (response.ok) {
        alert('Estado actualizado con éxito');
        const updatedPedidos = pedidos.map((p) => (p.id === id ? { ...p, estado: 'PREPARADO' } : p)).filter(p => p.estado === 'PREPARACION');
        setPedidos(updatedPedidos);
      } else {
        alert('Error al actualizar el estado');
      }
    } catch (error) {
      console.error('Error al actualizar el estado:', error);
      alert('Error al actualizar el estado');
    }
  };

  const handleShowDetalle = (pedido: Pedido) => {
    setDetallePedido(pedido.detallePedidos);
    setShowDetalleModal(true);
  };

  const handleShowRecetas = () => {
    setShowRecetasModal(true);
  };

  return (
    <div>
      <h2>Cocina</h2>
      <Button variant="info" onClick={handleShowRecetas}>
        Ver Recetario
      </Button>
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
          {pedidos.map((pedido) => (
            <tr key={pedido.id}>
              <td>{pedido.id}</td>
              <td>{pedido.estado}</td>
              <td>{pedido.clienteNombre}</td>
              <td>
                <div className="d-flex">
                  <Button className="me-2" onClick={() => handleSubmit(pedido.id)}>Marcar como PREPARADO</Button>
                  <Button onClick={() => handleShowDetalle(pedido)}>Mostrar Artículos</Button>
                </div>
              </td>
            </tr>
          ))}
        </tbody>
      </Table>

      <Modal show={showDetalleModal} onHide={() => setShowDetalleModal(false)}>
        <Modal.Header closeButton>
          <Modal.Title>Detalles del Pedido</Modal.Title>
        </Modal.Header>
        <Modal.Body>
          <ul>
            {detallePedido.map((detalle) => (
              <li key={detalle.id}>
                {detalle.articuloDenominacion} - Cantidad: {detalle.cantidad} - Subtotal: ${detalle.subTotal}
              </li>
            ))}
          </ul>
        </Modal.Body>
        <Modal.Footer>
          <Button variant="secondary" onClick={() => setShowDetalleModal(false)}>
            Cerrar
          </Button>
        </Modal.Footer>
      </Modal>

      <Modal show={showRecetasModal} onHide={() => setShowRecetasModal(false)}>
        <Modal.Header closeButton>
          <Modal.Title>Recetario</Modal.Title>
        </Modal.Header>
        <Modal.Body>
          <ul>
            {articulos.map((articulo) => (
              <li key={articulo.id}>
                <h5>{articulo.denominacion}</h5>
                <p>{articulo.preparacion}</p>
                {/* Aquí puedes añadir más detalles de la receta si es necesario */}
              </li>
            ))}
          </ul>
        </Modal.Body>
        <Modal.Footer>
          <Button variant="secondary" onClick={() => setShowRecetasModal(false)}>
            Cerrar
          </Button>
        </Modal.Footer>
      </Modal>
    </div>
  );
};

export default Cocina;
