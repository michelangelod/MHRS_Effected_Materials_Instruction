package com.eddie.controller;

import com.alibaba.fastjson.JSON;
import com.eddie.domain.EChartsGraph;
import com.eddie.domain.Material;
import com.eddie.domain.Monster;
import com.eddie.domain.MonsterMaterialRelation;
import com.eddie.service.Impl.MaterialsServiceImpl;
import com.eddie.service.Impl.MonsterServiceImpl;
import com.eddie.service.Impl.RelationServiceImpl;
import com.eddie.service.MaterialsService;
import com.eddie.service.MonsterService;
import com.eddie.service.RelationService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;
import java.util.stream.Collectors;

@WebServlet("/get.do")
public class GetNodesLinksServlet extends HttpServlet {
    private final static Integer CATEGORY_MONSTER = 0;
    private final static Integer CATEGORY_MATERIAL = 1;
    private final static Integer CATEGORY_LEVEL = 2;
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        //声明
        MaterialsService mas = new MaterialsServiceImpl();
        MonsterService mos = new MonsterServiceImpl();
        RelationService res = new RelationServiceImpl();
        //返回所有素材信息
        List<Material> materials = mas.findAllMat();
        List<Monster>  monsters  = mos.findAll();
        List<MonsterMaterialRelation> relList = res.findAll();
        //初始化类
        EChartsGraph nl = new EChartsGraph();
        List<EChartsGraph.Node> nodes = new ArrayList<>();
        List<EChartsGraph.Link> links = new ArrayList<>();
        nl.setNodes(nodes);
        nl.setLinks(links);
        //
        Set<String> levelNodes = new HashSet<>();
        //素材节点
        materials.forEach(material -> {
            EChartsGraph.Node node = new EChartsGraph.Node();
            node.setName(material.getName());
            node.setCategory(CATEGORY_MATERIAL);
            nodes.add(node);
            //返回素材等级转为字符串存入等级节点hashset避免重复
            String levelString = "Lv" + material.getMin_level() + "-" + material.getMax_level(); // 示例：Lv15-40
            levelNodes.add(levelString);
        });
        //素材等级节点
        levelNodes.forEach(level -> {
            EChartsGraph.Node node = new EChartsGraph.Node();
            node.setName(level);
            node.setCategory(CATEGORY_LEVEL);
            nodes.add(node);
        });
        //怪物节点
        monsters.forEach(monster -> {
            EChartsGraph.Node node = new EChartsGraph.Node();
            if(!monster.getAffect().equals("")){
                node.setName(monster.getName());
                node.setCategory(CATEGORY_MONSTER);
                nodes.add(node);
            }
        });
        //链接
        relList.forEach(rel -> {
            EChartsGraph.Link link = new EChartsGraph.Link();
            link.setSource(rel.getMaterial_name());
            link.setTarget(rel.getMonster_name());
            links.add(link);
        });
        materials.forEach(material -> {
            EChartsGraph.Link link = new EChartsGraph.Link();
            link.setSource(material.getName());
            String levelString = "Lv" + material.getMin_level() + "-" + material.getMax_level(); // 示例：Lv15-40
            link.setTarget(levelString);
            links.add(link);
        });
        links.addAll(monsterMonsterRelation(relList));
        //传输json
        String linksJson = JSON.toJSONString(nl);
        resp.getWriter().print(linksJson);
    }
    private Set<EChartsGraph.Link> monsterMonsterRelation(List<MonsterMaterialRelation> relList){
        Map<String, List<MonsterMaterialRelation>> collect = relList.stream().collect(Collectors.groupingBy(MonsterMaterialRelation::getMaterial_name));
        Set<EChartsGraph.Link> set = new HashSet<>();
        collect.forEach((k,list)->{
            for(int i = 0;i<list.size();i++){
                for(int j = i+1 ;j<list.size();j++){
                    EChartsGraph.Link link = new EChartsGraph.Link();
                    link.setSource(list.get(i).getMonster_name());
                    link.setTarget(list.get(j).getMonster_name());
                    set.add(link);
                }
            }
        });
        return set;
    }
}
