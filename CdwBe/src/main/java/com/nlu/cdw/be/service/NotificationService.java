package com.nlu.cdw.be.service;

import com.nlu.cdw.be.entity.Notification;

import java.util.List;

public interface NotificationService {
    List<Notification> loadNotification(Boolean read, Boolean deliver);
    Notification modifyNotification(Long id);
    Notification updateNotification(Notification notification);
    Notification createNotification(Notification notification);
}
