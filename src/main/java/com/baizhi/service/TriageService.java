package com.baizhi.service;

import com.baizhi.entity.Triage;

public interface TriageService {
    //添加分诊信息
    void insert(Triage triage);

    //查看病人是否已经挂号
    boolean selectReg(int id);
}
