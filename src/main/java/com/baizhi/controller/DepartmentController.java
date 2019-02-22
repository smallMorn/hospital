package com.baizhi.controller;

import com.baizhi.entity.Department;
import com.baizhi.service.DepartmentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("department")
public class DepartmentController {
    @Resource
    private DepartmentService departmentService;

    //查询所有科室  显示在注册页面以供科室选择
    @RequestMapping("selectAllDepartment")
    public String selectAllDepartment(Map map) {
        List<Department> list = departmentService.selectAll();
        map.put("list", list);
        return "register";
    }

    //分页展示所有科室
    @RequestMapping("selectByPage")
    public @ResponseBody
    Map selectByPage(String name, int page, int rows) {
        Map map = departmentService.selectByPage(name, page, rows);
        return map;
    }

    //添加科室
    @RequestMapping("insert")
    public @ResponseBody
    boolean insert(Department department) {
        try {
            departmentService.insert(department);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    //修改科室信息
    @RequestMapping("update")
    public @ResponseBody
    boolean update(Department department) {
        try {
            departmentService.update(department);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    //批量删除科室
    @RequestMapping("multiDelete")
    public @ResponseBody
    boolean multiDelete(int[] ids) {
        System.out.println("----" + Arrays.toString(ids));
        try {
            departmentService.multiDelete(ids);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
