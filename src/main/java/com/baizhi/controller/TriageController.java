package com.baizhi.controller;

import com.baizhi.entity.Department;
import com.baizhi.entity.Patient;
import com.baizhi.entity.Triage;
import com.baizhi.service.PatientService;
import com.baizhi.service.TriageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("triage")
public class TriageController {
    @Autowired
    private TriageService triageService;
    @Autowired
    private PatientService patientService;

    @RequestMapping("insert")
    public String insert(Patient patient, Department department) {
        int id = patient.getId();
        //查询病人是否已经挂号
        boolean b = triageService.selectReg(id);
        if (b == false) {
            return "patient/showPatient";
        }
        Triage triage = new Triage();
        triage.setStatus(0);
        triage.setPid(id + "");
        triage.setDid(department.getId() + "");
        //添加分诊信息
        triageService.insert(triage);
        //修改病人挂号状态
        patientService.updateReg(patient);
        return "patient/showPatient";
    }
}
