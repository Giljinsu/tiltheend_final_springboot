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
    <link rel="stylesheet" href="/css/admin_list.css" />
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
        <!-- qna -->
        <div>
          <div id="head" class="fw-bold fs-4">Q&A</div>
          <table class="table table-hover text-center mt-2 mb-4">
            <tbody>
              <tr>
                <td class="col-md-1" id="number">번호</td>
                <td class="col-md-2" id="cate">구분</td>
                <td class="" id="title">제목</td>
                <td class="col-md-1" id="id">작성자</td>
                <td class="col-md-1" id="date">날짜</td>
                <td class="col-md-2" id="date">상태</td>
                <td class="col-md-2" id="date">기능</td>
              </tr>
              <c:forEach items="${qna}" var="qna" varStatus="loop">
                <tr>
                  <td class="col-md-1" id="number">${loop.count}</td>
                  <td class="col-md-2" id="cate">
                    <c:choose>
                      <c:when test="${qna.CATEGORY eq 'repair'}">
                        교환/반품/수선
                      </c:when>
                      <c:when test="${qna.CATEGORY eq 'delivery'}">
                        출고/배송
                      </c:when>
                      <c:when test="${qna.CATEGORY eq 'cancle'}">
                        주문/취소
                      </c:when>
                      <c:when test="${qna.CATEGORY eq 'ect'}">
                        기타
                      </c:when>
                    </c:choose>
                  </td>
                  <td class="" id="title"><a href="/list/qna/board/${qna.POST_NO_QNA}">${qna.TITLE}</a></td>
                  <td class="col-md-1" id="id">${qna.USERNAME}</td>
                  <td class="col-md-1" id="date">${qna.DATE}</td>
                  <td>${qna.STATUS}</td>
                  <td>
                    <form action="">
                      <div class="btn btn-sm btn-outline-secondary">답변</div>
                    </form>
                  </td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
        <!-- 공지사항 -->
        <div>
          <div id="head" class="fw-bold fs-4">공지사항</div>

          <table class="table table-hover text-center mt-2">
            <tbody>
              <tr>
                <td class="col-md-1" id="number">번호</td>
                <td class="col-md-2" id="cate">구분</td>
                <td class="" id="title">제목</td>
                <td class="col-md-1" id="id">작성자</td>
                <td class="col-md-1" id="date">날짜</td>
                <td class="col-md-3" id="date">기능</td>
              </tr>
              <c:forEach items="${announcement}" var="announcement" varStatus="loop">
                <tr>
                  <td class="col-md-1" id="number">${loop.count}</td>
                  <td class="col-md-2" id="cate">
                    <c:choose>
                      <c:when test="${announcement.CATEGORY eq 'repair'}">
                        교환/반품/수선
                      </c:when>
                      <c:when test="${announcement.CATEGORY eq 'delivery'}">
                        출고/배송
                      </c:when>
                      <c:when test="${announcement.CATEGORY eq 'cancle'}">
                        주문/취소
                      </c:when>
                      <c:when test="${announcement.CATEGORY eq 'ect'}">
                        기타
                      </c:when>
                    </c:choose>
                  </td>
                  <td class="" id="title"><a href="/list/announcement/board/${announcement.POST_NO_ANNO}">${announcement.TITLE}</a></td>
                  <td class="col-md-1" id="id">${announcement.USERNAME}</td>
                  <td class="col-md-1" id="date">${announcement.DATE}</td>
                  <td>
                    <a href="/admin/edit/announcement/${announcement.POST_NO_ANNO}" style="display:inline">
                      <button class="btn btn-sm btn-outline-secondary">수정</button>
                    </a>
                    <a href="/admin/delete/announcement/${announcement.POST_NO_ANNO}" style="display:inline">
                      <button class="btn btn-sm btn-outline-danger">삭제</button>
                    </a>
                  </td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
        <!-- FAQ -->
        <div>
          <div id="head" class="fw-bold fs-4">FAQ</div>
          <table class="table table-hover text-center mt-2">
            <tbody>
              <tr>
                <td class="col-md-1" id="number">번호</td>
                <td class="col-md-2" id="cate">구분</td>
                <td class="" id="title">제목</td>
                <td class="col-md-1" id="id">작성자</td>
                <td class="col-md-1" id="date">날짜</td>
                <td class="col-md-2" id="date">기능</td>
              </tr>
              <c:forEach items="${faq}" var="faq" varStatus="loop">
                <tr>
                  <td class="col-md-1" id="number">${loop.count}</td>
                  <td class="col-md-2" id="cate">
                    <c:choose>
                      <c:when test="${faq.CATEGORY eq 'repair'}">
                        교환/반품/수선
                      </c:when>
                      <c:when test="${faq.CATEGORY eq 'delivery'}">
                        출고/배송
                      </c:when>
                      <c:when test="${faq.CATEGORY eq 'cancle'}">
                        주문/취소
                      </c:when>
                      <c:when test="${faq.CATEGORY eq 'ect'}">
                        기타
                      </c:when>
                    </c:choose>
                  </td>
                  <td class="" id="title"><a href="/list/faq/board/${faq.POST_NO_FAQ}">${faq.TITLE}</a></td>
                  <td class="col-md-1" id="id">${faq.USERNAME}</td>
                  <td class="col-md-1" id="date">${faq.DATE}</td>
                  <td>
                    <a href="/admin/edit/faq/${faq.POST_NO_FAQ}" style="display:inline">
                      <button class="btn btn-sm btn-outline-secondary">수정</button>
                    </a>
                    <a href="/admin/delete/faq/${faq.POST_NO_FAQ}" style="display:inline">
                      <button class="btn btn-sm btn-outline-danger">삭제</button>
                    </a>
                  </td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
          <!-- pagination -->
          <%-- <div class="container d-flex justify-content-center mt-4">
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
          </div> --%>
        </div>
      </div>
    </main>
  </body>
  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"
  >
    function del{
      alert("삭제되었습니다");
    }
  </script>
</html>
