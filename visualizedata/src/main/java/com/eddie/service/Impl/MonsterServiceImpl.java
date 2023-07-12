package com.eddie.service.Impl;

import com.eddie.dao.Impl.MonsterDaoImpl;
import com.eddie.dao.MonsterDao;
import com.eddie.domain.Monster;
import com.eddie.service.MaterialsService;
import com.eddie.service.MonsterService;

import java.util.List;

public class MonsterServiceImpl implements MonsterService {
    private MonsterDao mod = new MonsterDaoImpl();
    @Override
    public List<Monster> findAll() {
        return mod.findAll();
    }


}
