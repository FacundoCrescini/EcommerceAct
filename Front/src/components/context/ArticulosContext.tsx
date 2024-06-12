import React, { createContext, useContext, useState, useEffect, ReactNode } from 'react';

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

type ArticulosContextType = {
  articulos: Articulo[];
  articulosInsumo: ArticuloInsumo[];
};

const ArticulosContext = createContext<ArticulosContextType | undefined>(undefined);

export const ArticulosProvider: React.FC<{ children: ReactNode }> = ({ children }) => {
  const [articulos, setArticulos] = useState<Articulo[]>([]);
  const [articulosInsumo, setArticulosInsumo] = useState<ArticuloInsumo[]>([]);

  useEffect(() => {
    const fetchArticulos = async () => {
      const response = await fetch('http://localhost:8080/ArticuloManufacturado');
      const data = await response.json();
      setArticulos(data);
    };

    const fetchArticulosInsumo = async () => {
      const response = await fetch('http://localhost:8080/ArticuloInsumo');
      const data = await response.json();
      setArticulosInsumo(data);
    };

    fetchArticulos();
    fetchArticulosInsumo();
  }, []);

  return (
    <ArticulosContext.Provider value={{ articulos, articulosInsumo }}>
      {children}
    </ArticulosContext.Provider>
  );
};

export const useArticulos = () => {
  const context = useContext(ArticulosContext);
  if (!context) {
    throw new Error('useArticulos must be used within an ArticulosProvider');
  }
  return context;
};
 
export default ArticulosContext;