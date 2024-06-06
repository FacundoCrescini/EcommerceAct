import React from "react";
import { BrowserRouter, Route, Routes } from "react-router-dom";
import Inicio from "../components/Inicio/Inicio";

const Rutas: React.FC = () => {
  return (
    <>
      <BrowserRouter>
        <Routes>
          <Route path="*" element={<Inicio />} />
          <Route path="/:categoria" element={<Inicio />} />
        </Routes>
      </BrowserRouter>
    </>
  );
};

export default Rutas;
