package com.nlu.cdw.be.service;

import com.nlu.cdw.be.entity.Attribute;

import java.util.List;

public interface AttributeService {
    Attribute findById(Long id);
    List<Attribute> cacheAttribute(Long id);
    List<Attribute> findAll();
    List<Attribute> backAttribute(Long id);
    Attribute save(Attribute attribute);
    Attribute getByProductIdAndSize(Long productId, Integer size);
    Boolean isValidCart(Long id, Integer quantity);
}
