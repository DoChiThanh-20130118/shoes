package com.nlu.cdw.be.service;

import com.nlu.cdw.be.domain.dto.*;
import com.nlu.cdw.be.entity.Account;
import com.nlu.cdw.be.entity.AccountDetail;
import org.springframework.data.domain.Pageable;

import javax.mail.MessagingException;
import javax.transaction.Transactional;
import java.util.List;

public interface AccountService {
    Account findById(Long id);

    List<RespAccountDto> findAllSecond(Pageable pageable);

    RespAccountDto findByIdSecond(Long id);

    RespAccountDto findByUsername(String username);

    void deleteOrRestore(Boolean isActive, Long id);

    List<Object[]> findAccountByIsActiveOrInactive(Boolean isActive, Pageable pageable);

    Account update(ReqUpdateAccountDto reqUpdateAccountDto);

    Account save(ReqCreateAccountDto reqCreateAccountDto);

    Account findAccountByUsername(String username);

    Integer getToTalPage();

    List<RespAccountDto> findAccountByRoleName(String roleName, Pageable pageable);

    RespAccountDto register(ReqRegisterAccountDto reqRegisterAccountDto);
    Integer countAccount();

    @Transactional
    void forgotPassword(ReqForgotPasswordDto reqForgotPasswordDto) throws MessagingException;
    AccountDetail update(ReqUpdateAccountDetailDto reqUpdateAccountDetailDto);
}
