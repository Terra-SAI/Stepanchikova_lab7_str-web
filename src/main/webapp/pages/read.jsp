<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
        crossorigin="anonymous">
  <title>Read</title>
</head>
<body>
<jsp:include page="index.jsp"/>
<table class="table">
  <thead>
  <tr>
    <th scope="col">id</th>
    <th scope="col">Name</th>
    <th scope="col">Class</th>
    <th scope="col">Race</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="player" items="${players}">
    <tr>
      <th><c:out value="${player.getId()}"/></th>
      <td>${player.getName()}</td>
      <td>${player.getDndClass()}</td>
      <td>${player.getDndRace()}</td>
    </tr>
  </c:forEach>
  </tbody>
</table>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous">
</script>
</body>
</html>
