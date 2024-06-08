import React, { useEffect, useState } from 'react';
import { Button, Card, Form } from 'react-bootstrap';
import { useCart } from '../context/CartContext';
import './styles.css'; // Importa el archivo CSS

type Categoria = {
  id: number;
  denominacion: string;
};

type ImagenArticulo = {
  id: number;
  url: string;
};

type Articulo = {
  id: number;
  denominacion: string;
  precioVenta: number;
  descripcion: string;
  imagenes: ImagenArticulo[];
  categoria: Categoria;
};

const Inicio = () => {
  const [categorias, setCategorias] = useState<Categoria[]>([]);
  const [articulos, setArticulos] = useState<Articulo[]>([]);
  const [categoriaSeleccionada, setCategoriaSeleccionada] = useState<number | null>(null);
  const [filtro, setFiltro] = useState<string>('');
  const { addToCart } = useCart();

  useEffect(() => {
    getCategorias();
    getArticulos();
  }, []);

  const getCategorias = async () => {
    const response = await fetch('http://localhost:8080/categoria', {
      method: 'GET',
      headers: {
        'Content-type': 'application/json',
        'Access-Control-Allow-Origin': '*',
      },
      mode: 'cors',
    });
    const data = await response.json();
    setCategorias(data);
  };

  const getArticulos = async () => {
    const response = await fetch('http://localhost:8080/ArticuloManufacturado', {
      method: 'GET',
      headers: {
        'Content-type': 'application/json',
        'Access-Control-Allow-Origin': '*',
      },
      mode: 'cors',
    });
    const data = await response.json();
    setArticulos(data);
  };

  const handleCategoriaChange = (event: React.ChangeEvent<HTMLSelectElement>) => {
    const categoriaId = parseInt(event.target.value);
    setCategoriaSeleccionada(categoriaId);
  };

  const handleFiltroChange = (event: React.ChangeEvent<HTMLInputElement>) => {
    setFiltro(event.target.value);
  };

  const articulosFiltrados = articulos.filter(
    (articulo) =>
      (categoriaSeleccionada === null || articulo.categoria.id === categoriaSeleccionada) &&
      articulo.denominacion.toLowerCase().includes(filtro.toLowerCase())
  );

  console.log('Articulos Filtrados:', articulosFiltrados);

  return (
    <div style={{ padding: '20px' }}>
      <h2>El Buen Sabor</h2>
      <Form.Group>
        <Form.Label>Filtrar por Categoría</Form.Label>
        <Form.Control as="select" onChange={handleCategoriaChange} defaultValue="">
          <option value="">Todas las Categorías</option>
          {categorias.map((categoria) => (
            <option key={categoria.id} value={categoria.id}>
              {categoria.denominacion}
            </option>
          ))}
        </Form.Control>
      </Form.Group>
      <Form.Group>
        <Form.Label>Buscar Artículo</Form.Label>
        <Form.Control type="text" placeholder="Buscar artículo" value={filtro} onChange={handleFiltroChange} />
      </Form.Group>
      <div className="col-12 row" style={{ display: 'flex', flexDirection: 'row', flexWrap: 'wrap', justifyContent: 'center' }}>
        {articulosFiltrados.length !== 0 ? (
          articulosFiltrados.map((articulo) => (
            <Card key={articulo.id} style={{ width: '18rem', margin: '10px' }}>
              <Card.Img 
                variant="top" 
                src={articulo.imagenes.length > 0 ? articulo.imagenes[0].url : 'https://via.placeholder.com/150'}
                onError={(e) => {
                  e.currentTarget.src = 'https://via.placeholder.com/150'; // URL de imagen de reserva si la principal falla
                }} 
                alt={articulo.denominacion}
                className="card-img-top" // Aplicar la clase CSS
              />
              <Card.Body>
                <Card.Title>{articulo.denominacion}</Card.Title>
                <Card.Subtitle>${articulo.precioVenta}</Card.Subtitle>
                <Card.Text>{articulo.descripcion}</Card.Text>
                <Button variant="primary" onClick={() => addToCart(articulo)}>
                  Añadir al carrito
                </Button>
              </Card.Body>
            </Card>
          ))
        ) : (
          <h3>No hay Articulos</h3>
        )}
      </div>
    </div>
  );
};

export default Inicio;
