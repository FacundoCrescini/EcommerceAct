import React, { useState, useEffect } from 'react';
import { Table, Button, Form, Modal } from 'react-bootstrap';

type DetallePedido = {
  id: number;
  cantidad: number;
  subTotal: number;
  articuloDenominacion: string;
};

type Factura = {
  id: number;
  fechaFcturacion: string;
  mpPaymentId: string | null;
  totalVenta: number;
  pagado: boolean;
};

type Pedido = {
  id: number;
  estado: string;
  clienteNombre: string;
  detallePedidos: DetallePedido[];
  factura: Factura;
};

const Caja: React.FC = () => {
  const [pedidos, setPedidos] = useState<Pedido[]>([]);
  const [nuevoEstado, setNuevoEstado] = useState<{ [key: number]: string }>({});
  const [detallePedido, setDetallePedido] = useState<DetallePedido[]>([]);
  const [factura, setFactura] = useState<Factura | null>(null);
  const [showDetalleModal, setShowDetalleModal] = useState(false);
  const [showFacturaModal, setShowFacturaModal] = useState(false);
  const [selectedPedidoId, setSelectedPedidoId] = useState<number | null>(null);

  useEffect(() => {
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
      const estado = nuevoEstado[id];
      const response = await fetch(`http://localhost:8080/api/pedidos/editar/${id}`, {
        method: 'PUT',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ estado }),
      });

      if (response.ok) {
        alert('Estado actualizado con éxito');
        const updatedPedidos = pedidos.map((p) => (p.id === id ? { ...p, estado } : p));
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

  const handleShowFactura = (factura: Factura, pedidoId: number) => {
    setFactura(factura);
    setSelectedPedidoId(pedidoId);
    setShowFacturaModal(true);
  };

  const handlePDF = (pedidoId: number | null) => {
    if (pedidoId !== null) {
      window.open(`http://localhost:8080/api/pedidos/generatePDF/${pedidoId}`, "_blank");
    }
  };

  const estadosCaja = ['PENDIENTE_ENTREGA_MP', 'PENDIENTE_ENTREGA_PAGO_EFECTIVO', 'CANCELADO', 'RECHAZADO', 'ENTREGADO', 'PREPARACION', 'PREPARADO'];

  const getOptionsByEstado = (estadoActual: string) => {
    switch (estadoActual) {
      case 'PREPARADO':
        return ['PREPARADO', 'ENTREGADO', 'CANCELADO'];
      case 'PENDIENTE_ENTREGA_PAGO_EFECTIVO':
      case 'PENDIENTE_ENTREGA_MP':
        return [estadoActual, 'PREPARACION', 'CANCELADO'];
      default:
        return estadosCaja;
    }
  };

  const getClassByEstado = (estado: string) => {
    switch (estado) {
      case 'PREPARACION':
        return 'preparacion';
      case 'PENDIENTE_ENTREGA_MP':
      case 'PENDIENTE_ENTREGA_PAGO_EFECTIVO':
        return 'pendiente';
      case 'CANCELADO':
        return 'cancelado';
      case 'RECHAZADO':
        return 'rechazado';
      case 'ENTREGADO':
        return 'entregado';
      case 'PREPARADO':
        return 'preparado';
      default:
        return '';
    }
  };

  return (
    <div>
      <h2>Caja</h2>
      {estadosCaja.map((estado) => {
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
                        disabled={['PREPARACION', 'ENTREGADO', 'CANCELADO'].includes(pedido.estado)}
                      >
                        {getOptionsByEstado(pedido.estado).map((estadoOption) => (
                          <option key={estadoOption} value={estadoOption}>
                            {estadoOption}
                          </option>
                        ))}
                      </Form.Control>
                    </td>
                    <td>{pedido.clienteNombre}</td>
                    <td>
                      <div className="d-flex">
                        <Button
                          className="me-2"
                          onClick={() => handleSubmit(pedido.id)}
                          disabled={['PREPARACION', 'ENTREGADO', 'CANCELADO'].includes(pedido.estado)}
                        >
                          Actualizar Estado
                        </Button>
                        <Button className="me-2" onClick={() => handleShowDetalle(pedido)}>Mostrar Artículos</Button>
                        <Button onClick={() => handleShowFactura(pedido.factura, pedido.id)}>Mostrar Factura</Button>
                      </div>
                    </td>
                  </tr>
                ))}
              </tbody>
            </Table>
          </div>
        );
      })}

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

      <Modal show={showFacturaModal} onHide={() => setShowFacturaModal(false)}>
        <Modal.Header closeButton>
          <Modal.Title>Factura</Modal.Title>
        </Modal.Header>
        <Modal.Body>
          {factura && (
            <div>
              <p>Fecha de Facturación: {factura.fechaFcturacion}</p>
              <p>Total Venta: ${factura.totalVenta}</p>
              <p>Pagado: {factura.pagado ? 'Sí' : 'No'}</p>
              <p>ID de Pago MP: {factura.mpPaymentId || 'N/A'}</p>
            </div>
          )}
        </Modal.Body>
        <Modal.Footer>
          <Button variant="secondary" onClick={() => setShowFacturaModal(false)}>
            Cerrar
          </Button>
          <Button variant="primary" onClick={() => handlePDF(selectedPedidoId)}>
            Descargar PDF
          </Button>
        </Modal.Footer>
      </Modal>
    </div>
  );
};

export default Caja;
