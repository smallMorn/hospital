package com.baizhi.dao;

import com.baizhi.entity.Triage;

public interface TriageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Triage record);

    int insertSelective(Triage record);

    Triage selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Triage record);

    int updateByPrimaryKey(Triage record);
}