package com.entidades.buenSabor.business.service;

import com.entidades.buenSabor.domain.entities.Pedido;
import com.entidades.buenSabor.domain.entities.DetallePedido;
import com.entidades.buenSabor.repositories.PedidoRepository;
import com.entidades.buenSabor.repositories.DetallePedidoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class PedidoService {

    @Autowired
    private PedidoRepository pedidoRepository;

    @Autowired
    private DetallePedidoRepository detallePedidoRepository;

    @Transactional
    public Pedido savePedidoWithDetails(Pedido pedido) {
        Pedido savedPedido = pedidoRepository.save(pedido);
        List<DetallePedido> detalles = pedido.getDetallePedidos().stream().map(detalle -> {
            detalle.setPedido(savedPedido);
            return detalle;
        }).toList();
        detallePedidoRepository.saveAll(detalles);
        return savedPedido;
    }
}
