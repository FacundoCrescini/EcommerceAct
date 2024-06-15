import React, { useState } from 'react';
import { Button, Card } from 'react-bootstrap';
import { useCart } from '../context/CartContext';
import { useNavigate } from 'react-router-dom';

const CarritoSidebar: React.FC = () => {
  const [isOpen, setIsOpen] = useState(false);
  const { cart = [], removeFromCart, updateQuantity } = useCart(); // Asegurando que cart siempre tenga un array vacío por defecto
  const navigate = useNavigate();

  const handleQuantityChange = (id: number, cantidad: number) => {
    updateQuantity(id, cantidad);
  };

  const calcularSubtotal = (precio: number, cantidad: number) => {
    return (precio * cantidad).toFixed(2);
  };

  const calcularTotal = () => {
    return cart.reduce((total, item) => 
      total + ('precioVenta' in item ? item.precioVenta * item.cantidad : item.precioPromocional * item.cantidad), 0).toFixed(2);
  };

  const handleSubmit = () => {
    setIsOpen(false);
    navigate('/carrito');
  };

  return (
    <div style={{ position: 'fixed', right: '20px', top: '20px', width: '250px', border: '1px solid #ddd', padding: '10px', backgroundColor: 'white', zIndex: 1000 }}>
      <Button onClick={() => setIsOpen(!isOpen)} style={{ width: '100%' }}>
        {isOpen ? 'Cerrar Carrito' : 'Abrir Carrito'}
      </Button>
      {isOpen && (
        <div style={{ maxHeight: '500px', overflowY: 'auto', paddingTop: '10px' }}>
          <h2>Carrito</h2>
          {cart.length === 0 ? (
            <p>El carrito está vacío</p>
          ) : (
            <>
              {cart.map((item) => (
                <Card key={item.id} style={{ marginBottom: '10px' }}>
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
                    <div>Subtotal: ${calcularSubtotal('precioVenta' in item ? item.precioVenta : item.precioPromocional, item.cantidad)}</div>
                  </Card.Body>
                </Card>
              ))}
              <div style={{ fontWeight: 'bold', marginTop: '10px' }}>
                Total: ${calcularTotal()}
              </div>
              <Button variant="success" style={{ marginTop: '10px', width: '100%' }} onClick={handleSubmit}>
                Realizar Compra
              </Button>
            </>
          )}
        </div>
      )}
    </div>
  );
};

export default CarritoSidebar;