package com.eddie.domain;

public class Relation {
    private String monster_name;

    private String  material_name;

    public String getMonster_name() {
        return monster_name;
    }

    public void setMonster_name(String monster_name) {
        this.monster_name = monster_name;
    }

    public String getMaterial_name() {
        return material_name;
    }

    public void setMaterial_name(String material_name) {
        this.material_name = material_name;
    }

    @Override
    public String toString() {
        return "Relation{" +
                "monster_name='" + monster_name + '\'' +
                ", material_name='" + material_name + '\'' +
                '}';
    }
}
