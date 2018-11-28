<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
     <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
     <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
     <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
     
     <script type="text/javascript">
        function userLogout()
        {
            document.getElementById("indicator1").style.display="block";
            loginService.userLogout(callback1);
        }
        
        
        function callback1(data)
		{
		    document.getElementById("indicator1").style.display="none";
		    if(data=="no")
		    {
		        alert("系统错误，请联系管理员");
		    }
		    if(data!="no")
		    {
		        alert("安全退出系统");
		        var url="<%=path %>/qiantai/default.jsp"
		        window.location.href=url;
		    }
		}
		
		function auser()
        {
            var targetWinUrl="<%=path %>/auser/index.jsp";
			var targetWinName="newWin";
			var features="width="+screen.width+" ,height="+screen.height+" ,toolbar=yes, top=0, left=0, menubar=yes, scrollbars=yes, resizable=yes,location=no, status=yes";
			var new_win=window.open(targetWinUrl,targetWinName,features);
        }
     </script>
     
  </head>
<body>
<div id="templatemo_site_title_bar_wrapper" style="height: 140px;background-color: black">
    <table border="0" align="center" width="100%">
        <tr>
            <td align="left" valign="top" width="60%">
                <div style="font-size: 29px;margin-left: 350px;margin-top: 55px;">小区物业管理系统 </div>
            </td>
            <td align="left" valign="top" width="40%">
                <div style="font-size: 14px;margin-left: 10px;margin-top: 100px;">
                    <c:if test="${sessionScope.userType !=1 }">
			            <a href="<%=path %>/qiantai/user/userReg.jsp" style="color: white;font-size: 13px;">业主注册</a>
			            &nbsp;&nbsp;
			            <a href="<%=path %>/qiantai/user/userLogin.jsp" style="color: white;font-size: 13px;">登陆</a>
		            </c:if>
		            <c:if test="${sessionScope.userType ==1 }">
			            <a href="#" style="color: white;font-family: 微软雅黑;">欢迎您：${sessionScope.user.userName }</a>&nbsp;&nbsp;
			            <a href="#" style="color: white;font-family: 微软雅黑;" onclick="userLogout()">退出系统</a>&nbsp;&nbsp;
			            <img id="indicator1" src="<%=path %>/img/loading.gif" style="display:none"/>
		            </c:if>
                </div>
            </td>
        </tr>
    </table>
</div>


<div id="templatemo_menu_wrapper">
	<div id="templatemo_menu" style="height: 40px;">
   		<ul style="margin-left: 200px;">
            <li><a href="<%=path %>/qiantai/default.jsp" style="font-size: 15px;">系统首页</a></li>
            <li><a href="<%=path %>/liuyanban?type=liuyanbanAll" style="font-size: 15px;">系统留言板</a></li>
            <li><a href="<%=path %>/xinwen?type=xinwenAll" style="font-size: 15px;">新闻资讯</a></li>
        </ul>
    </div>
</div>
</body>
</html>
