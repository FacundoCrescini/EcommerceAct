import React from "react";

import NavBar from "./components/NavBar/NavBar";
import { CartProvider } from "./components/context/CartContext";
import Rutas from "./routes/Routes";
import { BrowserRouter } from "react-router-dom";


function App() {
  return (
    <CartProvider>
      <BrowserRouter>
        <NavBar />
        <Rutas />
      </BrowserRouter>
    </CartProvider>
  );
}

export default App;
