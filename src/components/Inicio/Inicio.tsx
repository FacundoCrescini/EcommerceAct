import { useEffect, useState } from "react";
import CardCategoria from "../CardCategoria/CardCategoria";

type Categoria = {
  denominacion: string;
  url: string;
};
const Inicio = () => {
  const [categorias, setCategorias] = useState<Categoria[]>([]);

  const getCategorias = async () => {
    let datos: Categoria[] = await getCategoriasFetchJSON();
    setCategorias(datos);
  };

  async function getCategoriasFetchJSON() {
    const urlServer = "http://localhost:8080/categoria";
    const response = await fetch(urlServer, {
      method: "GET",
      headers: {
        "Content-type": "application/json",
        "Access-Control-Allow-Origin": "*",
      },
      mode: "cors",
    });
    console.log(response);
    return await response.json();
  }

  useEffect(() => {
    getCategorias();
  }, []);

  return (
    <div
      style={{
        display: "flex",
        flexDirection: "column",
        alignItems: "center",
        gap: "50px",
        padding: "20px",
      }}
    >
      <img
        style={{ borderRadius: "50%" }}
        src="https://img.pystatic.com/restaurants/sangucheria-buen-sabor.jpg"
        alt=""
      />

      <p>El Buen Sabor</p>

      <input
        style={{ width: "500px" }}
        className="form-control"
        type="text"
        placeholder="Buscar categoría"
      />

      <div className="col-12 row" style={{ border: "1px solid black" }}>
        {categorias.map((categoria: Categoria) => (
          <CardCategoria
            denominacion={categoria.denominacion}
            url={categoria.url}
          ></CardCategoria>
        ))}
        <CardCategoria
          denominacion={"categoria1"}
          url={
            "https://conceptodefinicion.de/wp-content/uploads/2016/04/Categor%C3%ADa2.jpg"
          }
        ></CardCategoria>
      </div>
    </div>
  );
};

export default Inicio;
