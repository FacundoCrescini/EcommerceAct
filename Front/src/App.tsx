import React from "react";
import { BrowserRouter } from "react-router-dom";
import NavBar from "./components/NavBar/NavBar";
import { CartProvider } from "./components/context/CartContext";
import { ArticulosProvider } from "./components/context/ArticulosContext";
import Rutas from "./routes/Routes";

function App() {
  return (
    <ArticulosProvider>
      <CartProvider>
        <BrowserRouter>
          <NavBar />
          <Rutas />
        </BrowserRouter>
      </CartProvider>
    </ArticulosProvider>
  );
}

export default App;
