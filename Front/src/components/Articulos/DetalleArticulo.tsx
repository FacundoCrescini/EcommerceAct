import { useContext } from 'react';
import { useNavigate, useParams } from 'react-router-dom'
import ArticulosContext from '../context/ArticulosContext';
import { Button, Card, Carousel } from 'react-bootstrap';
import { useCart } from '../context/CartContext';

type ArticuloCard = {
    id: number;
    denominacion: string;
    precioVenta: number;
    descripcion: string;
    imagenes: { id: number, url: string }[];
    stock: number;
  };

  type ImagenArticulo = {
    id: number;
    url: string;
  };

const DetalleArticulo = () => {
    const {id} = useParams();
    const { articulos, articulosInsumo } = useContext(ArticulosContext);
    const { cart, addToCart } = useCart();

    const buscarArticuloPorId = (id, array) => {
        return array.find(item => item.id === parseInt(id));
    }

    const articulo = buscarArticuloPorId(id, articulos) || buscarArticuloPorId(id, articulosInsumo);
    //console.log("Articulo",articulo);

    if (!articulo) {
        return <div>No se encontró el artículo</div>;
    }
    

  return (
    <div style={{display:'flex',flexDirection:'column',justifyContent:'center',alignItems:'center'}}>
        <div  style={{textAlign:'start',width:'100%',padding:'20px'}}>
            <div style={{width:'80px'}}>
                <a href="/">
                <Button variant='info'>Volver</Button>
                </a>
            </div>
        </div>
        
        <Card style={{ width: '80rem',marginTop:'20px' }}>
            <div style={{padding:'20px',display:'flex',justifyContent:'center',alignItems:'center'}}>

            
        <Carousel>
        {articulo.imagenes.map((imagen, index) => (
                        <Carousel.Item key={index}>
                            <img src={imagen.url} alt="" style={{ maxWidth: '400px' }} />
                        </Carousel.Item>
                    ))}
      </Carousel>
      </div>

      <Card.Body>
        <Card.Title>{articulo.denominacion}</Card.Title>
        <Card.Subtitle className="mb-2 text-muted">${articulo.precioVenta}</Card.Subtitle>
        <Card.Text>
         {articulo.descripcion}
        </Card.Text>
        <hr />
        {/*<Button variant="primary">Añadir al carrito</Button>*/}
      </Card.Body>
    </Card>
    </div>
  )
}

export default DetalleArticulo
