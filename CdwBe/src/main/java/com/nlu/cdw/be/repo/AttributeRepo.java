package com.nlu.cdw.be.repo;

import com.nlu.cdw.be.entity.Attribute;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AttributeRepo extends JpaRepository<Attribute, Long> {
    Attribute findByProduct_IdAndSize(Long productId, Integer size);

}
