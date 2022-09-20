<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>윤계상기</title>
</head>
<body>
<h1>윤계상기</h1>
100 + 200 = <%=plus(100, 200)%>
</body>
</html>
<%!
  int plus(int a, int b) {
     return a + b;
}
%> 