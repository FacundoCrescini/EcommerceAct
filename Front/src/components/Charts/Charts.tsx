import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { Chart } from 'react-google-charts';
import 'bootstrap/dist/css/bootstrap.min.css';
import './Charts.css';

const Charts = () => {
  const [pedidosPorFormaPago, setPedidosPorFormaPago] = useState([]);
  const [pedidosPorMes, setPedidosPorMes] = useState([]);
  const [pedidosPorArticulo, setPedidosPorArticulo] = useState([]);

  useEffect(() => {
    const fetchPedidosPorFormaPago = async () => {
      const response = await axios.get('http://localhost:8080/api/pedidos/por-forma-pago');
      setPedidosPorFormaPago(response.data);
    };

    const fetchPedidosPorMes = async () => {
      const response = await axios.get('http://localhost:8080/api/pedidos/por-mes');
      setPedidosPorMes(response.data);
    };

    const fetchPedidosPorArticulo = async () => {
      const response = await axios.get('http://localhost:8080/api/pedidos/por-articulo');
      setPedidosPorArticulo(response.data);
    };

    fetchPedidosPorFormaPago();
    fetchPedidosPorMes();
    fetchPedidosPorArticulo();
  }, []);

  const generarGraficoPorFormaPago = () => {
    const data = [['Forma de Pago', 'Cantidad'], ...pedidosPorFormaPago.map(item => [item.formaPago, item.cantidad])];
    return (
      <div className="chart">
        <div className="chart-title">Pedidos por Forma de Pago</div>
        <div className="chart-content">
          <Chart
            width={'500px'}
            height={'300px'}
            chartType="PieChart"
            loader={<div>Cargando Gráfico</div>}
            data={data}
            options={{ title: 'Pedidos por Forma de Pago' }}
          />
        </div>
      </div>
    );
  };

  const generarGraficoPorMes = () => {
    const data = [['Mes', 'Cantidad'], ...pedidosPorMes.map(item => [item.mes, item.cantidad])];
    return (
      <div className="chart">
        <div className="chart-title">Pedidos por Mes</div>
        <div className="chart-content">
          <Chart
            width={'800px'}
            height={'400px'}
            chartType="ColumnChart"
            loader={<div>Cargando Gráfico</div>}
            data={data}
            options={{
              title: 'Pedidos por Mes',
              legend: { position: 'none' },
              vAxis: { title: 'Cantidad' },
              hAxis: { title: 'Mes' },
            }}
          />
        </div>
      </div>
    );
  };

  const generarGraficoPorArticulo = () => {
    const data = [['Artículo', 'Cantidad'], ...pedidosPorArticulo.map(item => [item.articulo, item.cantidad])];
    return (
      <div className="chart">
        <div className="chart-title">Pedidos por Artículo</div>
        <div className="chart-content">
          <Chart
            width={'800px'}
            height={'400px'}
            chartType="PieChart"
            loader={<div>Cargando Gráfico</div>}
            data={data}
            options={{ title: 'Pedidos por Artículo' }}
          />
        </div>
      </div>
    );
  };

  return (
    <div className="charts-container">
      {generarGraficoPorFormaPago()}
      {generarGraficoPorMes()}
      {generarGraficoPorArticulo()}
    </div>
  );
};

export default Charts;
