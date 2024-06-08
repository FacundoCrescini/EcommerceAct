import React from "react";
import { BrowserRouter } from "react-router-dom";
import NavBar from "./components/NavBar/NavBar";
import { CartProvider } from "./components/context/CartContext";
import Rutas from "./routes/Routes";


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
