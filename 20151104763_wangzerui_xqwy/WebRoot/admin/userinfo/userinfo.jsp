<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 

<%String path = request.getContextPath();%>

<!doctype html>
<html>
<head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="<%=path %>/css/base.css" type="text/css" media="all"/>
	
	<style rel="stylesheet" type="text/css">
	
    </style>

    <script type="text/javascript">
		function check1()
	    {
	        if(document.form1.xingming.value=="")
	        {
	            alert("请输入姓名");
	            return false;
	        }
	        if(document.form1.userName.value=="")
	        {
	            alert("请输入账号");
	            return false;
	        }
	        if(document.form1.userPw.value=="")
	        {
	            alert("请输入密码");
	            return false;
	        }
	        document.form1.submit();
	    }
	</script>
</head>
  
<body style="margin: 10px;">

			           <form action="<%=path %>/user?type=userEditMe" name="form1" method="post">
										<table width="100%" border="0" align="left" cellpadding="0" cellspacing="1">
											<tr>
												<td width="6%" height="40" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
													姓名：
												</td>
												<td width="94%" bgcolor="#FFFFFF" align="left">
													<input type="text" name="xingming" style="width: 290px;" value="${sessionScope.user.xingming }"/>
												</td>
											</tr>
											<tr>
												<td width="6%" height="40" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
													联系电话：
												</td>
												<td width="94%" bgcolor="#FFFFFF" align="left">
													<input type="text" name="dianhua" style="width: 290px;" value="${sessionScope.user.dianhua }"/>
												</td>
											</tr>
											<tr>
												<td width="6%" height="40" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
													账号：
												</td>
												<td width="94%" bgcolor="#FFFFFF" align="left">
													<input type="text" name="userName" style="width: 290px;" value="${sessionScope.user.userName }" readonly="readonly"/>(只读)
												</td>
											</tr>
											<tr>
												<td width="6%" height="40" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
													密码：
												</td>
												<td width="94%" bgcolor="#FFFFFF" align="left">
													<input type="password" name="userPw" value="000000" style="width: 290px;" value="${sessionScope.user.userPw }"/>
												</td>
											</tr>
											<tr>
												<td width="6%" height="40" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
													&nbsp;
												</td>
												<td width="94%" bgcolor="#FFFFFF" align="left">
												    <input type="hidden" name="id" value="${sessionScope.user.id }">
													<input type="button" value="确定" onclick="check1();" style="width: 70px;"/>
													<input type="reset" value="重置" style="width: 70px;"/>
												</td>
											</tr>
										</table>
								   </form>

</body>
</html>
