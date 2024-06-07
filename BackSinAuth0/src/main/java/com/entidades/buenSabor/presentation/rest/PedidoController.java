package com.entidades.buenSabor.presentation.rest;

import com.entidades.buenSabor.business.service.PedidoService;
import com.entidades.buenSabor.domain.entities.Pedido;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/pedidos")
@CrossOrigin("*")
public class PedidoController {

    @Autowired
    private PedidoService pedidoService;

    @PostMapping("/crear")
    public ResponseEntity<String> crearPedido(@RequestBody Pedido pedido) {
        pedidoService.savePedidoWithDetails(pedido);
        return new ResponseEntity<>("Pedido creado con éxito", HttpStatus.CREATED);
    }
}
