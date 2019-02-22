package com.baizhi.dao;

import com.baizhi.entity.Drug;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DrugDao {
    //展示所有药品
    List<Drug> selectByPage(@Param("start") int start, @Param("rows") int rows);

    //查询药品数量
    int selectAccount();

    //添加药品
    void insert(Drug drug);

    //修改药品信息
    void update(Drug drug);

    //批量删除
    void multiDelete(int[] ids);

    //查询最新添加的药品信息
    Drug selectNew();

    //修改药品的状态
    void updateStatus(Drug drug);

    //根据id查询添加过的药品
    Drug selectDrugById(int id);
}
