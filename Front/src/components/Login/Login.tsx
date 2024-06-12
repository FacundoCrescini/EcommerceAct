import React, { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import './Login.css'; // Importa el archivo de estilos CSS

interface Usuario {
  gmail: string;
  usuario: string;
  clave: string;
  rol?: string;
  id?: number;
}

const Login = () => {
  const navigate = useNavigate();
  const [usuario, setUsuario] = useState<Usuario>({ gmail: '', usuario: '', clave: '' });
  const [txtValidacion, setTxtValidacion] = useState<string>("");
  const [isRegistering, setIsRegistering] = useState<boolean>(false);

  useEffect(() => {
    localStorage.removeItem("usuario");
  }, []);

  const handleRegister = async () => {
    if (!usuario.usuario || !usuario.gmail) {
      setTxtValidacion("Ingrese el nombre de usuario y el gmail");
      return;
    }
    if (!usuario.clave) {
      setTxtValidacion("Ingrese la clave");
      return;
    }

    try {
      const response = await fetch("http://localhost:8080/auth/register", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          nombre: usuario.usuario,
          gmail: usuario.gmail,
          contraseña: usuario.clave,
        }),
      });

      if (!response.ok) {
        throw new Error("Error al registrar usuario");
      }

      const user = await response.json();
      setTxtValidacion("Usuario registrado exitosamente. Por favor, inicie sesión.");
      setIsRegistering(false);
    } catch (error) {
      console.error("Error al registrar usuario:", error);
      setTxtValidacion("Error al registrar usuario");
    }
  };

  const handleLogin = async () => {
    if (!usuario.gmail) {
      setTxtValidacion("Ingrese el gmail");
      return;
    }
    if (!usuario.clave) {
      setTxtValidacion("Ingrese la clave");
      return;
    }

    try {
      const response = await fetch("http://localhost:8080/auth/login", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          gmail: usuario.gmail,
          contraseña: usuario.clave,
        }),
      });

      if (!response.ok) {
        throw new Error("Error al autenticar usuario");
      }

      const user = await response.json();

      if (user) {
        localStorage.setItem("usuario", JSON.stringify(user));
        setUsuario(user);
        console.log(user);
        navigate("/", {
          replace: true,
          state: {
            logged: true,
            usuario: user,
          },
        });
        window.location.reload(); // Forzar recarga de la página
      } else {
        setTxtValidacion("Usuario y/o clave incorrectas");
      }
    } catch (error) {
      console.error("Error de autenticación:", error);
      setTxtValidacion("Error al autenticar usuario");
    }
  };

  return (
    <div className="login-container">
      <form className="login-form">
        <h2 className="login-title">{isRegistering ? "Registrar Cuenta" : "Iniciar Sesión"}</h2>
        {isRegistering && (
          <div className="form-group">
            <label htmlFor="txtUsuario" className="form-label">Usuario</label>
            <input
              type="text"
              id='txtUsuario'
              className="form-control"
              placeholder="Ingrese el nombre"
              value={usuario.usuario}
              onChange={e => setUsuario({ ...usuario, usuario: e.target.value })}
              onKeyDown={(e) => { if (e.key === "Enter") handleRegister(); }}
            />
          </div>
        )}
        <div className="form-group">
          <label htmlFor="txtGmail" className="form-label">Gmail</label>
          <input
            type="text"
            id='txtGmail'
            className="form-control"
            placeholder="Ingrese el gmail"
            value={usuario.gmail}
            onChange={e => setUsuario({ ...usuario, gmail: e.target.value })}
            onKeyDown={(e) => { if (e.key === "Enter") isRegistering ? handleRegister() : handleLogin(); }}
          />
        </div>
        <div className="form-group">
          <label htmlFor="txtClave" className="form-label">Clave</label>
          <input
            type="password"
            id='txtClave'
            className="form-control"
            placeholder="Ingrese la clave"
            value={usuario.clave}
            onChange={e => setUsuario({ ...usuario, clave: e.target.value })}
            onKeyDown={(e) => { if (e.key === "Enter") isRegistering ? handleRegister() : handleLogin(); }}
          />
        </div>
        <div className="form-group">
          <button onClick={isRegistering ? handleRegister : handleLogin} className="btn btn-success" type="button">
            {isRegistering ? "Crear Cuenta" : "Ingresar"}
          </button>
        </div>
        <div className="form-group">
          <button
            type="button"
            className="btn btn-link"
            onClick={() => setIsRegistering(!isRegistering)}
          >
            {isRegistering ? "¿Ya tiene cuenta? Iniciar sesión" : "Registrarse"}
          </button>
        </div>
        {txtValidacion && <p className="error-message">{txtValidacion}</p>}
      </form>
    </div>
  );
};

export default Login;
