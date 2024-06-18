package com.nlu.cdw.be.service;

import com.nlu.cdw.be.domain.dto.ReqProductDto;
import com.nlu.cdw.be.domain.dto.ReqUpdateProductDto;
import com.nlu.cdw.be.domain.dto.RespProductDto;
import com.nlu.cdw.be.domain.dto.ResponseProductDto;
import com.nlu.cdw.be.entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface ProductService {
    Page<ResponseProductDto> getProducts(Boolean active, Pageable pageable);
    Page<ResponseProductDto> getAllProductsByBrand(Boolean active, Long brand, Pageable pageable);
    Integer getToTalPage();
    List<RespProductDto> searchByKeyword(String keyword, Pageable pageable);
    Product getProductById(Long id);
    List<Product> getProductByBrand(Long id);
    List<Product> findAll();
    List<Product> getProductByCategory(Long id);
    List<Product> getProductBySale(Long id);
    Product update(Product product);
    Integer countProduct();
    Product create(ReqProductDto reqProductDto);
    Product modify(ReqUpdateProductDto reqUpdateProductDto);
    Page<ResponseProductDto> filterAllProducts(List<Long> category, List<Long> brand, Double min, Double max, Pageable pageable);
    Page<ResponseProductDto> relateProduct(Long id, Long brand, Pageable pageable);
    ResponseProductDto getProductDetail(Long id);
}
