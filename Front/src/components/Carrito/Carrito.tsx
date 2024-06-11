import React, { useState } from 'react';
import { Button, Card, Form } from 'react-bootstrap';
import { useCart } from '../context/CartContext';
import { initMercadoPago, Wallet } from '@mercadopago/sdk-react';
import "./Carrito.css"

async function createPreferenceMP(pedido) {
  const urlServer = 'http://localhost:8080/api/pedidos/create_preference_mp';
  const method = "POST";
  const response = await fetch(urlServer, {
    method: method,
    body: JSON.stringify(pedido),
    headers: {
      "Content-Type": 'application/json'
    }
  });
  return await response.json();
}

// Inicializar MercadoPago
initMercadoPago('TEST-fad26a50-4373-4067-a401-a47ff50224c3', { locale: "es-AR" });

const Carrito: React.FC = () => {
  const { cart, removeFromCart, updateQuantity, clearCart } = useCart();
  const [formaPago, setFormaPago] = useState('EFECTIVO');
  const [tipoEnvio, setTipoEnvio] = useState('DELIVERY');
  const [idPreference, setIdPreference] = useState('');

  const handleQuantityChange = (id: number, cantidad: number) => {
    updateQuantity(id, cantidad);
  };

  const calcularSubtotal = (precio: number, cantidad: number) => {
    return (precio * cantidad).toFixed(2);
  };

  const calcularTotal = () => {
    return cart.reduce((total, item) => total + item.precioVenta * item.cantidad, 0).toFixed(2);
  };

  const calcularTotalCosto = () => {
    const total = parseFloat(calcularTotal());
    if (tipoEnvio === 'DELIVERY') {
      return (total + 1000).toFixed(2);
    } else {
      return total.toFixed(2);
    }
  };

  const handleGetPreference = async () => {
    if (formaPago === 'MERCADO_PAGO') {
      const usuario = JSON.parse(localStorage.getItem('usuario') || '{}');

      const pedido = {
        horaEstimadaFinalizacion: "14:30:00",
        total: parseFloat(calcularTotal()),
        totalCosto: parseFloat(calcularTotalCosto()),
        estado: "PENDIENTE_ENTREGA_MP",
        tipoEnvio: tipoEnvio,
        formaPago: formaPago,
        fechaPedido: new Date().toISOString().split('T')[0],
        user: usuario,
        detallePedidos: cart.map(item => ({
          cantidad: item.cantidad,
          subTotal: item.precioVenta * item.cantidad,
          articulo: {
            type: "articuloManufacturado",
            id: item.id,
            denominacion: item.denominacion,
            precioVenta: item.precioVenta,
            descripcion: item.descripcion,
            tiempoEstimadoMinutos: item.tiempoEstimadoMinutos || 0,
            preparacion: item.preparacion || "",
            stock: item.stock || 0,
            unidadMedida: {
              id: item.unidadMedidaId,
              denominacion: item.unidadMedidaDenominacion
            },
            categoria: {
              id: item.categoriaId,
              denominacion: item.categoriaDenominacion,
              esInsumo: item.categoriaEsInsumo
            },
            imagenes: item.imagenes || []
          }
        })),
      };

      try {
        const preferenceResponse = await createPreferenceMP({ id: 0, titulo: 'Pedido carrito', montoTotal: parseInt(calcularTotalCosto()) });
        console.log("Preference id: " + preferenceResponse.id);
        if (preferenceResponse) setIdPreference(preferenceResponse.id);
      } catch (error) {
        console.error('Error al crear la preferencia de Mercado Pago:', error);
      }
    } else {
      handleSubmit();
    }
  };

  const handleSubmit = async () => {
    const usuario = JSON.parse(localStorage.getItem('usuario') || '{}');

    const pedido = {
      horaEstimadaFinalizacion: "14:30:00",
      total: parseFloat(calcularTotal()),
      totalCosto: parseFloat(calcularTotalCosto()),
      estado: formaPago === 'MERCADO_PAGO' ? "PENDIENTE_ENTREGA_MP" : "PENDIENTE_ENTREGA_PAGO_EFECTIVO",
      tipoEnvio: tipoEnvio,
      formaPago: formaPago,
      fechaPedido: new Date().toISOString().split('T')[0],
      user: usuario,
      detallePedidos: cart.map(item => ({
        cantidad: item.cantidad,
        subTotal: item.precioVenta * item.cantidad,
        articulo: {
          type: "articuloManufacturado",
          id: item.id,
          denominacion: item.denominacion,
          precioVenta: item.precioVenta,
          descripcion: item.descripcion,
          tiempoEstimadoMinutos: item.tiempoEstimadoMinutos || 0,
          preparacion: item.preparacion || "",
          stock: item.stock || 0,
          unidadMedida: {
            id: item.unidadMedidaId,
            denominacion: item.unidadMedidaDenominacion
          },
          categoria: {
            id: item.categoriaId,
            denominacion: item.categoriaDenominacion,
            esInsumo: item.categoriaEsInsumo
          },
          imagenes: item.imagenes || []
        }
      })),
      factura: {
        fechaFcturacion: new Date().toISOString().split('T')[0],
        mpPaymentId: formaPago === 'MERCADO_PAGO' ? idPreference : null,
        pagado: formaPago === 'MERCADO_PAGO',
        totalVenta: parseFloat(calcularTotal())
      }
    };

    try {
      const response = await fetch('http://localhost:8080/api/pedidos/crear', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify(pedido)
      });

      if (response.ok) {
        alert('Pedido creado con éxito');
        clearCart();
      } else {
        const errorData = await response.json();
        console.error('Error al crear el pedido:', errorData);
        alert('Error al crear el pedido');
      }
    } catch (error) {
      console.error('Error al enviar el pedido:', error);
      alert('Error al enviar el pedido');
    }
  };

  return (
    <div style={{ padding: '20px' }}>
      <h2>Carrito de Compras</h2>
      <Form.Group>
        <Form.Label>Forma de Pago</Form.Label>
        <Form.Control as="select" value={formaPago} onChange={(e) => setFormaPago(e.target.value)}>
          <option value="EFECTIVO">Efectivo</option>
          <option value="MERCADO_PAGO">Mercado Pago</option>
        </Form.Control>
      </Form.Group>
      <Form.Group>
        <Form.Label>Tipo de Envío</Form.Label>
        <Form.Control as="select" value={tipoEnvio} onChange={(e) => setTipoEnvio(e.target.value)}>
          <option value="DELIVERY">Delivery</option>
          <option value="TAKE_AWAY">Take Away</option>
        </Form.Control>
      </Form.Group>
      {cart.length === 0 ? (
        <p>El carrito está vacío</p>
      ) : (
        <>
          <h4>Articulos Seleccionados:</h4>
          <div style={{ display: 'flex', flexWrap: 'wrap', gap: '10px' }}>
            {cart.map((item) => (
              <Card key={item.id} style={{ width: '18rem', marginBottom: '10px' }}>
                <Card.Img 
                  variant="top" 
                  src={(item.imagenes && item.imagenes.length > 0) ? item.imagenes[0].url : 'https://via.placeholder.com/150'} 
                  onError={(e) => {
                    e.currentTarget.src = 'https://via.placeholder.com/150'; // URL de imagen de reserva si la principal falla
                  }} 
                  alt={item.denominacion} 
                  style={{ width: '100%', height: '200px', objectFit: 'cover' }} 
                />
                <Card.Body>
                  <Card.Title>{item.denominacion}</Card.Title>
                  <Card.Subtitle>${item.precioVenta}</Card.Subtitle>
                  <Card.Text>{item.descripcion}</Card.Text>
                  <input
                    type="number"
                    value={item.cantidad}
                    onChange={(e) => handleQuantityChange(item.id, parseInt(e.target.value))}
                    min="1"
                    style={{ width: '60px', marginRight: '10px' }}
                  />
                  <Button variant="danger" onClick={() => removeFromCart(item.id)}>
                    Eliminar
                  </Button>
                  <div>Subtotal: ${calcularSubtotal(item.precioVenta, item.cantidad)}</div>
                </Card.Body>
              </Card>
            ))}
          </div>
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginTop: '20px' }}>
            <Button variant="secondary" onClick={clearCart}>
              Vaciar Carrito
            </Button>
            <div style={{ fontWeight: 'bold' }}>
              Total: ${calcularTotal()}
            </div>
            {tipoEnvio === 'DELIVERY' && (
              <div style={{ fontWeight: 'bold' }}>
                Total con Envío: ${calcularTotalCosto()}
              </div>
            )}
            <Button variant="success" style={{ marginLeft: '10px' }} onClick={handleGetPreference}>
              Realizar Compra
            </Button>
          </div>
          {formaPago === 'MERCADO_PAGO' && (
            <div className={idPreference ? 'divVisible' : 'divInvisible'}>
              <Wallet initialization={{ preferenceId: idPreference, redirectMode: "blank" }} 
              customization={{ texts: { valueProp: 'smart_option' } }} onSubmit={handleSubmit} />
            </div>
          )}
        </>
      )}
    </div>
  );
};

export default Carrito;
