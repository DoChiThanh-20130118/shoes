package com.nlu.cdw.be.service;

import com.nlu.cdw.be.domain.dto.ReqCategoryDto;
import com.nlu.cdw.be.domain.dto.ReqCategoryProductDto;
import com.nlu.cdw.be.entity.Category;
import com.nlu.cdw.be.entity.ProductCategory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface CategoryService {
    Page<Category> findAll(Pageable pageable);
    Category findById(Long id);
    Category saveCategory(Category category);
    Category updateCategory(Category category);
    Category deleteCategory(ReqCategoryDto categoryDto);
    ProductCategory createProductCate(ReqCategoryProductDto productDto);
}
