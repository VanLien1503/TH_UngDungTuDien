<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 19/06/2020
  Time: 2:16 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>view</title>
</head>
<body>
<%!
   Map<String,String> dic = new HashMap<>();
%>
<%
    dic.put("hello" , "Xin Chào");
    dic.put("how" , "Thế Nào");
    dic.put("book" , "Quyển Vở");

        String search = request.getParameter("input_text");
        String result = dic.get(search);

            if (result != null) {
                out.println("Word : "+ search+"\n");
                out.println("Result :"+result);
            }else {
                out.println("Not found..!");
            }
%>
</body>
</html>
