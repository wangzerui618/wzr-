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
		    function init()
	        {
	           loginService.louSelect(callBack);
	        }
	        
	        function callBack(data)
	        {
	            DWRUtil.addOptions("lou_id",data,"id","louhao");
	        }
			
            
            function cxcx()
            {
                if(document.formAdd.menpai.value=="")
                {
                    alert("请输入门牌");
                    return false;
                }
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
  
<body onload="init()">

<jsp:include flush="true" page="/qiantai/top.jsp"/>


<table border="0">
   <tr>
      <td valign="top" align="left" >
         <div style="margin-left: 150px;"><jsp:include flush="true" page="/qiantai/right.jsp"/></div>
      </td>
      <td valign="top" align="left">
          <div style="margin-top: 10px;margin-left: 10px;border:0px solid  #CCCCCC;width: 950px;">
              <form action="<%=path %>/user?type=userReg" name="formAdd" method="post">
				  <table width="100%"  border="0" cellpadding="8" cellspacing="1">
						    <tr align='center' height="28">
							    <td width="10%" align="right">
							                  楼号：
							    </td>
							    <td width="90%" align="left">
							        <select name="lou_id" id="lou_id" style="width: 285px;">
									</select>
							    </td>
							</tr>
							<tr align='center' height="28">
							    <td width="10%" align="right">
							          单元：
							    </td>
							    <td width="90%" align="left">
							        <select style="width: 285px;" name="danyuan">
			                            <option value="1单元">1单元</option>
				                        <option value="2单元">2单元</option>
				                        <option value="3单元">3单元</option>
			                        </select>
							    </td>
							</tr>
							<tr align='center' height="28">
							    <td width="10%" align="right">
							          门牌：
							    </td>
							    <td width="90%" align="left">
							        <input type="text" name="menpai" style="width: 280px;"/>
							    </td>
							</tr>
							<tr align='center' height="28">
							    <td width="10%" align="right">
							          住房面积：
							    </td>
							    <td width="90%" align="left">
							        <input type="text" name="mianji" style="width: 280px;"/>（支持2为小数）
							    </td>
							</tr>
							<tr align='center' height="28">
							    <td width="10%" align="right">
							         姓名：
							    </td>
							    <td width="90%" align="left">
							        <input type="text" name="xingming" style="width: 280px;"/>
							    </td>
							</tr>
							<tr align='center' height="28">
							    <td width="10%" align="right">
							          联系电话：
							    </td>
							    <td width="90%" align="left">
							        <input type="text" name="dianhua" style="width: 330px;"/>
							    </td>
							</tr>
							<tr align='center' height="28">
							    <td width="10%" align="right">
							          账号：
							    </td>
							    <td width="90%" align="left">
							        <input type="text" name="userName" style="width: 280px;"/>
							    </td>
							</tr>
							<tr align='center' height="28">
							    <td width="10%" align="right">
							         密码：
							    </td>
							    <td width="90%" align="left">
							        <input type="text" name="userPw" style="width: 280px;" value="000000"/>
							    </td>
							</tr>
							<tr align='center' height="28">
							    <td width="10%" align="right">
							        &nbsp;
							    </td>
							    <td width="90%" align="left">
							       <input type="button" value="提交" onclick="cxcx()" style="width: 88px;"/>&nbsp; 
							       <input type="reset" value="重置" style="width: 88px;"/>&nbsp;
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
