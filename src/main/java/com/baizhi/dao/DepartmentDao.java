package com.baizhi.dao;

import com.baizhi.entity.Department;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DepartmentDao {
    //查询科室
    List<Department> selectAll();

    //分页展示所有科室
    List<Department> selectByPage(@Param("name") String name, @Param("start") int start, @Param("rows") int rows);

    //查询所有科室数目
    int selectAccount(@Param("name") String name);

    //添加科室
    void insert(Department department);

    //修改科室信息
    void update(Department department);

    //批量删除科室 就是假删除 修改
    void multiDelete(int[] ids);
}
