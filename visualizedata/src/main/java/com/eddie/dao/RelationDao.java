package com.eddie.dao;

import com.eddie.domain.MonsterMaterialRelation;

import java.util.List;

public interface RelationDao {
    public List<MonsterMaterialRelation> findAll();
}
