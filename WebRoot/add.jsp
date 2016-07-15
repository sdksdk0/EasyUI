<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add.jsp' starting page</title>
    
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
    	<form>
		<table border="2" align="center">
			<tr>
				<th>部门名</th>
				<td><input type="text" name="department"/></td>
			</tr>
			<tr>
				<th>部门负责人</th>
				<td><input type="text" name="leader"/></td>
			</tr>
			<tr>
				<th>部门职责</th>
				<td>
					<textarea rows="5" cols="33">
					</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="提交"/>
				</td>
			</tr>
		</table>	
	</form>	
    
    
    
    
  </body>
</html>
