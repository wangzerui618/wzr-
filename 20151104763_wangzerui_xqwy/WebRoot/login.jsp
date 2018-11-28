<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
   String path = request.getContextPath();
%>

<!DOCTYPE html>
<html lang="en" class="no-js">

  <head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<link href="<%=path %>/css/supersized.css" rel="stylesheet" type="text/css" />
	<link href="<%=path %>/css/login.css" rel="stylesheet" type="text/css" />
	<link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	
	
	<script src="<%=path %>/js/jquery-1.8.2.min.js"></script>
	<script type="text/javascript" src="<%=path %>/js/jquery.form.js"></script>
	<script type="text/javascript" src="<%=path %>/js/tooltips.js"></script>
	<script type="text/javascript" src="<%=path %>/js/login.js"></script>
	
	<script src="<%=path %>/js/supersized.3.2.7.min.js"></script>
    <script src="<%=path %>/js/supersized-init.js"></script>
    <script src="<%=path %>/js/scripts.js"></script> 
    
    <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>

	<script language="javascript">
		function login()
		{                                                                                         
		     if(document.ThisForm.userName.value=="")
			 {
			 	alert("请输入账号");
				document.ThisForm.userName.focus();
				return false;
			 }
			 if(document.ThisForm.userPw.value=="")
			 {
			 	alert("请输入密码");
				document.ThisForm.userPw.focus();
				return false;
			 }
			
			 document.getElementById("indicator").style.display="block";
			 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,0,callback);
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
		        window.location.href="<%=path %>/loginSuccess.jsp";
		    }
		    
		}
		
    </script>
  </head>
  
  <body>
 <div class="page-container">
	<div class="main_box">
		<div class="login_box">
			<div class="login_logo" style="font-family: 微软雅黑;font-size: 26px; ">
				小区物业管理系统
			</div>
		
			<div class="login_form">
				<form action="<%=path %>/adminLogin.action" name="ThisForm" id="login_form" method="post">
					<div class="form-group">
						<label for="j_username" class="t">账号：</label> 
						<input name="userName" type="text" class="form-control x319 in" autocomplete="off">
					</div>
					<div class="form-group">
						<label for="j_password" class="t">密码：</label> 
						<input name="userPw" type="password" class="password form-control x319 in">
					</div>
					<div class="form-group" style="display: none">
						<label for="j_captcha" class="t">类型：</label>
						<select name="userType" style="width: 343px;font-family: 微软雅黑"">
					            <option value="0">0</option>
					            <option value="2">2</option>
					    </select>
					</div>
					<div class="form-group">
						<label class="t"></label>
						<label for="j_remember" class="m"></label>
					</div>
					<div class="form-group space">
						<label class="t"></label>　　　
						<button type="button" class="btn btn-primary btn-lg" style="width: 123px;"  onclick="login()">&nbsp;登&nbsp;录&nbsp </button>
						<input type="reset" value="&nbsp;重&nbsp;置&nbsp;" class="btn btn-default btn-lg" style="width: 123px;">
						<img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
					</div>
				</form>
			</div>
		</div>
		<div class="bottom"></div>
	</div>
</div>
</body>

</html>
