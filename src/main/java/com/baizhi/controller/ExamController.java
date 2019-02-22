package com.baizhi.controller;

import com.baizhi.entity.Exam;
import com.baizhi.service.ExamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("exam")
public class ExamController {
    @Autowired
    private ExamService examService;

    @RequestMapping("insert")
    public String insert(Exam exam) {
        Exam exam1 = examService.select(exam);
        if (exam1 != null) {
            return "showDrug";
        }
        examService.insert(exam);
        return "showDrug";
    }

    //查询审核信息表
    @RequestMapping("selectCheck")
    public String selectCheck(Map map) {
        List<Exam> list = examService.selectCheck();
        map.put("list", list);
        return "ExamDrugsList";
    }
}
