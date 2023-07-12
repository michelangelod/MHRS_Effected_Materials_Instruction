package com.eddie.jdbc;


import com.eddie.domain.Material;
import com.eddie.domain.Monster;
import com.eddie.domain.Relation;

import java.sql.*;
import java.util.*;

public class Jdbc {
    private static String driverClassName = "com.mysql.cj.jdbc.Driver";
    private static String url = "jdbc:mysql://localhost:3306/monster_hunter_rise_sunbreak";
    private static String username = "root";
    private static String password = "123456";
    private static Connection connection = null;
    static {
        try {
            Class.forName(driverClassName);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    //将怪物数组存入数据库
    public static Integer SaveData(List<Monster> monsters) {
        try {
            connection = DriverManager.getConnection(url,username,password);
            String sql ="insert into monster (`name`,affect) values (?,?)";
            PreparedStatement ps  =connection.prepareStatement(sql);
            for(Monster monster : monsters) {
                ps.setString(1, monster.getmName());
                ps.setString(2, monster.getAffMaterials());
                ps.executeUpdate();
            }
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        return 0;
    }

    public static Integer SaveMatData(List<Material> materials) {
        try {
            connection = DriverManager.getConnection(url,username,password);
            String sql ="insert into material (`name`,min_level,max_level) values (?,?,?)";
            PreparedStatement ps  =connection.prepareStatement(sql);
            for(Material material : materials) {
                ps.setString(1, material.getAffected());
                ps.setInt   (2, material.getMin_level());
                ps.setInt   (3, material.getMax_level());
                ps.executeUpdate();
            }
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        return 0;
    }
    public static ArrayList<Monster> getMonsters() throws SQLException {
        connection = DriverManager.getConnection(url,username,password);
        Statement stmt = connection.createStatement();
        String sql ="SELECT * FROM monster";
        ResultSet rs = stmt.executeQuery(sql);
        ArrayList<Monster> arrayList = new ArrayList<>();
        while (rs.next()) {
            Monster monster = new Monster();
            monster.setmName(rs.getString("name"));
            monster.setAffMaterials(rs.getString("affect"));
            arrayList.add(monster);
        }
        connection.close();
        return arrayList;
    }
    public static Set<String> getMaterials() throws SQLException {
        connection = DriverManager.getConnection(url,username,password);
        Statement stmt = connection.createStatement();
        String sql ="SELECT affect FROM monster";
        ResultSet rs = stmt.executeQuery(sql);
        Set<String> materials = new HashSet<>();
        while (rs.next()) {
            //materials.add(rs.getString("affect"));
            materials.addAll(Arrays.asList(rs.getString("affect").split(", ")));

        }
        connection.close();
        return materials;
    }
    public static Integer SaveRelData(List<Relation> relations) {
        try {
            connection = DriverManager.getConnection(url,username,password);
            String sql ="insert into monster_material_rel (monster_name,material_name) values (?,?)";
            PreparedStatement ps  =connection.prepareStatement(sql);
            for(Relation relation : relations) {
                ps.setString(1,relation.getMonster_name() );
                ps.setString(2,relation.getMaterial_name());
                ps.executeUpdate();
            }
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        return 0;
    }
}
