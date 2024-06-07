package com.entidades.buenSabor.domain.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.SuperBuilder;
import org.hibernate.envers.NotAudited;

import java.util.HashSet;
import java.util.Set;

@Entity
@Inheritance(strategy = InheritanceType.JOINED)
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@SuperBuilder
@ToString
@JsonTypeInfo(
        use = JsonTypeInfo.Id.NAME,
        include = JsonTypeInfo.As.PROPERTY,
        property = "type"
)
@JsonSubTypes({
        @JsonSubTypes.Type(value = ArticuloManufacturado.class, name = "articuloManufacturado"),
        @JsonSubTypes.Type(value = ArticuloInsumo.class, name = "articuloInsumo")
})
public abstract class Articulo extends Base {

    /*denominacion y precioVenta: Atributos básicos del artículo.*/
    protected String denominacion;
    protected Double precioVenta;


    /*@OneToMany: Relación uno a muchos con ImagenArticulo.
    @JoinColumn(name = "articulo_id") especifica la columna de unión en la tabla ImagenArticulo.*/
    @OneToMany
    @JoinColumn(name = "articulo_id")
    /*@Builder.Default: Establece un valor predeterminado para el builder.*/
    @Builder.Default
    /*@NotAudited: Excluye este campo del proceso de auditoría.*/
    @NotAudited
    //@JsonIgnore
    protected Set<ImagenArticulo> imagenes = new HashSet<>();

    /*@ManyToOne: Relaciones muchos a uno con UnidadMedida y Categoria.*/
    @ManyToOne
    protected UnidadMedida unidadMedida;

    @ManyToOne
    //@JsonIgnore
    protected Categoria categoria;
}
