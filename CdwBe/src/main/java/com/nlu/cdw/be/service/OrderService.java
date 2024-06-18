package com.nlu.cdw.be.service;

import com.nlu.cdw.be.domain.dto.ReqCancelOrder;
import com.nlu.cdw.be.domain.dto.ReqOrderDto;
import com.nlu.cdw.be.domain.dto.ReqUpdateOrderDto;
import com.nlu.cdw.be.domain.dto.ReqUpdateStatusOrder;
import com.nlu.cdw.be.domain.model.AmountMonth;
import com.nlu.cdw.be.domain.model.AmountYear;
import com.nlu.cdw.be.domain.model.CountOrder;
import com.nlu.cdw.be.domain.model.ReportProduct;
import com.nlu.cdw.be.entity.Order;
import com.nlu.cdw.be.entity.OrderDetail;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.query.Param;

import java.time.LocalDate;
import java.util.List;

public interface OrderService {
    Order createOrder(ReqOrderDto reqOrderDto) ;
    Page<Order> getOrderByAccount(Long id, Pageable pageable);
    Order getByOrderId(Long id);
    List<OrderDetail> getAllByOrderId(Long id);
    Page<Order> findOrderByAccountIdAndOrderStatusId(Long accountId, Long orderStatusId, Pageable pageable);
    Page<Order> getAllOrdersAndPagination(Long id, Pageable pageable);
    Order updateOrderWithStatus(Long orderId, Long statusId);
    Order updateOrder(ReqUpdateOrderDto reqUpdateOrderDto);
//    Order cancelOrder(Long orderId);
    Page<Order> findOrderByAccount_Id(Long id, Pageable pageable);
    Page<Order> findOrderByOrderStatusAndYearAndMonth(Long id, Integer year, Integer month, Pageable pageable);
    Page<Order> findOrderBetweenDate(@Param("id") Long id, @Param("from") LocalDate from, @Param("to") LocalDate to, Pageable pageable);
    Page<ReportProduct> reportByProduct(Pageable pageable);
    Page<Order> findOrderByProduct(Long id, Pageable pageable);
    List<AmountYear> reportAmountYear();
    List<AmountMonth> reportAmountMonth(Integer year);

    Integer countOrder();
    List<CountOrder> countOrderByName();
    List<Order> findOrderBySeenEquals(Boolean seen);

    Order processOrder(ReqUpdateStatusOrder reqUpdateStatusOrder);
    Order shipOrder(ReqUpdateStatusOrder reqUpdateStatusOrder);
    Order successOrder(ReqUpdateStatusOrder reqUpdateStatusOrder);
    Order cancelOrder(ReqUpdateStatusOrder reqUpdateStatusOrder);
    Order cancelOrder(ReqCancelOrder reqCancelOrder);
}
