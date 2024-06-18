package com.nlu.cdw.be.repo;

import com.nlu.cdw.be.entity.Brand;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BrandRepo extends JpaRepository<Brand, Long> {
    boolean existsByName(String name);
}
