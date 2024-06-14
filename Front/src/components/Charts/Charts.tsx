import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { Chart } from 'react-google-charts';
import 'bootstrap/dist/css/bootstrap.min.css';
import './Charts.css';

const Charts = () => {
  const [pedidosPorFormaPago, setPedidosPorFormaPago] = useState([]);
  const [pedidosPorMes, setPedidosPorMes] = useState([]);
  const [pedidosPorArticulo, setPedidosPorArticulo] = useState([]);
  const [fechaInicio, setFechaInicio] = useState('');
  const [fechaFin, setFechaFin] = useState('');

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

  const generarExcel = async () => {
    const email = JSON.parse(localStorage.getItem('usuario')).gmail; // Obtén el correo electrónico del usuario del localStorage
    try {
      const response = await axios.get('http://localhost:8080/api/pedidos/generarExcel', {
        params: {
          fechaInicio: fechaInicio,
          fechaFin: fechaFin,
          email: email // Añade el correo electrónico como parámetro
        }
      });

      if (response.status === 204) {
        alert('No hay pedidos entre las fechas dadas.');
      } else if (response.status === 200) {
        alert('El archivo Excel se ha enviado por correo electrónico.');
      }

    } catch (error) {
      console.error('Error generando Excel:', error);
    }
  };

  const generarExcelLocal = async () => {
    try {
      const response = await axios.get('http://localhost:8080/api/pedidos/generarExcelCompleto', {
        responseType: 'blob',
      });

      const url = window.URL.createObjectURL(new Blob([response.data]));
      const link = document.createElement('a');
      link.href = url;
      link.setAttribute('download', 'ReporteCompleto.xlsx');
      document.body.appendChild(link);
      link.click();
      document.body.removeChild(link);
    } catch (error) {
      console.error('Error descargando el archivo Excel:', error);
    }
  };

  const handleFechaInicioChange = (event) => {
    setFechaInicio(event.target.value);
  };

  const handleFechaFinChange = (event) => {
    setFechaFin(event.target.value);
  };

  return (
    <div className="charts-container">
      <div className="generar">
        <input type="date" value={fechaInicio} onChange={handleFechaInicioChange} />
        <input type="date" value={fechaFin} onChange={handleFechaFinChange} />
        <button onClick={generarExcel}>Generar Excel</button>
      </div>
      {generarGraficoPorFormaPago()}
      {generarGraficoPorMes()}
      {generarGraficoPorArticulo()}
      <div className="generar-local">
        <button onClick={generarExcelLocal}>Generar Excel con Datos del Local</button>
      </div>
    </div>
  );
};

export default Charts;
