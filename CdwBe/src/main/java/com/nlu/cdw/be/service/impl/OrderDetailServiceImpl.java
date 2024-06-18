package com.nlu.cdw.be.service.impl;

import com.nlu.cdw.be.entity.OrderDetail;
import com.nlu.cdw.be.repo.OrderDetailRepo;
import com.nlu.cdw.be.service.OrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderDetailServiceImpl implements OrderDetailService {
    @Autowired
    OrderDetailRepo orderDetailRepo;
    @Override
    public OrderDetail createOrderDetail(OrderDetail orderDetail) {
        return orderDetailRepo.save(orderDetail);
    }

    @Override
    public List<OrderDetail> getAllByOrderId(Long id) {
        return orderDetailRepo.findAllByOrder_Id(id);
    }
}
