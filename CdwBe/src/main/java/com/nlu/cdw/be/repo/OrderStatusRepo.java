package com.nlu.cdw.be.repo;

import com.nlu.cdw.be.entity.OrderStatus;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderStatusRepo extends JpaRepository<OrderStatus, Long> {
}
