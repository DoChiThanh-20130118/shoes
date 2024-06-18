package com.nlu.cdw.be.service;

import com.nlu.cdw.be.entity.OrderDetail;

import java.util.List;

public interface OrderDetailService {
    OrderDetail createOrderDetail(OrderDetail orderDetail);
    List<OrderDetail> getAllByOrderId(Long id);
}
