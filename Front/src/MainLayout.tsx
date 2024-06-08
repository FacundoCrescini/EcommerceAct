import React from 'react';
import { Outlet } from 'react-router-dom';
import CarritoSidebar from './components/Carrito/CarritoSideBar';


const MainLayout: React.FC = () => {
  return (
    <div style={{ display: 'flex' }}>
      <div style={{ flex: 1 }}>
        <Outlet />
      </div>
      <CarritoSidebar />
    </div>
  );
};

export default MainLayout;
