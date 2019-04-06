<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <title>456</title>
    <script src="<%=basePath %>jquery/echarts.min(1).js"></script>
 
</head>
<body>
    <div id="main" style="width: 600px;height:400px;"></div>
    <script>
          //基于准备好的DOM，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));
          //指定图表的配置项和数据
        var option = {
            title:{
                text:'EChars入门'
            },
            //提示框组件
            tooltip:{
                //坐标轴触发，主要用于柱状图，折线图等
                trigger:'axis'
            },
            //图例
            legend:{
                data:['销量']
            },
            //横轴
            xAxis:{
                data:["衬衫","羊毛衫","雪纺衫","裤子","高跟鞋","袜子"]
            },
            //纵轴
            yAxis:{},
            //系列列表。每个系列通过type决定自己的图表类型
            series:[{
                name:'销量',
                //折线图
                type:'line',
                data:[5, 20, 36, 10, 10, 20]
            }]
        };
        //使用刚指定的配置项和数据显示图表
        myChart.setOption(option);
    </script>
</body>
</html>