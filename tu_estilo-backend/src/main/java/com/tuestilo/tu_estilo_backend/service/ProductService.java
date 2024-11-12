package com.tuestilo.tu_estilo_backend.service;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tuestilo.tu_estilo_backend.model.Product;
import com.tuestilo.tu_estilo_backend.repository.ProductRepository;

@Service
public class ProductService {

    @Autowired
    private ProductRepository productRepository;

    public List<Product> getAllProducts() {
        return productRepository.findAll();
    }

    public Optional<Product> getProductById(Long id) {
        return productRepository.findById(id);
    }

    public void createProduct(Product product) throws MalformedURLException {
        validateImageUrl(product.getImageUrl());
        productRepository.save(product);
    }

    public boolean updateProduct(Long id, Product productDetails) {
        return productRepository.findById(id).map(product -> {
            try {
                validateImageUrl(productDetails.getImageUrl());
                product.setName(productDetails.getName());
                product.setDescription(productDetails.getDescription());
                product.setPrice(productDetails.getPrice());
                product.setStock(productDetails.getStock());
                product.setSize(productDetails.getSize());
                product.setColor(productDetails.getColor());
                product.setImageUrl(productDetails.getImageUrl());
                product.setCategory(productDetails.getCategory());
                productRepository.save(product);
                return true;
            } catch (MalformedURLException e) {
                // Manejar la excepción de URL inválida o registrar el error si es necesario        
                return false;
            }
        }).orElse(false);
    }
    

    // Método para validar la URL de la imagen
    private void validateImageUrl(String imageUrl) throws MalformedURLException {
        new URL(imageUrl); // Verifica si la URL es válida
    }

    public List<Product> getProductsByCategory(Long categoryId) {
        return productRepository.findByCategoryId(categoryId);
    }
    
}
