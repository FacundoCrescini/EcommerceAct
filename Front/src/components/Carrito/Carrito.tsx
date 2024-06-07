import React from 'react';
import { Button, Card } from 'react-bootstrap';
import { useCart } from '../context/CartContext';

const Carrito: React.FC = () => {
  const { cart, removeFromCart, updateQuantity, clearCart } = useCart();

  const handleQuantityChange = (id: number, cantidad: number) => {
    updateQuantity(id, cantidad);
  };

  const calcularSubtotal = (precio: number, cantidad: number) => {
    return (precio * cantidad).toFixed(2);
  };

  const calcularTotal = () => {
    return cart.reduce((total, item) => total + item.precioVenta * item.cantidad, 0).toFixed(2);
  };

  const handleSubmit = async () => {
    const pedido = {
      horaEstimadaFinalizacion: "14:30:00",  // Puedes cambiar esto a un valor dinámico si es necesario
      total: parseFloat(calcularTotal()),
      totalCosto: parseFloat(calcularTotal())+50,  // Este valor debe ser calculado si tienes un costo asociado a los artículos
      estado: "PENDIENTE",
      tipoEnvio: "DOMICILIO",  // Puedes cambiar esto a un valor dinámico si es necesario
      formaPago: "EFECTIVO",  // Puedes cambiar esto a un valor dinámico si es necesario
      fechaPedido: new Date().toISOString().split('T')[0],  // Fecha actual
      clienteId: 1,  // Debes obtener el clienteId del contexto del usuario
      detallePedidos: cart.map(item => ({
        cantidad: item.cantidad,
        subTotal: item.precioVenta * item.cantidad,
        articulo: {
          id: item.id,
          denominacion: item.denominacion,
          precioVenta: item.precioVenta,
          descripcion: item.descripcion,
          // Asegúrate de incluir todas las propiedades necesarias
          tiempoEstimadoMinutos: 0, // Solo si es artículo manufacturado
          preparacion: 0, // Solo si es artículo manufacturado
          stock: 0, // Solo si es artículo insumo
          type: "articuloManufacturado" // "articuloManufacturado" o "articuloInsumo"
        }
      }))
    };

    console.log(pedido)
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
      {cart.length === 0 ? (
        <p>El carrito está vacío</p>
      ) : (
        <>
          {cart.map((item) => (
            <Card key={item.id} style={{ marginBottom: '10px' }}>
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
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginTop: '20px' }}>
            <Button variant="secondary" onClick={clearCart}>
              Vaciar Carrito
            </Button>
            <div style={{ fontWeight: 'bold' }}>
              Total: ${calcularTotal()}
            </div>
            <Button variant="success" style={{ marginLeft: '10px' }} onClick={handleSubmit}>
              Realizar Compra
            </Button>
          </div>
        </>
      )}
    </div>
  );
};

export default Carrito;
