package com.baizhi.service.impl;

import com.baizhi.dao.DepartmentDao;
import com.baizhi.entity.Department;
import com.baizhi.service.DepartmentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class DepartmentServiceImpl implements DepartmentService {
    @Resource
    private DepartmentDao departmentDao;

    //查询所有科室
    @Override
    public List<Department> selectAll() {
        return departmentDao.selectAll();
    }

    //分页展示所有科室
    @Override
    public Map selectByPage(String name, int page, int rows) {
        Map map = new HashMap();
        if (!"".equals(name) && name != null) {
            name = "%" + name + "%";
        } else {
            name = null;
        }
        int start = (page - 1) * rows;
        List<Department> list = departmentDao.selectByPage(name, start, rows);
        map.put("rows", list);
        int number = departmentDao.selectAccount(name);
        map.put("total", number);
        return map;
    }

    //添加科室
    @Override
    public void insert(Department department) {
        departmentDao.insert(department);
    }

    //修改科室信息
    @Override
    public void update(Department department) {
        departmentDao.update(department);
    }

    //批量删除科室
    @Override
    public void multiDelete(int[] ids) {
        departmentDao.multiDelete(ids);
    }
}
