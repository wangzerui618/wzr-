<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<style type="text/css">
	    @charset "UTF-8";
		* {
			margin: 0;
			padding: 0;
			list-style: none;
		}
		
		html,body {
			background: #FFFFFF;
			font: normal 15px "Microsoft YaHei";
		}
		
		#top {
			position: absolute;
			top: 0;
			left: 0;
			right: 0;
			height: 70px;
			background-color: #303030;
		}
		
		#top_logo {
			width: 300px;
			float: left;
			vertical-align: middle;
			height: 65px;
			line-height: 65px;
			padding: 1px 1px 1px 40px;
		}
		
		#top_links {
			width: 480px;
			height: 65px;
			float: right;
			line-height: 65px;
			color: #ADADAD;
			line-height: 65px;
			position: relative;
		}
		
		#top_op {
			width: 400px;
		}
		
		#top_op ul {
			list-style-type: none;
		}
		
		#top_op ul li {
			display: inline-block;
			margin-right: 20px;
		}
		
		#top_op ul li img {
			vertical-align: text-top;
		}
		
		#top_links a:link,#nav_links a:visited,#nav_links a:hover,#nav_links a:active
			{
			list-style: none;
			text-decoration: none;
			color: #fff;
		}
		
		#top_links a:hover {
			list-style: none;
			text-decoration: underline;
			color: #fff;
		}
		
		#top_close {
			width: 80px;
			position: absolute;
			right: 0px;
			top: 0px;
			border-left: 1px solid #171717;
			vertical-align: text-top;
		}
		
		#main {
			position: absolute;
			left: 280px;
			top: 140px;
			bottom: 0px;
			right: 0px;
			width: auto;
			z-index: 2;
			overflow: hidden;
		}
	</style>
	
	<script type="text/javascript">
	    function logout()
	    {
	       if(confirm("确定要退出本系统吗??"))
		   {
			   window.parent.location="<%=path %>/login.jsp";
		   }
	    }
	</script>
	
  </head>
  
  <body>
      <div id="top" style="height: 120px;">
		<div id="top_logo" style="margin-top: 30px;">
			<!-- <img alt="logo" src="logo.jpg" width="274" height="49" style="vertical-align:middle;"> -->
			<div style="font-family: 微软雅黑;font-size: 23px;color: white;width: 500px;">小区物业管理系统</div>
		</div>
		<div id="top_links">
			<div id="top_op" style="margin-top: 40px;">
				<c:if test="${sessionScope.userType==0}">
				<img alt="当前用户" src="<%=path %>/images/user.jpg">：系统管理员
				</c:if>
				
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
				<img alt="今天是" src="<%=path %>/images/date.jpg">：<SCRIPT>setInterval("clock.innerHTML=new Date().toLocaleString()+'&nbsp;&nbsp;'+''.charAt(new Date().getDay());",1000)</SCRIPT><SPAN id=clock></SPAN>
			</div>
			<div id="top_close" style="margin-top: 41px;">
				<a href="javascript:void(0);" onclick="logout();" target="_parent">
					<img alt="退出系统" title="退出系统" src="<%=path %>/images/close.jpg" style="position: relative; top: 10px; left: 25px;">
				</a>
			</div>
		</div>
	</div>
  </body>
</html>
