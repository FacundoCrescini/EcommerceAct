import React from 'react';
import { Button, Card } from 'react-bootstrap';
import { useCart } from '../context/CartContext';

type PromocionCard = {
  id: number;
  denominacion: string;
  fechaDesde: string;
  fechaHasta: string;
  horaDesde: string;
  horaHasta: string;
  descripcionDescuento: string;
  precioPromocional: number;
  tipoPromocion: string;
  imagenes: { id: number, url: string }[];
};

const CardPromocion: React.FC<PromocionCard> = ({
  id,
  denominacion,
  fechaDesde,
  fechaHasta,
  horaDesde,
  horaHasta,
  descripcionDescuento,
  precioPromocional,
  tipoPromocion,
  imagenes,
}) => {
  const { addToCart } = useCart();

  return (
    <Card className="card-item">
      <Card.Img
        variant="top"
        src={imagenes.length > 0 ? imagenes[0].url : 'https://via.placeholder.com/150'}
        onError={(e) => {
          e.currentTarget.src = 'https://via.placeholder.com/150';
        }}
        alt={denominacion}
        className="card-img-top"
      />
      <hr />
      <Card.Body>
        <Card.Title style={{ textAlign: 'center' }}>{denominacion}</Card.Title>
        <Card.Subtitle className="mb-2 text-muted">${precioPromocional}</Card.Subtitle>
        <Card.Text>{descripcionDescuento}</Card.Text>
        <div style={{ textAlign: 'center' }}>
          <hr />
          <a href={`/promocion/${id}`}>
            <Button variant='info' className='mb-3'>Ver Detalle</Button>
          </a>
          <Button
            variant="primary"
            onClick={() =>
              addToCart({
                id,
                tipo: 'promocion',
                denominacion,
                fechaDesde,
                fechaHasta,
                horaDesde,
                horaHasta,
                descripcionDescuento,
                precioPromocional,
                tipoPromocion,
                articulos: null,
                cantidad: 1,
                imagenes,
              })
            }
          >
            Añadir al carrito
          </Button>
        </div>
      </Card.Body>
    </Card>
  );
};

export default CardPromocion;
