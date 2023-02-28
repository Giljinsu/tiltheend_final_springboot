<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>관리자페이지 - 브랜드명</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="/css/admin.css" />
  </head>
  <body>
<%@ include file="../header.jsp" %>
    <main style="margin-top: 8rem; width: 98%; margin-right: auto" class="d-flex">
      <nav class="p-3 bg-secondary navbar-light d-md-block" style="width: 250px">
        <div id="sidebar">
          <ul class="list-unstyled">
            <li class="d-flex align-items-center">
              <p class="text-decoration-none nav-link fs-3 fw-bold text-light">관리자페이지</p>
            </li>
          </ul>
          <ul class="list-unstyled">
            <li class="d-flex align-items-center">
              <a href="/admin/first" class="text-decoration-none nav-link fs-5 fw-bold text-dark">베스트 상품 통계</a>
            </li>
          </ul>
          <ul class="list-unstyled">
            <li class="d-flex align-items-center">
              <a href="/admin/second" class="text-decoration-none nav-link fs-5 fw-bold text-dark">게시판</a>
            </li>
          </ul>
        </div>
      </nav>
      <!-- 내용 -->
      <div style="margin-left: auto; margin-right: auto; width: 75%" class="container pt-3">
        <div id="head" class="fw-bold fs-4">베스트 상품 통계</div>
        <table class="table table-hover text-center mt-2">
          <tbody>
            <tr>
              <td class="col-md-1">순위</td>
              <td class="">상품</td>
              <td class="col-md-2">판매 수</td>
              <td class="col-md-2">매출</td>
            </tr>
            <c:forEach items="${resultMap}" var="resultData" varStatus="loop">
              <tr>
                <td class="col-md-1">${loop.count}</td>
                <td class="">${resultData.CLOTHES_NAME}</td>
                <td class="col-md-2">${resultData.SALES_VOLUME}</td>
                <c:set var="wholeprice" value="${resultData.PRICE * resultData.SALES_VOLUME}"/>
                <td class="col-md-1">${wholeprice}</td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>
    </main>
  </body>
  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"
  ></script>
</html>
