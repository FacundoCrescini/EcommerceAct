// routes/Rutas.tsx
import React from "react";
import { Routes, Route } from "react-router-dom";
import Inicio from "../components/Inicio/Inicio";
import ListaArticulos from "../components/ListaAticulos/ListaArticulos";
import Carrito from "../components/Carrito/Carrito";

const Rutas: React.FC = () => {
  return (
    <Routes>
      <Route path="/" element={<Inicio />} />
      <Route path="/:categoriaId" element={<ListaArticulos />} />
      <Route path="/carrito" element={<Carrito />} />
    </Routes>
  );
};

export default Rutas;
