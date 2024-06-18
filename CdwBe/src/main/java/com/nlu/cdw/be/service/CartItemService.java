package com.nlu.cdw.be.service;

import com.nlu.cdw.be.domain.dto.ReqCartItemDto;
import com.nlu.cdw.be.entity.CartItem;

import java.util.List;

public interface CartItemService {
    List<Object[]> getCartItemByAccountId(Long id, Boolean isActive);
    List<CartItem> getAllByAccountId(Long id, Boolean isActive);
    CartItem findCartItemByAccountIdAndAttributeId(Long accountId, Long attributeId);
    CartItem saveCartItem(CartItem cartItem);
    CartItem modifyCartItem(ReqCartItemDto reqCartItemDto);
    void removeCartItem(ReqCartItemDto reqCartItemDto);
    void clearCartItem(Long id);
    Boolean isEnoughStock(Long id, Integer quantity);
    void reloadCartItem(Long id);
}
