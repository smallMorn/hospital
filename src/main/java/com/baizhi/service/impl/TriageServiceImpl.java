package com.baizhi.service.impl;

import com.baizhi.dao.TriageMapper;
import com.baizhi.entity.Triage;
import com.baizhi.service.TriageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class TriageServiceImpl implements TriageService {
    @Resource
    private TriageMapper triageMapper;

    //添加分诊信息
    @Override
    public void insert(Triage triage) {
        triageMapper.insert(triage);
    }

    @Override
    public boolean selectReg(int id) {
        Triage triage = triageMapper.selectReg(id);
        if (triage == null) {
            return true;
        }
        return false;
    }
}
