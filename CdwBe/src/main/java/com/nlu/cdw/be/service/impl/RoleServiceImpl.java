package com.nlu.cdw.be.service.impl;

import com.nlu.cdw.be.entity.Role;
import com.nlu.cdw.be.repo.RoleRepo;
import com.nlu.cdw.be.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
    RoleRepo roleRepo;

    @Override
    public Role findById(Long id) {
        return roleRepo.findById(id).get();
    }
}
