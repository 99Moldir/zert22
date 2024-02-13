<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Информация о студенте</title>
</head>
<body>
    <h1>Информация о студенте</h1>

    <jsp:useBean id="student" class="pr.Prim" scope="request">
        <jsp:setProperty property="fname" name="student" value="<%= request.getParameter("fname") %>"/>
        <jsp:setProperty property="gpi" name="student" value="<%= request.getParameter("gpi") %>"/>
    </jsp:useBean>


    <p>Фамилия: ${student.fname}</p>
    <p>GPI: ${student.gpi}</p>

    <p>
        <%-- Проверка GPI и отображение статуса допуска --%>
        <% double admissionGPI = 3.5; %>
        <% if (student.getGpi() >= admissionGPI) { %>
            Вы допущены
        <% } else { %>
            Ваш GPI меньше чем <%= admissionGPI %>. Вы недопущены.
        <% } %>
    </p>
</body>
</html>
