import React from 'react';
import { Button, Card } from 'react-bootstrap';
import { useCart } from '../context/CartContext';

type ArticuloCard = {
  id: number;
  denominacion: string;
  precioVenta: number;
  descripcion: string;
  imagenes: { id: number, url: string }[];
};

const CardArticulo: React.FC<ArticuloCard> = ({ id, denominacion, precioVenta, descripcion, imagenes }) => {
  const { addToCart } = useCart();

  return (
    <Card className="card-item">
      <Card.Img 
        variant="top" 
        src={imagenes.length > 0 ? imagenes[0].url : 'https://via.placeholder.com/150'}
        onError={(e) => {
          e.currentTarget.src = 'https://via.placeholder.com/150'; // URL de imagen de reserva si la principal falla
        }} 
        alt={denominacion} 
        className="card-img-top"
      />
      <hr />
      <Card.Body>
        <Card.Title style={{ textAlign: 'center' }}>{denominacion}</Card.Title>
        <Card.Subtitle className="mb-2 text-muted">${precioVenta}</Card.Subtitle>
        <Card.Text>{descripcion}</Card.Text>
        <div style={{ textAlign: 'center' }}>
          <Button variant="primary" onClick={() => addToCart({ id, tipo: 'articulo', denominacion, precioVenta, descripcion, url: imagenes[0]?.url, cantidad: 1, imagenes })}>
            Añadir al carrito
          </Button>
        </div>
      </Card.Body>
    </Card>
  );
};

export default CardArticulo;
