import React from 'react';
import { Button, Card } from 'react-bootstrap';
import { useCart } from '../context/CartContext';

type ArticuloCard = {
  id: number;
  denominacion: string;
  precioVenta: number;
  descripcion: string;
  imagenes: { id: number, url: string }[];
  stock: number;
};

const CardArticulo: React.FC<ArticuloCard> = ({ id, denominacion, precioVenta, descripcion, imagenes, stock }) => {
  const { cart, addToCart } = useCart();
  const cartItem = cart.find(item => item.id === id && item.tipo === 'articulo');
  const isStockDepleted = stock <= 0 || (cartItem && cartItem.cantidad >= stock);

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
        <hr />
        <div style={{ textAlign: 'center' }}>
          <a href={`/detalle/${id}`}>
            <Button variant='info' className='mb-3'>Ver Detalle</Button>
          </a>
          <Button
            variant={isStockDepleted ? "danger" : "primary"}
            onClick={() => addToCart({ id, tipo: 'articulo', denominacion, precioVenta, descripcion, url: imagenes[0]?.url, cantidad: 1, imagenes, stock })}
            disabled={isStockDepleted}
          >
            {isStockDepleted ? "No hay stock" : "Añadir al carrito"}
          </Button>
        </div>
      </Card.Body>
    </Card>
  );
};

export default CardArticulo;
