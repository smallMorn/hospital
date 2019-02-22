package com.baizhi.controller;

import com.baizhi.entity.Drug;
import com.baizhi.service.DrugService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

@Controller
@RequestMapping("drug")
public class DrugController {
    @Autowired
    private DrugService drugService;

    @RequestMapping("selectByPage")
    //分页展示药品
    public @ResponseBody
    Map selectByPage(int page, int rows) {
        Map map = drugService.selectByPage(page, rows);
        return map;
    }

    //添加药品 重定向到查询刚刚添加的药品信息
    @RequestMapping("insert")
    public String insert(Drug drug) {
        drugService.insert(drug);
        return "redirect:/drug/selectNew";
    }

    //修改药品信息
    @RequestMapping("update")
    public @ResponseBody
    boolean update(Drug drug) {
        try {
            drugService.update(drug);
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
            drugService.multiDelete(ids);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    //查询最新添加的药品信息
    @RequestMapping("selectNew")
    public String selectNew(Map map) {
        Drug drug = drugService.selectNew();
        map.put("drug", drug);
        return "ExamDrug";
    }

    //修改药品状态
    @RequestMapping("updateStatus")
    public String updateStatus(Drug drug) {
        drugService.updateStatus(drug);
        return "showDrug";
    }

    //根据id查询添加过的药品
    @RequestMapping("selectDrugById")
    public String selectDrugById(int id, Map map) {
        Drug drug = drugService.selectDrugById(id);
        map.put("drug", drug);
        return "ExamDrug";
    }
}
