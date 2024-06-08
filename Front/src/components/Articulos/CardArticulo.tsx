import React from 'react';
import { Button, Card } from 'react-bootstrap';
import { useCart } from '../context/CartContext';

type ArticuloCard = {
  id: number;
  denominacion: string;
  precioVenta: number;
  descripcion: string;
  url: string;
};

const CardArticulo: React.FC<ArticuloCard> = ({ id, denominacion, precioVenta, descripcion, url }) => {
  const { addToCart } = useCart();

  return (
    <div>
      <Card style={{ width: '18rem' }}>
        <Card.Img 
          variant="top" 
          src={url} 
          onError={(e) => {
            e.currentTarget.src = 'https://via.placeholder.com/150'; // URL de imagen de reserva si la principal falla
          }} 
          alt={denominacion} 
        />
        <hr />
        <Card.Body>
          <Card.Title style={{ textAlign: 'center' }}>{denominacion}</Card.Title>
          <Card.Subtitle className="mb-2 text-muted">${precioVenta}</Card.Subtitle>
          <Card.Text>{descripcion}</Card.Text>
          <div style={{ textAlign: 'center' }}>
            <Button variant="primary" onClick={() => addToCart({ id, denominacion, precioVenta, descripcion, url })}>
              Añadir al carrito
            </Button>
          </div>
        </Card.Body>
      </Card>
    </div>
  );
};

export default CardArticulo;
