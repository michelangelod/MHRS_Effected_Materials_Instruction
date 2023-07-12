package com.eddie.dao.Impl;

import com.eddie.dao.RelationDao;
import com.eddie.domain.Monster;
import com.eddie.domain.MonsterMaterialRelation;
import com.eddie.utils.DButil;

import javax.management.relation.Relation;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class RelationDaoImpl implements RelationDao {
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    @Override
    public List<MonsterMaterialRelation> findAll() {
        this.conn = DButil.getConnection();
        String sql = "SELECT material_name,monster_name FROM monster_material_rel";
        List<MonsterMaterialRelation>  rel = DButil.queryList(conn, MonsterMaterialRelation.class,sql);
        return rel;
    }
}
