package com.entidades.buenSabor.domain.dto.Promocion;



import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class PromocionDetalleCreateDto {
    private String cantidad;
    private Long detalleId;
    private Long articuloId;
    private Long promocionId;
}
