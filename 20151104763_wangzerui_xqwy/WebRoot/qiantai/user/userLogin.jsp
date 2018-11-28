<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
   String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

  <head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<link href="<%=path %>/css/templatemo_style.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
       
    </style>
    
    
    <script language="javascript">
		    function login()
	        {
	           if(document.userLogin.userName.value=="")
	           {
	               alert("请输入账号");
	               return;
	           }
	           if(document.userLogin.userPw.value=="")
	           {
	               alert("请输入密码");
	               return;
	           }
	           
	           document.getElementById("indicator").style.display="block";
			   loginService.login(document.userLogin.userName.value,document.userLogin.userPw.value,1,callback);
	        }
	        
	        
	        function callback(data)
			{
			    document.getElementById("indicator").style.display="none";
			    if(data=="no")
			    {
			        alert("用户名或密码错误");
			    }
			    if(data=="yes")
			    {
			        alert("通过验证,系统登录成功");
			        var url="<%=path %>/qiantai/default.jsp";
			        window.location.href=url;
			    }
			    
			}  
	</script>
  </head>
  
<body>

<jsp:include flush="true" page="/qiantai/top.jsp"/>


<table border="0">
   <tr>
      <td valign="top" align="left" >
         <div style="margin-left: 150px;"><jsp:include flush="true" page="/qiantai/right.jsp"/></div>
      </td>
      <td valign="top" align="left">
          <div style="margin-top: 10px;margin-left: 10px;border:0px solid  #CCCCCC;width: 950px;">
              <form action="" name="userLogin" method="post">
	                                  <table width="100%"  border="0" cellpadding="8" cellspacing="1">
										    <tr align='center' height="32">
											    <td width="10%" align="right" style="font-size: 13px;">
											                  账号：
											    </td>
											    <td width="90%" align="left">
											         <input type="text" name="userName" style="width: 288px;"/>
											    </td>
											</tr>
											<tr align='center' height="32">
											    <td width="10%" align="right" style="font-size: 13px;">
											        密码：
											    </td>
											    <td width="90%" align="left">
											         <input type="text" name="userPw" style="width: 288px;"/>
											    </td>
											</tr>
											<tr align='center' height="30">
											    <td width="10%" align="right" style="font-size: 13px;">
											        &nbsp;
											    </td>
											    <td width="90%" align="left">
											       <input type="button" value="登陆" onclick="login()" style="width: 100px;height: 24px;"/>
	                                          	   <img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
											    </td>
											</tr>
										 </table> 
                     </form> 
	      </div>
      </td>
   </tr>
</table>

<div id="templatemo_footer_wrapper">
	<jsp:include flush="true" page="/qiantai/down.jsp"/>
</div>
</body>

</html>
