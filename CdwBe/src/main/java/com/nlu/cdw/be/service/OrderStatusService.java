package com.nlu.cdw.be.service;

import com.nlu.cdw.be.entity.OrderStatus;

import java.util.List;

public interface OrderStatusService {
    OrderStatus getById(Long id);
    List<OrderStatus> getAllOrderStatus();
}
