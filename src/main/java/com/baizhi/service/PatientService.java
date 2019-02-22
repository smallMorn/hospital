package com.baizhi.service;

import com.baizhi.entity.Patient;

import java.util.Map;

public interface PatientService {
    //分页展示
    Map selectByPage(String name, int page, int rows);

    //添加患者
    void insert(Patient patient);

    //批量删除  假删除
    void multiDelete(int[] ids);

    //修改病人信息
    void update(Patient patient);

    //修改挂号状态
    void updateReg(Patient patient);
}
