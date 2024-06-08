// Rutas.tsx
import React from "react";
import { Routes, Route } from "react-router-dom";
import Inicio from "../components/Inicio/Inicio";
import Carrito from "../components/Carrito/Carrito";
import MainLayout from "../MainLayout";
import Pedidos from "../components/Pedidos/Pedidos";

const Rutas: React.FC = () => {
  return (
    <Routes>
      <Route path="/" element={<MainLayout />}>
        <Route index element={<Inicio />} />
        <Route path="/carrito" element={<Carrito />} />
        <Route path="/pedidos" element={<Pedidos />} /> {/* Nueva ruta */}
      </Route>
    </Routes>
  );
};

export default Rutas;
