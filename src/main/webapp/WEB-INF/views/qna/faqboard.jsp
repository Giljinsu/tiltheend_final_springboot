<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>QNA</title>
    <!-- 글 제목이 들어감-->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="/css/board.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  </head>
  <body>
    <%@ include file="../header.jsp" %>
    <c:set var="data" value="${resultMap}"/>
    <main style="margin-top: 160px" class="container">
      <div id="faq" class="">FAQ</div>
      <div id="board-head" class="mb-2">
        <!-- 글 제목 -->
        <span class="fw-bold fw-2 ms-2" id="title">${data[0].TITLE}</span>
        <span>
          <!-- 작성자 -->
          <span id="id">${data[0].USERNAME}</span>
          <!-- 날짜 -->
          <span id="date">${data[0].DATE}</span>
        </span>
      </div>
      <hr />
      <!-- 내용 -->
      <div class="mt-4 mb-4 ms-2">
        <span>${data[0].CONTENT}</span>
      </div>
      <hr />
      <div class="mt-2 ms-2" style="height: 32.5px" id="back">
        <a href="/list/faq">목록으로</a>
      </div>
    </main>

    <%@ include file="../footer.jsp" %>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
