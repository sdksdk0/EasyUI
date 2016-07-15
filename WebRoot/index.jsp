<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	   
	<link  rel="stylesheet"  href="themes/default/easyui.css"  type="text/css"  />
    <link  rel="stylesheet"  href="themes/icon.css"  type="text/css"  />
    
    <script  type="text/javascript"  src="js/jquery-1.8.2.js" ></script>
   	<script  type="text/javascript"  src="js/jquery.easyui.min.js" ></script>
   	<script  type="text/javascript"  src="js/easyui-lang-zh_CN.js"></script>
   
  </head>
  
  <body>
   	
   		<div  
	    	id="layoutID" 
	    	class="easyui-layout"
	    	data-options="fit:true"
	    	style="width:800px;height:500px">
    		
    		
    	<!-- 上 -->
    	<div data-options="region:'north',split:false,iconCls:'icon-edit',minHeight:'100',maxHeight:'200'" style="height:100px;">
    	
    		<center><font  style="font-size:60px">EasyUI组件——基础使用</font></center>
    	
    	</div>   
	    
	    <!-- 下 -->
	    <div data-options="region:'south',split:true" style="height:100px;">
	    	<center><font  style="font-size:20px">By 指令汇实业</font></center>
    	
	    
	    </div>   
	   
	   	<!-- 右 -->
	    <div data-options="region:'east',iconCls:'icon-reload',title:'新闻',split:true" style="width:100px;"></div>   
	   	<!-- 左 -->
	    <div data-options="region:'west',title:'导航',split:true" style="width:200px;">
	    
	    	<div 
				id="adID" 
				class="easyui-accordion" 
				data-options="fit:false,border:false,selected:-1"
				
				style="width:193px;height:300px;"
				>
		<div title="部门管理" data-options="iconCls:'icon-save'"  style="padding:10px">
			   <a id="btn_add" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add'">增加部门</a><br />
  				<a id="btn_find" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">查找部门</a><br />
    			<a id="btn_update" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-edit'">修改部门</a><br />
    			<a id="btn_delete" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove'">删除部门</a><br />
     
    
		</div>
		<div title="人事管理" data-options="iconCls:'icon-reload'"  style="overflow:auto;padding:10px;">人事管理
		</div>
		<div title="客户管理" data-options="iconCls:'icon-save'">
			<p>客户管理</p>
		</div>
		<div title="权限管理" data-options="iconCls:'icon-reload'">
			<p>权限管理</p>
			<p>权限管理</p>
		</div>
		<div title="报表管理" data-options="iconCls:'icon-save'">
			<p>报表管理</p>
		</div>
		<div title="帮助" data-options="iconCls:'icon-reload'">
			帮助
		</div>
		
	</div>
	    	
	    </div>   
	    <!-- 中 -->
	    
	    <div data-options="region:'center'" style="padding:5px;background:#eee;">  
    		
    			<div 
					id="tabID" 
					class="easyui-tabs" 
					data-options="selected:-1,fit:true,plain:true,border:false"
					style="width:500px;height:250px;"
				>
		
				</div>
    			</div> 
    	</div>
   	
   	
    <script>
    	$("a").click(function(){
    		//获取单击的按钮的标题
    		var title=$(this).text();
    		//去空格
    		title=$.trim(title);
    		
    		if("增加部门"==title){
    			var flag=$("#tabID").tabs("exists",title);
    			
    			if(!flag){
	    			//增加选项卡
	    			$("#tabID").tabs("add",{
	    				"title":title,
	    				"closable":true,
	    				"href": "${pageContext.request.contextPath}/add.jsp"
	    			});
    			}else{
    				$("#tabID").tabs("getSelected",0);
    			}
    		}
    		
    			if("查找部门"==title){
    			var flag=$("#tabID").tabs("exists",title);
    			
    			if(!flag){
	    			//增加选项卡
	    			$("#tabID").tabs("add",{
	    				"title":title,
	    				"closable":true,
	    				"content":"文本"
	    			});
    			}
    		}
    		
    			if("修改部门"==title){
    			var flag=$("#tabID").tabs("exists",title);
    			
    			if(!flag){
	    			//增加选项卡
	    			$("#tabID").tabs("add",{
	    				"title":title,
	    				"closable":true,
	    				"iconCls":"icon-edit"
	    			});
    			}
    		}
    		
    			if("删除部门"==title){
    			var flag=$("#tabID").tabs("exists",title);
    			
    			if(!flag){
	    			//增加选项卡
	    			$("#tabID").tabs("add",{
	    				"title":title,
	    				"closable":true,
	    				"href": "${pageContext.request.contextPath}/images/mm.html"
	    			});
    			}
    		}
    	});
    
    
    </script>	
   
   
   
  </body>
</html>
