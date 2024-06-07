import React, { useEffect, useState } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import { Button } from 'react-bootstrap';
import CardArticulo from '../Articulos/CardArticulo';

type Articulo = {
  id: number;
  denominacion: string;
  precioVenta: number;
  descripcion: string;
  url: string;
  categoria: {
    id: number;
  };
};

const ListaArticulos = () => {
  const { categoriaId } = useParams<{ categoriaId: string }>();
  const [articulos, setArticulos] = useState<Articulo[]>([]);
  const [filtro, setFiltro] = useState<string>('');
  const navigate = useNavigate();

  const getArticulos = async () => {
    let datos: Articulo[] = await getArticulosFetchJSON();
    setArticulos(datos);
  };

  async function getArticulosFetchJSON() {
    const urlServer = 'http://localhost:8080/ArticuloManufacturado';

    const response = await fetch(urlServer, {
      method: 'GET',
      headers: {
        'Content-type': 'application/json',
        'Access-Control-Allow-Origin': '*',
      },
      mode: 'cors',
    });
    return await response.json();
  }

  useEffect(() => {
    getArticulos();
  }, []);

  const handleInputChange = (event: React.ChangeEvent<HTMLInputElement>) => {
    setFiltro(event.target.value);
  };

  const articulosFiltrados = articulos.filter(
    (articulo) =>
      articulo.categoria.id === parseInt(categoriaId || '0') &&
      articulo.denominacion.toLowerCase().includes(filtro.toLowerCase())
  );

  return (
    <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', gap: '50px', padding: '20px' }}>
      <div className="col-12">
        <Button variant="outline-info" onClick={() => navigate(-1)}>
          Volver
        </Button>
      </div>
      <img style={{ borderRadius: '50%' }} src="https://img.pystatic.com/restaurants/sangucheria-buen-sabor.jpg" alt="" />

      <h2>El Buen Sabor</h2>

      <input
        style={{ width: '500px' }}
        className="form-control"
        type="text"
        placeholder="Buscar articulo"
        value={filtro}
        onChange={handleInputChange}
      />

      <div className="col-12 row" style={{ border: '1px solid black', padding: '30px', display: 'flex', flexDirection: 'row', flexWrap: 'wrap', justifyContent: 'center' }}>
        {articulosFiltrados.length !== 0 ? (
          articulosFiltrados.map((articulo: Articulo) => (
            <CardArticulo
              key={articulo.id}
              id={articulo.id}
              denominacion={articulo.denominacion}
              precioVenta={articulo.precioVenta}
              descripcion={articulo.descripcion}
              url="https://cdn.icon-icons.com/icons2/2568/PNG/512/images_picture_icon_153719.png"
            />
          ))
        ) : (
          <h3>No hay Articulos</h3>
        )}
      </div>
    </div>
  );
};

export default ListaArticulos;
