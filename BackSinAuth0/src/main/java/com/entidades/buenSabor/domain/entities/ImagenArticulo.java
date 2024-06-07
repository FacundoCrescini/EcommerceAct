package com.entidades.buenSabor.domain.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.*;
import lombok.experimental.SuperBuilder;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
@SuperBuilder
public class ImagenArticulo extends Base{

    @Column(name = "name_image")
    private String name;

    @Column(name = "url_image")
    private String url;

    @ManyToOne
    @JoinColumn(name = "articulo_id")
    private Articulo articulo;
}
