<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <style rel="stylesheet" type="text/css">
		.c1-bline{border-bottom:#999 1px ;border-top:1px;}
		/* .c1-bline{border-bottom:#999 1px dashed;border-top:1px;} */
		.f-right{float:right}
		.f-left{float:left}
		.clear{clear:both}
	</style>
	
    <script type="text/javascript">
        function che()
        {
            if(document.formSea.mingcheng.value=="")
            {
                alert("请输入关键字");
                return false;
            }
            document.formSea.submit();
        }
    </script>
</head>
<body>
<div style="width:250px;margin-top: 10px;padding-bottom:10px;">
      <div style="height:26px;background:url(/xqwy/images/guangguang.PNG);">
         <span style="float:left;font-family: 微软雅黑;font-size: 12px;margin-top: 3px;margin-left: 10px;color: white">系统公告</span>
		 <span style="float:right;font-family: 微软雅黑;font-size: 14px;margin-top: 3px;">&nbsp;</span>
      </div>
      <div style="height: 100%;border:1px solid #696969">
          <c:forEach items="${sessionScope.gonggaoList}" var="gonggao" varStatus="ss">
              <div class="c1-bline" style="margin-top: 8px;">
			       <div class="f-left" style="margin-left: 8px;">
				     <img src="<%=path %>/img/head-mark4.gif" align="middle" class="img-vm" border="0"/> 
			             <a href="<%=path %>/gonggao?type=gonggaoDetailQian&id=${gonggao.id}"><c:out value="${fn:substring(gonggao.title, 0, 16)}" escapeXml="false"></c:out>...</a>
			       </div>
			      <div class="f-right" style="margin-right: 8px;"></div><div class="clear"></div>
			  </div>
	      </c:forEach>
	      <br/>
      </div>
</div>


<div style="width:250px;margin-top: 10px;padding-bottom:10px;">
      <div style="height:26px;background:url(/xqwy/images/guangguang.PNG);">
         <span style="float:left;font-family: 微软雅黑;font-size: 12px;margin-top: 3px;margin-left: 10px;color: white">友情链接</span>
		 <span style="float:right;font-family: 微软雅黑;font-size: 14px;margin-top: 3px;">&nbsp;</span>
      </div>
      <div style="height: 100%;border:1px solid #696969">
          <c:forEach items="${sessionScope.lianjieList}" var="lianjie" varStatus="ss">
              <div class="c1-bline" style="margin-top: 8px;">
			       <div class="f-left" style="margin-left: 8px;">
				     <img src="<%=path %>/img/head-mark4.gif" align="middle" class="img-vm" border="0"/> 
			             <a href="${lianjie.www}" target="_blank">${lianjie.mingcheng}</a>
			       </div>
			      <div class="f-right" style="margin-right: 8px;"></div><div class="clear"></div>
			  </div>
	      </c:forEach>
	      <br/>
      </div>
</div>
<div style="width:250px;margin-top: 10px;padding-bottom:10px;">
      <div style="height:26px;background:url(/xqwy/images/guangguang.PNG);">
         <span style="float:left;font-family: 微软雅黑;font-size: 12px;margin-top: 3px;margin-left: 10px;color: white">联系我们</span>
		 <span style="float:right;font-family: 微软雅黑;font-size: 14px;margin-top: 3px;">&nbsp;</span>
      </div>
      <div style="height: 100%;border:1px solid #696969">
              <div class="c1-bline" style="margin-top: 8px;">
			       <div class="f-left" style="margin-left: 8px;">
			                                   地址：北京路环河大厦1589
			       </div>
			      <div class="f-right" style="margin-right: 8px;"></div><div class="clear"></div>
			  </div>
			  <div class="c1-bline" style="margin-top: 8px;">
			       <div class="f-left" style="margin-left: 8px;">
			                                  电话：13966666666
			       </div>
			      <div class="f-right" style="margin-right: 8px;"></div><div class="clear"></div>
			  </div>
			  <div class="c1-bline" style="margin-top: 8px;">
			       <div class="f-left" style="margin-left: 8px;">
			                                  电子邮箱：xqwy@163.vip.com
			       </div>
			      <div class="f-right" style="margin-right: 8px;"></div><div class="clear"></div>
			  </div>
			  <div class="c1-bline" style="margin-top: 8px;">
			       <div class="f-left" style="margin-left: 8px;">
			                                  传真：010-456932123
			       </div>
			      <div class="f-right" style="margin-right: 8px;"></div><div class="clear"></div>
			  </div>
	      <br/>
      </div>
</div>

</body>
</html>
