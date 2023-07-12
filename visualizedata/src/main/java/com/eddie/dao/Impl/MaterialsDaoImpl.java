package com.eddie.dao.Impl;

import com.eddie.dao.MaterialsDao;
import com.eddie.domain.Material;
import com.eddie.utils.DButil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class MaterialsDaoImpl implements MaterialsDao {
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;

    /**
     *  查询所有素材 返回所有素材名，上限等级，上限等级
     **/
    @Override
    public List<Material> findAll() {
        this.conn = DButil.getConnection();
        String sql = "select name,min_level,max_level from material";
        return DButil.queryList(conn,Material.class,sql);
    }


}
