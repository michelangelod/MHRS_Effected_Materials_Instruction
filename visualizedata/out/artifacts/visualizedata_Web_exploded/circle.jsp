<%--
  Created by IntelliJ IDEA.
  User: Eddie
  Date: 2023/1/1
  Time: 18:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>circle</title>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.10.2.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/echarts.js"></script>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/other.css"/>
</head>
<style>
  body{
    background-image: linear-gradient(rgba(0, 0, 0, 0.04), rgba(0, 0, 0, 0.2));
  }
</style>
<body >
<a href="${pageContext.request.contextPath}">
  <button class="button">返回</button>
</a>
<div id="main" style="width: 100%;height: 100%; "  ></div>
<script type="text/javascript">
  $(function (){
    $.get("get.do",function (data){
      console.log(data)
      //初始化echarts
      var myChart = echarts.init(document.getElementById('main'), null,);
      //charts属性设置
      var option = {
        series:[{
          type: "graph", //关系图
          layout: 'circular',//布局样式 - circular , force , none
          focusNodeAdjacency: true,//悬停高亮节点与关系节点
          symbolSize:20,//节点大小
          categories: [{name: "Monster"}, {name: "Material"},{name:"Lv"}],//系列
          data:data.nodes,//节点数据
          links:data.links,//链接数据
          roam:true,//鼠标缩放和平移漫游
          //显示标签
          label: {
            show: true,
            formatter: '{b}'
          },
          //旋转标签
          circular:{
            rotateLabel:true
          },
          //链接线样式
          lineStyle: {
            color: 'rgba(16,89,120,0.55)',
            //边曲度
            curveness: 0.3
          }
        }]
      };
      //set echarts
      myChart.setOption(option);
    },"json")
  })
</script>
</body>
</html>
