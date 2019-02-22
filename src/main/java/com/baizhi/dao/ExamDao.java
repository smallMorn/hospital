package com.baizhi.dao;

import com.baizhi.entity.Exam;

import java.util.List;

public interface ExamDao {
    //添加审核的药品信息 包括通过 未通过 没审核的
    void insert(Exam exam);

    //查询是否已经添加过审核信息
    Exam select(Exam exam);

    //查询审核药品状态
    List<Exam> selectCheck();
}
