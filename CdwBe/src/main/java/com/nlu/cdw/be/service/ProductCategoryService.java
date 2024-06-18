package com.nlu.cdw.be.service;

import com.nlu.cdw.be.entity.ProductCategory;

import java.util.List;
import java.util.Optional;

public interface ProductCategoryService {
    ProductCategory create(ProductCategory productCategory);
    Optional<ProductCategory> findProductCategory(Long productId, Long categoryId);
    List<ProductCategory> findByProduct(Long id);
    void removeProductCategory(ProductCategory productCategory);
}
