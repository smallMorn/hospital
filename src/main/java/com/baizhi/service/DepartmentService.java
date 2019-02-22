package com.baizhi.service;

import com.baizhi.entity.Department;

import java.util.List;
import java.util.Map;

public interface DepartmentService {
    //查询所有科室
    List<Department> selectAll();

    //分页展示所有科室
    Map selectByPage(String name, int page, int size);

    //添加科室
    void insert(Department department);

    //修改科室信息
    void update(Department department);

    //批量删除科室
    void multiDelete(int[] ids);
}
