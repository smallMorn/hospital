package com.baizhi.service.impl;

import com.baizhi.dao.PatientMapper;
import com.baizhi.entity.Patient;
import com.baizhi.service.PatientService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class PatientServiceImpl implements PatientService {
    @Resource
    private PatientMapper patientMapper;

    @Override
    //分页展示病人
    public Map selectByPage(String name, int page, int rows) {
        Map map = new HashMap();
        if (!"".equals(name) && name != null) {
            name = "%" + name + "%";
        } else {
            name = null;
        }
        int start = (page - 1) * rows;
        List<Patient> list = patientMapper.selectByPage(name, start, rows);
        System.out.println("业务" + list);
        map.put("rows", list);
        int number = patientMapper.selectAccount(name);
        map.put("total", number);
        return map;
    }

    //添加患者
    @Override
    public void insert(Patient patient) {
        patientMapper.insert(patient);
    }

    //批量删除
    @Override
    public void multiDelete(int[] ids) {
        patientMapper.multiDelete(ids);
    }

    //修改病人信息
    @Override
    public void update(Patient patient) {
        patientMapper.update(patient);
    }

    //修改挂号状态
    @Override
    public void updateReg(Patient patient) {
        patientMapper.updateReg(patient);
    }
}
