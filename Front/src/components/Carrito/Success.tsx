import React, { useEffect, useState } from 'react';
import axios from 'axios';
import './Success.css';

interface DetallePedidoDTO {
    id: number;
    cantidad: number;
    subTotal: number;
    articuloDenominacion: string;
}

interface FacturaDTO {
    id: number;
    fechaFacturacion: string;
    mpPaymentId: string;
    totalVenta: number;
    pagado: boolean;
}

interface PedidoDTO {
    id: number;
    estado: string;
    clienteNombre: string;
    detallePedidos: DetallePedidoDTO[];
    factura: FacturaDTO;
    horaEstimadaFinalizacion: string;
}

const Success: React.FC = () => {
    const [pedido, setPedido] = useState<PedidoDTO | null>(null);

    useEffect(() => {
        const fetchUltimoPedido = async () => {
            try {
                const response = await axios.get<PedidoDTO>('http://localhost:8080/api/pedidos/ultimo');
                setPedido(response.data);
            } catch (error) {
                console.error('Error al obtener el último pedido:', error);
            }
        };

        fetchUltimoPedido();
    }, []);

    if (!pedido) {
        return <div className="success-container">Cargando...</div>;
    }

    return (
        <div className="success-container">
            <div className="success-card">
                <h1>Pedido Exitoso</h1>
                <p>Pedido ID: {pedido.id}</p>
                <p>Cliente: {pedido.clienteNombre}</p>
                <p>Hora Estimada de Finalización: <strong>{pedido.horaEstimadaFinalizacion}</strong></p>
                <h2>Detalles del Pedido:</h2>
                <ul>
                    {pedido.detallePedidos.map((detalle) => (
                        <li key={detalle.id}>
                            {detalle.articuloDenominacion} - Cantidad: {detalle.cantidad} - Subtotal: {detalle.subTotal}
                        </li>
                    ))}
                </ul>
                <h2>Factura:</h2>
                <p>Total Venta: {pedido.factura.totalVenta}</p>
                <p>Pagado: {pedido.factura.pagado ? 'Sí' : 'No'}</p>
            </div>
        </div>
    );
};

export default Success;
