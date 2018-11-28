<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %> 

<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
        
        <link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
        
        
        <script language="javascript">
            
            function c()
            {
                if(document.formAdd.mianji.value=="")
                {
                    alert("请输入住房面积");
                    return false;
                }
                var reg=  /^(-[1-9]|[1-9]|(0[.])|(-(0[.])))[0-9]{0,}(([.]*\d{1,2})|[0-9]{0,})$/;
			    var mianji=document.formAdd.mianji.value; 
			    if(reg.test(mianji)==true)
				{
				   
				}
				if(reg.test(mianji)==false)
				{
				   alert("请输入正确的面积");
				   return false;
				}
                
                
                if(document.formAdd.xingming.value=="")
                {
                    alert("请输入姓名");
                    return false;
                }
                
                if(document.formAdd.userName.value=="")
                {
                    alert("请输入登陆账号");
                    return false;
                }
                
                document.formAdd.submit();
            }
            
        </script>
	</head>

	<body onload="init()" leftmargin="2" topmargin="9" background='<%=path %>/images/allbg.gif'>
			<form action="<%=path %>/user?type=userEdit" name="formAdd" method="post">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#EEF4EA">
					        <td colspan="3" background="<%=path %>/images/wbg.gif" class='title'><span>&nbsp;</span></td>
					    </tr>
						<tr align='center' bgcolor="#FFFFFF" height="28">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						                          面积：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="mianji" style="width: 280px;" value="${requestScope.user.mianji }"/>（支持2为小数）
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" height="28">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						         姓名：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="xingming" style="width: 280px;" value="${requestScope.user.xingming }"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" height="28">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						          电话：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="dianhua" style="width: 280px;" value="${requestScope.user.dianhua }"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" height="28">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						          账号：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="userName" style="width: 280px;" value="${requestScope.user.userName }" readonly="readonly"/>(只读)
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" height="28">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						         密码：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="userPw" style="width: 280px;" value="${requestScope.user.userPw }" readonly="readonly"/>(只读)
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" height="28">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						        &nbsp;
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						       <input type="hidden" name="id" value="${requestScope.user.id }">
						       <input type="button" value="提交" onclick="c()"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
   </body>
</html>
