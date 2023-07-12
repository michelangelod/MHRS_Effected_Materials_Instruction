package com.eddie.operate;

import com.eddie.domain.Monster;
import com.eddie.domain.Relation;
import com.eddie.jdbc.Jdbc;

import java.sql.SQLException;
import java.util.ArrayList;

public class setRelTable {
    public static void main(String[] args) {
        ArrayList<Relation> arrayList = new ArrayList<>();
        try {
            ArrayList<Monster> monsters = Jdbc.getMonsters();
            monsters.forEach(monster -> {
                String[] split = monster.getAffMaterials().split(", ");
                if(!split[0].equals("")){
                    for (String s : split) {
                        Relation relation = new Relation();
                        relation.setMonster_name(monster.getmName());
                        relation.setMaterial_name(s);
                        arrayList.add(relation);
                    }

                }


            });
            Integer integer = Jdbc.SaveRelData(arrayList);
            System.out.println(integer);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
