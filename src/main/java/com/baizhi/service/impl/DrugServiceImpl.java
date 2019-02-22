package com.baizhi.service.impl;

import com.baizhi.dao.DrugDao;
import com.baizhi.entity.Drug;
import com.baizhi.service.DrugService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class DrugServiceImpl implements DrugService {
    @Resource
    private DrugDao drugDao;

    //分页展示药品
    @Override
    public Map selectByPage(int page, int rows) {
        Map map = new HashMap();
        int start = (page - 1) * rows;
        List<Drug> list = drugDao.selectByPage(start, rows);
        map.put("rows", list);
        int number = drugDao.selectAccount();
        map.put("total", number);
        return map;
    }

    //添加药品
    @Override
    public void insert(Drug drug) {
        drugDao.insert(drug);
    }

    //修改药品信息
    @Override
    public void update(Drug drug) {
        drugDao.update(drug);
    }

    //批量删除
    @Override
    public void multiDelete(int[] ids) {
        drugDao.multiDelete(ids);
    }

    //查询最新添加的药品信息
    @Override
    public Drug selectNew() {
        return drugDao.selectNew();
    }

    //修改药品状态
    @Override
    public void updateStatus(Drug drug) {
        drugDao.updateStatus(drug);
    }

    //根据id查询添加过的药品
    @Override
    public Drug selectDrugById(int id) {
        return drugDao.selectDrugById(id);
    }
}
