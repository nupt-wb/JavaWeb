<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
jstl
<!-- out -->
<br/>
<c:out value="aaaa<br/>aaaa" escapeXml="true" ></c:out>
<c:out value="aaaa<br/>aaaa" escapeXml="false" ></c:out>
<br/>

<!-- set -->
<c:set var="name" value="wang" scope="request" />
<c:out value="${name }" />
${name }

<br/>

<!-- remove -->
<c:set var="softName" value="明日科技编程词典" scope="request" />
		移出前输出变量softName的值：
<c:out value="${requestScope.softName}" />
		<c:remove var="softName" scope="request" />
		移除后变量softName的值：
		<c:out value="${requestScope.softName}" default="空" />


<br/>
<!-- catch -->
<c:catch var="exception">
<%
int number=Integer.parseInt(request.getParameter("number"));
out.println("合计金额为："+521*number);
%>
</c:catch>
抛出的异常信息：<c:out value="${exception}"/>


<br/>

<!-- jstl的if语句没有else -->
<c:if var="result" test="${empty param.username}" >
	aaaa
</c:if>

<c:if test="${!result}">
	[${param.username }] 欢迎访问我公司网站！
</c:if>

<!-- jstl中的choose when otherwise代替if else -->
<c:choose>
	<c:when test="${empty param.username}">
	 aaa
	</c:when>
	<c:otherwise>
		[${param.username }] 欢迎访问我公司网站！
	</c:otherwise>
</c:choose>

<br/>
===================================
<br/>
<c:set var="hours">
	<%=new java.util.Date().getHours() %>
</c:set>
<c:set var="second">
	<%=new java.util.Date().getMinutes() %>
</c:set>
<c:choose>
	<c:when test="${hours>1 && hours<7}">早上好！</c:when>
	<c:when test="${hours>=7 && hours<12}" >上午好！</c:when>
	<c:when test="${hours>=12 && hours<18}">下午好！</c:when>
	<c:when test="${hours>=18 && hours<24}">晚上好！</c:when>
</c:choose>
<br/>
 现在时间是：${hours}:${second}
<br/>

==============================================================
<%Random rnd=new Random();%>
<!-- 将抽取的幸运数字保存到变量中 -->
<c:set var="luck">
	<%=rnd.nextInt(10)%>
</c:set>
<c:choose>
	<c:when test="${luck==6}">恭喜你，中了一等奖！</c:when>
	<c:when test="${day==7}" >恭喜你，中了二等奖！</c:when>
	<c:when test="${day==8}">恭喜你，中了三等奖！</c:when>
	<c:otherwise>谢谢您的参与！</c:otherwise>
</c:choose>

<br/>

<!-- forToken -->
<c:set var="sourceStr" value="Java Web：程序开发范例宝典、典型模块大全；Java：实例完全自学手册、典型模块大全"/>
<b>原字符串：</b><c:out value="${sourceStr}"/>
<br><b>分割后的字符串：</b><br>
<c:forTokens items="${sourceStr}" delims="：、；" var="item">
	${item}<br>
</c:forTokens>
</body>
</html>