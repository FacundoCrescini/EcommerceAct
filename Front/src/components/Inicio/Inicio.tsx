import React, { useEffect, useState } from 'react';
import { Form } from 'react-bootstrap';
import { useCart } from '../context/CartContext';
import './styles.css';
import CardArticulo from '../Articulos/CardArticulo';
import CardPromocion from '../Promocion/CardPromocion';

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
  stock: number; // Actualización aquí
};

type ArticuloInsumo = {
  id: number;
  denominacion: string;
  precioVenta: number;
  unidadMedida: {
    id: number;
    denominacion: string;
  };
  precioCompra: number;
  stockActual: number;
  stockMaximo: number;
  esParaElaborar: boolean;
  imagenes: ImagenArticulo[];
  categoria: Categoria;
};

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
  articulos: Articulo[] | null;
  imagenes: { id: number, url: string }[];
};

const Inicio = () => {
  
  const [articulos, setArticulos] = useState<Articulo[]>([]);
  const [articulosInsumo, setArticulosInsumo] = useState<ArticuloInsumo[]>([]);
  const [promociones, setPromociones] = useState<Promocion[]>([]);
  
  
  const { addToCart } = useCart();

  useEffect(() => {
    getCategorias();
    getArticulos();
    getArticulosInsumo();
    getPromociones();
  }, []);

  const getCategorias = async () => {
    const response = await fetch('http://localhost:8080/categoria/NoInsumo', {
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
    const response = await fetch('http://localhost:8080/ArticuloManufacturado/Ecommerse', {
      method: 'GET',
      headers: {
        'Content-type': 'application/json',
        'Access-Control-Allow-Origin': '*',
      },
      mode: 'cors',
    });
    const data = await response.json();
    setArticulos((prevArticulos) => {
      const newArticulos = [...prevArticulos, ...data];
      return [...new Map(newArticulos.map(item => [item.id, item])).values()];
    });
  };

  const getArticulosInsumo = async () => {
    const response = await fetch('http://localhost:8080/ArticuloInsumo/noElaborar', {
      method: 'GET',
      headers: {
        'Content-type': 'application/json',
        'Access-Control-Allow-Origin': '*',
      },
      mode: 'cors',
    });
    const data = await response.json();
    setArticulosInsumo((prevArticulosInsumo) => {
      const newArticulosInsumo = [...prevArticulosInsumo, ...data];
      return [...new Map(newArticulosInsumo.map(item => [item.id, item])).values()];
    });
  };

  const getPromociones = async () => {
    const response = await fetch('http://localhost:8080/promociones', {
      method: 'GET',
      headers: {
        'Content-type': 'application/json',
        'Access-Control-Allow-Origin': '*',
      },
      mode: 'cors',
    });
    const data = await response.json();
    const promocionesConImagenes = data.map((promo: Promocion) => ({
      ...promo,
      imagenes: [{ id: 1, url: 'https://t3.ftcdn.net/jpg/00/48/29/92/360_F_48299241_I5A7IhGjjSuHYZXuTWhsjvNF2rhIhCMp.jpg' }],
    }));
    setPromociones(promocionesConImagenes);
  };

  const [filtro, setFiltro] = useState<string>('');
  const [categorias, setCategorias] = useState<Categoria[]>([]);
  const [categoriaSeleccionada, setCategoriaSeleccionada] = useState<number | null>(null);

  const handleCategoriaChange = (event: React.ChangeEvent<HTMLSelectElement>) => {
    const value = event.target.value;
    //Todas las categorias = ""
    const categoriaId = value === "" ? null : parseInt(value);
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

  const articulosInsumoFiltrados = articulosInsumo.filter(
    (articuloInsumo) =>
      (categoriaSeleccionada === null || articuloInsumo.categoria.id === categoriaSeleccionada) &&
      articuloInsumo.denominacion.toLowerCase().includes(filtro.toLowerCase())
  );

  return (
    <div className="container" style={{textAlign:'center'}}>
      <h1>El Buen Sabor</h1>
      <img
        src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAve-HxyZKbjAq4gWGSTF2yg5Z7eX8W4G5GQ&s"
        alt="El Buen Sabor"
        className="header-image"
      />
      <div className="filter-container">
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
      </div>
      <hr />

      <h2 style={{ textAlign: 'center', marginTop: '20px' }}>Promociones</h2>
      <div className="card-container">
        {promociones.map((promocion) => (
          <CardPromocion key={promocion.id} {...promocion} />
        ))}
      </div>

      <h2 style={{ textAlign: 'center', marginTop: '20px' }}>Articulos</h2>
      <div className="card-container">
        {articulosFiltrados.length !== 0 ? (
          articulosFiltrados.map((articulo) => (
            <CardArticulo key={articulo.id} {...articulo} />
          ))
        ) : (
          <h3>No hay Articulos</h3>
        )}
        {articulosInsumoFiltrados.length !== 0 ? (
          articulosInsumoFiltrados.map((articuloInsumo) => (
            <CardArticulo key={articuloInsumo.id} {...articuloInsumo} />
          ))
        ) : (
          <h3>No hay Articulos Insumo</h3>
        )}
      </div>
    </div>
  );
};

export default Inicio;
