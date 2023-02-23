<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>FAQ</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="/css/list.css" />
  </head>
  <body>
    <%@ include file="../header.jsp" %>
    <main style="margin-top: 160px" class="container">
      <div id="head"><a href="/list/qna" class="me-4">Q&A</a> <a href="/list/faq" class="fw-bold">FAQ</a></div>

      <div id="category" class="mt-2 mb-2 d-flex" style="justify-content: space-between">
        <div>
          <a href="/list/faq">전체</a>
          <a href="/list/faq/repair">교환/반품/수선</a>
          <a href="/list/faq/delivery">출고/배송</a>
          <a href="/list/faq/cancle">주문/취소</a>
          <a href="/list/faq/ect">기타</a>
        </div>
        <!-- search -->
        <div id="search">
          <input type="text" placeholder value fw-filter fw-msg fw-label />
          <a href="" style="color: black; height: 360px">
            <span class="material-symbols-outlined">search</span>
          </a>
        </div>
      </div>
      <!-- table -->
      <table class="table table-hover text-center mt-2">
        <tbody>
          <tr>
            <td class="col-md-1" id="number">번호</td>
            <td class="col-md-2" id="cate">구분</td>
            <td class="" id="title">제목</td>
            <td class="col-md-1" id="id">작성자</td>
            <td class="col-md-1" id="date">날짜</td>
          </tr>
          <c:forEach items="${resultMap}" var="resultData" varStatus="loop">
            <tr>
              <td class="col-md-1" id="number">${resultData.POST_NO_FAQ}</td>
              <td class="col-md-2" id="cate">
                <c:choose>
                  <c:when test="${resultData.CATEGORY eq 'repair'}">
                    교환/반품/수선
                  </c:when>
                  <c:when test="${resultData.CATEGORY eq 'delivery'}">
                    출고/배송
                  </c:when>
                  <c:when test="${resultData.CATEGORY eq 'cancle'}">
                    주문/취소
                  </c:when>
                  <c:when test="${resultData.CATEGORY eq 'ect'}">
                    기타
                  </c:when>
                </c:choose>
              </td>
              <td class="" id="title"><a href="/board/${resultData.POST_NO_FAQ}">${resultData.TITLE}</a></td>
              <td class="col-md-1" id="id">${resultData.USERNAME}</td>
              <td class="col-md-2" id="date">${resultData.DATE}</td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
      <!-- pagination -->
      <div class="container d-flex justify-content-center mt-4" id="pagination">
        <nav aria-label="Page navigation example" class="">
          <ul class="pagination pagination-sm">
            <li class="page-item">
              <a class="page-link" href="#" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
              </a>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
              <a class="page-link" href="#" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
              </a>
            </li>
          </ul>
        </nav>
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
