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
    <title>force</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/echarts.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/other.css"/>
</head>
<style>
    body{
        background-image: linear-gradient(rgba(0, 0, 0, 0.04), rgba(0, 0, 0, 0.2));
    }
</style>
<body>
<a href="${pageContext.request.contextPath}">
    <button class="button">返回</button>
</a>
<div id="main" style="width: 100%;height: 100%; "  ></div>
<script type="text/javascript">
    $(function (){
            $.get("get.do",function (data){
                var myChart = echarts.init(document.getElementById('main'), null,);
                var option = {
                    categories: [{name: "Monster"}, {name: "Material"}, {name: "Lv"}],
                    series:[{
                        type: "graph",
                        layout: 'force',//circular , force
                        symbolSize:60,
                        //可拖拽
                        draggable:true,
                        categories: [{name: "Monster"}, {name: "Material"},{name:"Lv"}],
                        data:data.nodes,
                        links:data.links,
                        roam:true,
                        label: {
                        },
                        force: {
                            repulsion: 700 , // [ default: 50 ]节点之间的斥力因子(关系对象之间的距离)。支持设置成数组表达斥力的范围，此时不同大小的值会线性映射到不同的斥力。值越大则斥力越大
                            edgeLength: 50
                        },
                        lineStyle: {
                            color: 'rgba(16,89,120,0.55)'
                        }
                    }]
                };
                myChart.setOption(option);
            },"json")

    })
</script>
</body>
</html>
