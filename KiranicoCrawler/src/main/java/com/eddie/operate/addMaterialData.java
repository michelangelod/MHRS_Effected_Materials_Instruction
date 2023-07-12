package com.eddie.operate;

import com.eddie.domain.Material;
import com.eddie.jdbc.Jdbc;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;


public class addMaterialData {
    /**
     * 等级信息无法从网络爬取需手动进行设置
     * 对怪异化材料进行等级编辑
     * **/
    public static Material setLv(String mat){
        Material material = new Material();
        switch (mat) {
            case "怪异化的骨":
            case "怪异化的皮":
            case "怪异化的龙骨":
            case "怪异化的血":
            case "怪异化的鳞":
            case "怪异化的甲壳":
            case "怪异化的牙":
            case "怪异化的爪":
                material.setAffected(mat);
                material.setMin_level(1);
                material.setMax_level(30);
                break;
            case "怪异化的硬骨":
            case "怪异化的上等皮":
            case "怪异化的坚龙骨":
            case "怪异化的净血":
            case "怪异化的上等鳞":
            case "怪异化的坚壳":
            case "怪异化的锐牙":
            case "怪异化的尖爪":
                material.setAffected(mat);
                material.setMin_level(31);
                material.setMax_level(100);
                break;
            case "怪异化的重骨":
            case "怪异化的厚皮":
            case "怪异化的重龙骨":
            case "怪异化的净浓血":
            case "怪异化的厚鳞":
            case "怪异化的重壳":
            case "怪异化的重牙":
            case "怪异化的刚爪":
            case "怪异化的上等凶鳞":
            case "怪异化的凶尖角":
            case "怪异化的凶硬骨":
                material.setAffected(mat);
                material.setMin_level(101);
                material.setMax_level(120);
                break;
            case "怪异化的凶鳞":
            case "怪异化的凶角":
            case "怪异化的凶骨":
                material.setAffected(mat);
                material.setMin_level(51);
                material.setMax_level(100);
                break;
            case "怪异化的凶壳":
            case "怪异化的凶爪":
                material.setAffected(mat);
                material.setMin_level(71);
                material.setMax_level(110);
                break;
            case "怪异化的凶坚壳":
            case "怪异化的凶尖爪":
                material.setAffected(mat);
                material.setMin_level(111);
                material.setMax_level(120);
                break;
            case "怪异化的凶翼膜":
            case "怪异化的凶牙":
            case "怪异化的凶血":
                material.setAffected(mat);
                material.setMin_level(91);
                material.setMax_level(140);
                break;
            case "怪异化的凶翼":
            case "怪异化的凶锐牙":
            case "怪异化的凶净血":
                material.setAffected(mat);
                material.setMin_level(141);
                material.setMax_level(200);
                break;
            case "怪异化的凶重骨":
            case "怪异化的凶厚鳞":
            case "怪异化的凶刚角":
                material.setAffected(mat);
                material.setMin_level(161);
                material.setMax_level(200);
                break;
            case "怪异化的凶重壳":
            case "怪异化的凶刚爪":
                material.setAffected(mat);
                material.setMin_level(181);
                material.setMax_level(200);
                break;
            case "怪异化的凶浓血":
            case "怪异化的凶刚翼":
            case "怪异化的凶重牙":
                material.setAffected(mat);
                material.setMin_level(201);
                material.setMax_level(220);
                break;
            case "破怪的龙骨":
                material.setAffected(mat);
                material.setMin_level(111);
                material.setMax_level(160);
                break;
            case "破怪的硬龙骨":
                material.setAffected(mat);
                material.setMin_level(161);
                material.setMax_level(220);
                break;
        }
        return material;
    }

    public static void main(String[] args) {
        //数组以保存素材信息
        ArrayList<Material> arrayList = new ArrayList<>();
        try {
            Set<String> materials = Jdbc.getMaterials();
            materials.forEach(mat ->{
                Material material = setLv(mat);
                if(material.getAffected()!=null){
                    arrayList.add(material);
                }
            });
            Integer integer = Jdbc.SaveMatData(arrayList);
            System.out.println(integer);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
