import React, { ReactNode, useState } from 'react';
import { Navigate, Outlet } from 'react-router-dom';
import Usuario from '../../types/Usuario';

interface Props {
  rol: string;
  children: ReactNode;
}

const RolUsuario: React.FC<Props> = ({ rol, children }) => {
  const jsonUsuario = localStorage.getItem('usuario');
  const usuarioLogueado: Usuario | null = jsonUsuario ? JSON.parse(jsonUsuario) as Usuario : null;

  if (usuarioLogueado && usuarioLogueado.rol === rol) {
    return <>{children}</>;
  } else if (usuarioLogueado) {
    return <Navigate replace to="/" />;
  } else {
    return <Navigate replace to="/login" />;
  }
};

export default RolUsuario;
