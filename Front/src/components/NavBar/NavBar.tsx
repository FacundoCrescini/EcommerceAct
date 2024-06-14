import React, { useEffect, useState } from "react";
import { Navbar, Nav, NavDropdown, Container } from "react-bootstrap";
import { Link, useNavigate } from "react-router-dom";
import { useCart } from "../context/CartContext"; // Asegúrate de importar correctamente

interface User {
  usuario: string;
  rol: string;
}

const NavBar: React.FC = () => {
  const navigate = useNavigate();
  const { clearCart } = useCart(); // Obtener la función clearCart del contexto del carrito

  const [user, setUser] = useState<User | null>(null);

  useEffect(() => {
    const storedUser = localStorage.getItem("usuario");
    if (storedUser) {
      setUser(JSON.parse(storedUser));
    }
  }, []);

  const handleLogout = () => {
    localStorage.removeItem("usuario");
    localStorage.removeItem("cart"); // Asegurarse de que el carrito se elimine del localStorage
    clearCart(); // Limpiar el carrito usando el contexto
    setUser(null);
    navigate("/login");
  };

  return (
    <Navbar bg="light" expand="lg">
      <Container>
        <Navbar.Brand as={Link} to="/">El Buen Sabor</Navbar.Brand>
        <Navbar.Toggle aria-controls="basic-navbar-nav" />
        <Navbar.Collapse id="basic-navbar-nav">
          <Nav className="me-auto">
            <Nav.Link as={Link} to="/carrito">Carrito</Nav.Link>
            {user?.rol === "admin" && (
              <>
                
                <Nav.Link as={Link} to="/gestion-usuarios">Gestión de Usuarios</Nav.Link>
                <Nav.Link as={Link} to="/charts">Charts</Nav.Link>
                <Nav.Link as={Link} to="/caja">Caja</Nav.Link>
                <Nav.Link as={Link} to="/cocina">Cocina</Nav.Link>
              </>
            )}
          </Nav>
          {user && (
            <Nav className="ms-auto">
              <Nav.Link as={Link} to="/h">Mis pedidos</Nav.Link>
              <NavDropdown title={`Signed in as: ${user.nombre}`} id="user-dropdown">
                <NavDropdown.Item onClick={handleLogout}>Cerrar Sesión</NavDropdown.Item>
              </NavDropdown>
            </Nav>
          )}
        </Navbar.Collapse>
      </Container>
    </Navbar>
  );
};

export default NavBar;
