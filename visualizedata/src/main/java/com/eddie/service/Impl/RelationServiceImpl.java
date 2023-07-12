package com.eddie.service.Impl;

import com.eddie.dao.Impl.RelationDaoImpl;
import com.eddie.dao.RelationDao;
import com.eddie.domain.MonsterMaterialRelation;
import com.eddie.service.RelationService;

import java.util.List;

public class RelationServiceImpl implements RelationService {
    private RelationDao rd = new RelationDaoImpl();
    @Override
    public List<MonsterMaterialRelation> findAll() {
        return rd.findAll();
    }
}
