<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
          crossorigin="anonymous">
    <title>Create</title>
</head>
<body>
<jsp:include page="index.jsp"/>

<div class="container">
    <div class="row justify-content-center">
        <form class="mt-5 w-25" action="/create" method="post">

            <div class="form-floating mb-3">
                <input type="text" name="name" class="form-control" id="name" placeholder="name@example.com">
                <label for="name">Name</label>
            </div>

            <div class="form-floating mb-3">
                <input type="text" name="dndClass" class="form-control" id="dndClass" placeholder="name@example.com">
                <label for="dndClass">Class</label>
            </div>

            <div class="form-floating mb-3">
                <input type="text" name="dndRace" class="form-control" id="dndRace" placeholder="name@example.com">
                <label for="dndRace">Race</label>
            </div>

            <div class="d-grid gap-2 col-6 mx-auto">
                <button class="btn btn-dark" type="submit">Save</button>
            </div>
        </form>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
