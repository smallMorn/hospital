package com.baizhi.controller;

import com.baizhi.entity.Department;
import com.baizhi.entity.Patient;
import com.baizhi.service.DepartmentService;
import com.baizhi.service.PatientService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("patient")
public class PatientController {
    private final static Logger log = LoggerFactory.getLogger(PatientController.class);
    @Autowired
    private PatientService patientService;
    @Autowired
    private DepartmentService departmentService;

    @RequestMapping("selectByPage")
    public @ResponseBody
    Map selectByPage(int page, int rows, String name) {
        System.out.println("--------------------" + patientService.selectByPage(name, page, rows));
        return patientService.selectByPage(name, page, rows);
    }

    //添加患者
    @RequestMapping("insert")
    public @ResponseBody
    boolean insert(Patient patient) {
        try {
            patientService.insert(patient);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    //批量删除
    @RequestMapping("multiDelete")
    public @ResponseBody
    boolean multiDelete(int[] ids) {
        try {
            patientService.multiDelete(ids);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    //修改病人信息
    @RequestMapping("update")
    public @ResponseBody
    boolean update(Patient patient) {
        try {
            patientService.update(patient);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    //病人挂号
    @RequestMapping("register")
    public String register(Patient patient, Map map) {
        List<Department> list = departmentService.selectAll();
        map.put("list", list);
        map.put("patient", patient);
        return "patient/PatientRegister";
    }
}
