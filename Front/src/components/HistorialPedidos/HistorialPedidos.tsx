import React, { useEffect, useState } from 'react';
import { Table, Button, Modal } from 'react-bootstrap';
import axios from 'axios';

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
  clienteId: number;
  clienteNombre: string;
  detallePedidos: DetallePedido[];
  factura: Factura;
};

const HistorialPedidos: React.FC = () => {
  const [pedidos, setPedidos] = useState<Pedido[]>([]);
  const [detallePedido, setDetallePedido] = useState<DetallePedido[]>([]);
  const [factura, setFactura] = useState<Factura | null>(null);
  const [showDetalleModal, setShowDetalleModal] = useState(false);
  const [showFacturaModal, setShowFacturaModal] = useState(false);
  const [selectedPedidoId, setSelectedPedidoId] = useState<number | null>(null);

  const clienteId = JSON.parse(localStorage.getItem('usuario') || '{}').id;

  useEffect(() => {
    const fetchPedidos = async () => {
      const response = await fetch('http://localhost:8080/api/pedidos');
      const data = await response.json();
      setPedidos(data.filter((pedido: Pedido) => pedido.clienteId === clienteId));
    };

    fetchPedidos();
  }, [clienteId]);

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

  const handleSendEmail = async (pedidoId: number | null) => {
    if (pedidoId !== null) {
      const email = JSON.parse(localStorage.getItem('usuario') || '{}').gmail;
      try {
        const response = await axios.get(`http://localhost:8080/api/pedidos/enviarPDF`, {
          params: {
            pedidoId,
            email,
          },
        });

        if (response.status === 200) {
          alert('El PDF de la factura se ha enviado por correo electrónico.');
        } else {
          alert('Error al enviar el PDF por correo electrónico.');
        }
      } catch (error) {
        console.error('Error al enviar el PDF:', error);
        alert('Error al enviar el PDF por correo electrónico.');
      }
    }
  };

  return (
    <div>
      <h2>Historial de Pedidos</h2>
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
                  <Button className="me-2" onClick={() => handleShowDetalle(pedido)}>
                    Mostrar Artículos
                  </Button>
                  <Button onClick={() => handleShowFactura(pedido.factura, pedido.id)}>
                    Mostrar Factura
                  </Button>
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
          <Button variant="primary" onClick={() => handleSendEmail(selectedPedidoId)}>
            Enviar PDF por Email
          </Button>
        </Modal.Footer>
      </Modal>
    </div>
  );
};

export default HistorialPedidos;
