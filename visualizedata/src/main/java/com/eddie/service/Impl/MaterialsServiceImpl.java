package com.eddie.service.Impl;

import com.eddie.dao.Impl.MaterialsDaoImpl;
import com.eddie.dao.MaterialsDao;
import com.eddie.domain.Material;
import com.eddie.service.MaterialsService;

import java.util.List;

public class MaterialsServiceImpl implements MaterialsService {
    private MaterialsDao md = new MaterialsDaoImpl();
    @Override
    public List<Material> findAllMat() {
        return md.findAll();
    }

}
