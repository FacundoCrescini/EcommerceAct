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
import Cocina from "../components/Pedidos/Cocina";
import Caja from "../components/Pedidos/Caja";
import HistorialPedidos from "../components/HistorialPedidos/HistorialPedidos";
import DetalleArticulo from "../components/Articulos/DetalleArticulo";
import DetallePromocion from "../components/Promocion/DetallePromocion";
import Success from "../components/Carrito/Success";

const Rutas: React.FC = () => {
  return (
    <Routes>
      
      <Route path="/login" element={<Login />} />
      <Route path="/" element={<MainLayout />}>
      <Route path="/success" element={<Success></Success>}></Route>
        <Route index element={<Inicio />} />

        <Route path="/detalle">
          <Route path=":id" element={<DetalleArticulo/>}/>
        </Route>
        <Route path="/promocion">
          <Route path=":id" element={<DetallePromocion/>}/>
        </Route>
        <Route path="/carrito" element={<RutaPrivada><Carrito /></RutaPrivada>} />
        <Route path="/h" element={<RutaPrivada><HistorialPedidos></HistorialPedidos></RutaPrivada>} />

      
        
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
        <Route path="/cocina" element={
          <RolUsuario rol="admin">
            <Cocina></Cocina>
          </RolUsuario>
        } />
        <Route path="/caja" element={
          <RolUsuario rol="admin">
            <Caja></Caja>
          </RolUsuario>
        } />
      
      </Route>
    </Routes>
  );
};

export default Rutas;
