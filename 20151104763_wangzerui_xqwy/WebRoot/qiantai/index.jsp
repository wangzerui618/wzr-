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
    
    <script type="text/javascript" src="<%=path %>/js/lunbo.js"></script>
    <script language="javascript">

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
          <div style="margin-top: 10px;margin-left: 10px;border:0px solid  #CCCCCC;width: 900px;">
			  <fieldset style="width:900px;border:0px solid  #CCCCCC;" ><legend class="fieldtitle"><!-- 最新新闻 --></legend>
				          <div id="imgADPlayer" style="margin: 0px;"></div>
							<script>
								/* PImgPlayer.addItem( "恩恩111", "#", "/dfxt/images/1393499756.jpg");
								PImgPlayer.addItem( "test2", "#", "/dfxt/images/1393500564.jpg");
								PImgPlayer.addItem( "test3", "#", "/dfxt/images/1393500857.jpg"); */
								<c:forEach items="${sessionScope.xinwenList }" var="xinwen" varStatus="ss">
								   PImgPlayer.addItem( "${xinwen.biaoti}", "<%=path %>/xinwen?type=xinwenDetailQian&id=${xinwen.id}", "<%=path %>/${xinwen.fujian}"); 
								</c:forEach>
								PImgPlayer.init( "imgADPlayer", 900, 300 );
							</script>
			  </fieldset>
			  <fieldset style="width:900px;border:1px solid  #CCCCCC;margin-top: 10px;" ><legend class="fieldtitle">系统介绍</legend>
				 <table class="bill" width="99%">
				    <tr>
				       <td>
				          <c:out value="${sessionScope.jieshao.neirong }" escapeXml="false"></c:out><br/><br/>
				       </td>
				    </tr>
				 </table>
			  </fieldset>
	      </div>
      </td>
   </tr>
</table>

<div id="templatemo_footer_wrapper">
	<jsp:include flush="true" page="/qiantai/down.jsp"/>
</div>
</body>

</html>
