import { Card } from "react-bootstrap";

type Cat = {
  denominacion: string;
  url: string;
};

const CardCategoria = (categoria: Cat) => {
  return (
    <div style={{ padding: "30px" }}>
      <a href={`/${categoria.denominacion}`}>
        <Card style={{ width: "18rem" }}>
          <Card.Img variant="top" src={categoria.url} />
          <Card.Body>
            <Card.Title style={{ textAlign: "center" }}>
              {categoria.denominacion}
            </Card.Title>
          </Card.Body>
        </Card>
      </a>
    </div>
  );
};

export default CardCategoria;
