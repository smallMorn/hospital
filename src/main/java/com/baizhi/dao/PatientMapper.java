package com.baizhi.dao;

import com.baizhi.entity.Patient;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PatientMapper {
    //分页展示所有患者
    List<Patient> selectByPage(@Param("name") String name, @Param("start") int start, @Param("rows") int rows);

    //查询所有患者数目
    int selectAccount(@Param("name") String name);

    //添加患者
    void insert(Patient patient);

    //批量删除患者 假删除
    void multiDelete(int[] ids);

    //修改患者信息
    void update(Patient patient);

    //修改挂号状态
    void updateReg(Patient patient);
}
