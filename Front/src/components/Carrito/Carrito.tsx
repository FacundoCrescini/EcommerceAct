import React, { useState, useEffect, useContext } from 'react';
import { Button, Card, Form } from 'react-bootstrap';
import { useCart } from '../context/CartContext';
import { initMercadoPago, Wallet } from '@mercadopago/sdk-react';
import "./Carrito.css";
import ArticulosContext from '../context/ArticulosContext';
import { redirect } from 'react-router-dom';

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
  const [formaPago, setFormaPago] = useState('MERCADO_PAGO');
  const [tipoEnvio, setTipoEnvio] = useState('DELIVERY');
  const [domicilio, setDomicilio] = useState('');
  const [idPreference, setIdPreference] = useState('');
  const { articulos, articulosInsumo } = useContext(ArticulosContext);

  useEffect(() => {
    if (tipoEnvio === 'DELIVERY') {
      setFormaPago('MERCADO_PAGO');
    }
  }, [tipoEnvio]);

  const handleQuantityChange = (id: number, cantidad: number) => {
    updateQuantity(id, cantidad);
  };

  const calcularSubtotal = (precio: number, cantidad: number) => {
    return (precio * cantidad).toFixed(2);
  };

  const calcularTotal = () => {
    let total = cart.reduce((total, item) => total + ('precioVenta' in item ? item.precioVenta * item.cantidad : item.precioPromocional * item.cantidad), 0);
    if (tipoEnvio === 'TAKE_AWAY') {
      total *= 0.9; // Aplicar 10% de descuento para TAKE_AWAY
    }
    return total.toFixed(2);
  };

  const calcularTotalCosto = () => {
    const total = parseFloat(calcularTotal());
    if (tipoEnvio === 'DELIVERY') {
      return (total + 1000).toFixed(2);
    } else {
      return total.toFixed(2);
    }
  };

  const fetchDetallesPromocion = async (id: number) => {
    const response = await fetch(`http://localhost:8080/promociones/${id}/Detalles`);
    return await response.json();
  };

  const handleGetPreference = async () => {
    //primero chequeo si el pedido esta con mercado pago, para generar el mppreference, y luego de eso hago el submit a la db
    if (formaPago === 'MERCADO_PAGO') {
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
    let maxTiempoEstimado = 0;
  
    // Fetch detalles de promociones y encontrar el tiempo máximo
    const detallesPromociones = await Promise.all(
      cart.filter(item => item.tipo === 'promocion').map(async item => {
        const detalles = await fetchDetallesPromocion(item.id);
        return detalles.map(detalle => {
          const articulo = [...articulos, ...articulosInsumo].find(a => a.id === detalle.articuloId);
          if (articulo) {
            if (articulo.tiempoEstimadoMinutos > maxTiempoEstimado) {
              maxTiempoEstimado = articulo.tiempoEstimadoMinutos;
            }
            return {
              cantidad: parseInt(detalle.detalle),
              subTotal: articulo.precioVenta * parseInt(detalle.detalle),
              articulo: {
                type: "articuloManufacturado",
                id: articulo.id,
              }
            };
          }
          return null;
        }).filter(Boolean);
      })
    );
  
    // Encontrar el tiempo máximo de los artículos en el carrito
    cart.filter(item => item.tipo === 'articulo').forEach(item => {
      if (item.tiempoEstimadoMinutos > maxTiempoEstimado) {
        maxTiempoEstimado = item.tiempoEstimadoMinutos;
      }
    });
  
    // Calcular la hora estimada de finalización
    const currentDate = new Date();
    currentDate.setMinutes(currentDate.getMinutes() + 35);
    const horaEstimadaFinalizacion = currentDate.toTimeString().split(' ')[0];
  
    const pedido = {
      horaEstimadaFinalizacion: horaEstimadaFinalizacion,
      total: parseFloat(calcularTotal()),
      totalCosto: parseFloat(calcularTotalCosto()),
      estado: formaPago === 'MERCADO_PAGO' ? "PENDIENTE_ENTREGA_MP" : "PENDIENTE_ENTREGA_PAGO_EFECTIVO",
      tipoEnvio: tipoEnvio,
      formaPago: formaPago,
      fechaPedido: new Date().toISOString().split('T')[0],
      user: usuario,
      detallePedidos: [
        ...cart.filter(item => item.tipo === 'articulo').map(item => ({
          cantidad: item.cantidad,
          subTotal: item.precioVenta * item.cantidad,
          articulo: {
            type: "articuloManufacturado",
            id: item.id,
          }
        })),
        ...detallesPromociones.flat()
      ],
      factura: {
        fechaFcturacion: new Date().toISOString().split('T')[0],
        mpPaymentId: formaPago === 'MERCADO_PAGO' ? idPreference : null,
        pagado: formaPago === 'MERCADO_PAGO',
        totalVenta: parseFloat(calcularTotal())
      },
      domicilio: tipoEnvio === 'DELIVERY' ? domicilio : null // Añadir el domicilio si es DELIVERY
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
        clearCart();
        if (formaPago === "EFECTIVO") {
          window.location.href = "/success"; 
        }
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
        <Form.Label>Tipo de Envío</Form.Label>
        <Form.Control as="select" value={tipoEnvio} onChange={(e) => setTipoEnvio(e.target.value)}>
          <option value="DELIVERY">Delivery</option>
          <option value="TAKE_AWAY">Take Away</option>
        </Form.Control>
      </Form.Group>
      {tipoEnvio === 'DELIVERY' && (
        <Form.Group>
          <Form.Label>Domicilio</Form.Label>
          <Form.Control type="text" required value={domicilio} onChange={(e) => setDomicilio(e.target.value)} placeholder="Ingrese su domicilio" />
        </Form.Group>
      )}
      <Form.Group>
        <Form.Label>Forma de Pago</Form.Label>
        <Form.Control as="select" value={formaPago} onChange={(e) => setFormaPago(e.target.value)} disabled={tipoEnvio === 'DELIVERY'}>
          <option value="EFECTIVO">Efectivo</option>
          <option value="MERCADO_PAGO">Mercado Pago</option>
        </Form.Control>
      </Form.Group>
      {cart.length === 0 ? (
        <p>El carrito está vacío</p>
      ) : (
        <>
          <h4>Artículos Seleccionados:</h4>
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
                  <Card.Subtitle>${'precioVenta' in item ? item.precioVenta : item.precioPromocional}</Card.Subtitle>
                  <Card.Text>{'precioVenta' in item ? item.descripcion : item.descripcionDescuento}</Card.Text>
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
                  <div>Subtotal: ${calcularSubtotal('precioVenta' in item ? item.precioVenta : item.precioPromocional, item.cantidad)}</div>
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
