package com.baizhi.service.impl;

import com.baizhi.dao.ExamDao;
import com.baizhi.entity.Exam;
import com.baizhi.service.ExamService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ExamServiceImpl implements ExamService {
    @Resource
    private ExamDao examDao;

    //添加有关审核的信息
    @Override
    public void insert(Exam exam) {
        examDao.insert(exam);
    }

    //查询是否已经添加过审核信息
    @Override
    public Exam select(Exam exam) {
        return examDao.select(exam);
    }

    //查询审核表信息
    @Override
    public List<Exam> selectCheck() {
        return examDao.selectCheck();
    }
}
