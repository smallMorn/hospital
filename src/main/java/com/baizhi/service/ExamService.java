package com.baizhi.service;

import com.baizhi.entity.Exam;

import java.util.List;

public interface ExamService {
    //添加有关审核的信息
    void insert(Exam exam);

    //查询是否已经添加过审核信息
    Exam select(Exam exam);

    //查询审核状态的信息
    List<Exam> selectCheck();
}
