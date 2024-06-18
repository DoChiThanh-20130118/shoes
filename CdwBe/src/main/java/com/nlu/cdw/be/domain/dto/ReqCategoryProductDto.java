package com.nlu.cdw.be.domain.dto;

import com.nlu.cdw.be.entity.Category;
import com.nlu.cdw.be.entity.Product;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class ReqCategoryProductDto {

    private Long id;

    private Category category;

    private Product product;
}
