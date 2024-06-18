package com.nlu.cdw.be.repo;

import com.nlu.cdw.be.entity.Sale;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SaleRepo extends JpaRepository<Sale,Long> {
//    Boolean existsByC(String code);
}
