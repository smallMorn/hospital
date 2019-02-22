package com.baizhi.service;

import com.baizhi.entity.Drug;

import java.util.Map;

public interface DrugService {
    //分页展示所有药品
    Map selectByPage(int page, int size);

    //添加药品
    void insert(Drug drug);

    //修改药品信息
    void update(Drug drug);

    //批量删除
    void multiDelete(int[] ids);

    //查询最新添加的药品信息
    Drug selectNew();

    //修改药品状态
    void updateStatus(Drug drug);

    //根据id查询添加过的药品信息
    Drug selectDrugById(int id);
}
