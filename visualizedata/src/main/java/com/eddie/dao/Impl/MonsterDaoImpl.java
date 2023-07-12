package com.eddie.dao.Impl;

import com.eddie.dao.MonsterDao;
import com.eddie.domain.Monster;
import com.eddie.utils.DButil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class MonsterDaoImpl implements MonsterDao {
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    /**
     *  查询所有怪物 返回怪物id，怪物名，掉落怪异素材
     **/
    @Override
    public List<Monster> findAll() {
        this.conn = DButil.getConnection();
        String sql = "SELECT name,affect FROM monster";
        List<Monster>  monsters = DButil.queryList(conn,Monster.class,sql);
        return monsters;
    }
}
