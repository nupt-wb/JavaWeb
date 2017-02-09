<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL测试</title>
</head>
<body>
	
	
<!-- 	jstl与el组合输出数值的值 -->
	<c:forEach items="${arr}" var="arrayElement">
		${arrayElement} <br/> 
	</c:forEach>
	
<!-- 	对象 -->
<!--  对象的属性可以为private。对象的属性在使用时，去掉方法名中的get，并将首字母改为小写即可(也就是说对象中必须存在get方法) -->
	${userObject.name} 
	${userObject["name"] }
	${userObject.getName()} <br/>
	
<!-- 	map -->

	${mapObj.name }
	${mapObj["name"] } <br/>
	
<!-- List -->

	<c:forEach items="${listObj}" var="Element">
		${Element}
	</c:forEach>
	<br/>
	
<!-- 	List<Map> -->
	<c:forEach items="${ListMapObject}" var="Element">
		${Element.name}
		${Element["name"] }
	</c:forEach>
	
</body>
</html>