package com.tuestilo.tu_estilo_backend.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.tuestilo.tu_estilo_backend.model.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {

    // Método para obtener productos por categoría
    @Query("SELECT p FROM Product p WHERE p.category.id = :categoryId")
    List<Product> findByCategoryId(@Param("categoryId") Long categoryId);
}
