package com.nlu.cdw.be.service;

import com.nlu.cdw.be.domain.dto.ReqUpdateAccountDetailDto;
import com.nlu.cdw.be.entity.AccountDetail;

public interface AccountDetailService {
    AccountDetail findAccountDetail(Long id);

    AccountDetail save(AccountDetail accountDetail);
    AccountDetail update(ReqUpdateAccountDetailDto reqUpdateAccountDetailDto);
    void update(AccountDetail accountDetail);

    AccountDetail findAccountDetailByEmail(String email);
}
