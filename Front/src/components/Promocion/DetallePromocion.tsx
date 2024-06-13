import { useContext, useEffect, useState } from 'react';
import { useNavigate, useParams } from 'react-router-dom'
import ArticulosContext from '../context/ArticulosContext';
import { Button, Card, Carousel } from 'react-bootstrap';

type Promocion = {
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


const DetallePromocion = () => {
    const {id} = useParams();
    const [promocion, setPromocion] = useState<Promocion>();

    const getPromocion = async () => {
        const response = await fetch('http://localhost:8080/promociones/'+ id, {
          method: 'GET',
          headers: {
            'Content-type': 'application/json',
            'Access-Control-Allow-Origin': '*',
          },
          mode: 'cors',
        });
        const data = await response.json();
        console.log("DATA",data);
        setPromocion(data);
      };

      useEffect(() => {
        getPromocion();
      }, []);


  return (
    <div style={{display:'flex',flexDirection:'column',justifyContent:'center',alignItems:'center'}}>
        <div  style={{textAlign:'start',width:'100%',padding:'20px'}}>
            <div style={{width:'80px'}}>
                <a href="/">
                <Button variant='info'>Volver</Button>
                </a>
            </div>
        </div>
        
        <Card style={{ width: '30rem',marginTop:'20px' }}>
            <div style={{padding:'20px',display:'flex',justifyContent:'center',alignItems:'center'}}>

            
        <Carousel>
        {/*promocion.imagenes.map((imagen, index) => (
                        <Carousel.Item key={index}>
                            <img src={imagen.url} alt="" style={{ maxWidth: '300px' }} />
                        </Carousel.Item>
                    ))*/}
        <img src="https://t3.ftcdn.net/jpg/00/48/29/92/360_F_48299241_I5A7IhGjjSuHYZXuTWhsjvNF2rhIhCMp.jpg" alt="" style={{maxWidth:'300px'}}/>
      </Carousel>
      </div>

      <Card.Body>
        <Card.Title>{promocion?.tipoPromocion}: {promocion?.denominacion}</Card.Title>
        <Card.Subtitle className="mb-2 text-muted">${promocion?.precioPromocional}</Card.Subtitle>
        <Card.Text>
            Desde: {promocion?.fechaDesde} - Hasta: {promocion?.fechaHasta} 
            <br />
            Solo de: {promocion?.horaDesde} - {promocion?.horaHasta} 
        </Card.Text>
        <hr />
        <Button variant="primary">Añadir al carrito</Button>
      </Card.Body>
    </Card>
    </div>
  )
}

export default DetallePromocion
