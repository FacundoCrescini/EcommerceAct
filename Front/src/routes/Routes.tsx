import React from "react";
import { Routes, Route } from "react-router-dom";
import Inicio from "../components/Inicio/Inicio";
import Carrito from "../components/Carrito/Carrito";
import MainLayout from "../MainLayout";
import Pedidos from "../components/Pedidos/Pedidos";
import Login from "../components/Login/Login";
import { RutaPrivada } from "../assets/controlAcceso/RutaPrivada";
import RolUsuario from "../assets/controlAcceso/RolUsuario";
import GestionUsuarios from "../components/GestionUsuarios/GestionUsuarios";
import Charts from "../components/Charts/Charts";

const Rutas: React.FC = () => {
  return (
    <Routes>
      <Route path="/login" element={<Login />} />
      <Route path="/" element={<MainLayout />}>
        <Route index element={<Inicio />} />
        <Route path="/carrito" element={<RutaPrivada><Carrito /></RutaPrivada>} />
        <Route path="/pedidos" element={
          <RolUsuario rol="admin">
            <Pedidos />
          </RolUsuario>
        } />
        <Route path="/gestion-usuarios" element={
          <RolUsuario rol="admin">
            <GestionUsuarios />
          </RolUsuario>
        } />
          <Route path="/charts" element={
          <RolUsuario rol="admin">
            <Charts></Charts>
          </RolUsuario>
        } />
      </Route>
    </Routes>
  );
};

export default Rutas;
