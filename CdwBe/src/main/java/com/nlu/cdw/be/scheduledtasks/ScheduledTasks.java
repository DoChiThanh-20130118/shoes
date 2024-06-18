package com.nlu.cdw.be.scheduledtasks;

import com.nlu.cdw.be.domain.constant.AppConst;
import com.nlu.cdw.be.entity.Attribute;
import com.nlu.cdw.be.entity.Notification;
import com.nlu.cdw.be.entity.Product;
import com.nlu.cdw.be.entity.Voucher;
import com.nlu.cdw.be.service.AttributeService;
import com.nlu.cdw.be.service.NotificationService;
import com.nlu.cdw.be.service.ProductService;
import com.nlu.cdw.be.service.VoucherService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.util.Collection;
import java.util.List;

@Component
@Slf4j
public class ScheduledTasks {
    @Autowired
    VoucherService voucherService;

    @Autowired
    ProductService productService;

    @Autowired
    NotificationService notificationService;

    @Autowired
    AttributeService attributeService;

    @Scheduled(cron = "59 59 23 ? * * ")
    public void scanVoucher(){
        List<Voucher> vouchers = voucherService.findAll();
        for(Voucher v: vouchers){
            if(v.getExpireDate().isBefore(LocalDate.now())){
                v.setIsActive(AppConst.CONST_IN_ACTIVE);
                voucherService.saveVoucher(v);
            }
        }
    }

    @Scheduled(cron = "0 40 13 ? * * ")
    public void scanProduct(){
        List<Product> products = productService.findAll();
        for(Product p: products){
            Collection<Attribute> attributes = p.getAttributes();
            for(Attribute a: attributes){
                Notification notification = null;
                if(a.getStock() <= 1){
                    notification = new Notification();
                    notification.setRead(false);
                    notification.setDeliver(false);
                    notification.setType(3);
                    notification.setContent(String.format("Sản phẩm %s size %d sắp hết, kiểm tra ngay nào", a.getName(), a.getSize()));
                    notification.setProduct(p);
                    notificationService.createNotification(notification);
                }
            }
        }
    }
}
