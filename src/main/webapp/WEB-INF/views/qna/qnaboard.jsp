<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
    <link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
    <script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
  </head>
  <body>
    <%@ include file="../header.jsp" %>
    <sec:authentication property="principal" var="userDetailsBean" />
    <c:set var="data" value="${resultMap}"/>
    <c:set var="comments" value="${comments}"/>
    <main style="margin-top: 160px" class="container">
      <div id="faq" class="">QNA</div>
      <div id="board-head" class="mb-2">
        <!-- 글 제목 -->
        <span class="fw-bold fw-2 ms-2" id="title">${data.TITLE}</span>
        <span>
          <!-- 작성자 -->
          <span id="id">${data.USERNAME}</span>
          <!-- 날짜 -->
          <span id="date">${data.DATE}</span>
        </span>
      </div>
      <hr />
      <!-- 내용 -->
      <div class="mt-4 mb-4 ms-2">
        <%-- <span>${data.CONTENT}</span> --%>
        <div class="" style="overflow:auto; height: 20rem;">
          <div style="height:100%"> 
            <div id="content"  class="form-control"></div>
          </div>
        </div>
      </div>
      <hr />
      <div class="mb-2">
        <span>답변</span>
        <sec:authorize access="hasRole('ROLE_ADMIN')">
          <c:if test="${not empty comments}">
            <span>
              <form action="/list/qna/delcomment" method="post" style="display: inline-block; margin-left: 90%">
              <%-- 데이터(댓글의 uid) hidden으로 넘겨줘야 함 --%>
                <input type="hidden" name="COMMENT_UID" value="${comments.COMMENT_UID}">
                <input type="hidden" name="SOURCE_UNIQUE_SEQ" value="${data.POST_NO_QNA}">
                <input type="hidden" name="UID" value="${data.POST_NO_QNA}">
                <button class="btn btn-sm btn-outline-danger">
                  삭제
                </button>
              </form>
            </span>
          </c:if>
        </sec:authorize>
      </div>
      <div id="comment">${comments.CONTENT}</div>
      <%-- 답변이 없고 유저의 권한이 관리자일때 --%>
      <%-- && data.ROLE eq 'ADMIN' --%>
      <sec:authorize access="hasRole('ROLE_ADMIN')">
        <c:if test="${empty comments}">
          <!-- 댓글 작성 -->
          <div class="mb-4">
            <form class="w-100 d-flex" action="/list/qna/comment/${data.POST_NO_QNA}" method="post">
              <%-- 하드 코딩 --%>
              <input type="hidden" name="USER_UID" value="${userDetailsBean.UID}"> 
              <%-- ----- --%>
              <input type="hidden" name="SOURCE_UNIQUE_SEQ" value="${data.POST_NO_QNA}">
              <input class="form-control" style="" type="text" name="CONTENT" value="" id="comment">
              <button class="btn" id="commentBtn" style="font-weight: 600; width: 4rem; border: 1px solid gray;">등록</button>
            </form>
          </div>
        </c:if>
      </sec:authorize>
      <hr />
      <div class="mt-2 ms-2" style="height: 32.5px" id="back">
        <a href="/list/qna/1">목록으로</a>
      </div>
    </main>

    <%@ include file="../footer.jsp" %>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
    <script>
      var content = new Quill('#content', {
        modules: {
          // 툴바 없애기
          toolbar: false
        },
        theme: 'snow'
      });
      content.disable(); // 변경못하게함
      content.setContents(${data.CONTENT});
    </script>
  </body>
</html>
