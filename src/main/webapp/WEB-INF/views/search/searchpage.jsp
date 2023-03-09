<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>브랜드명</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="/css/main.css" />
    <link rel="stylesheet" href="/css/coordinationBoard.css">
  </head>
  <body>
    <%@ include file="../header.jsp" %>

    <main class="container" style="margin-top: 5rem; width: 98%; margin-left: auto; margin-right: auto">
      <h1 class ="mb-5">Search : ${searchtext} </h1>
        <div>
          <h3>상품</h3>
            <div class="row">
          	<c:forEach items="${productLists}" var="productList" varStatus="loop">
							<a href="/shop/${productList.PRODUCT_ID}" class="col-3 mb-3">
								<div class="card" style="">
									<%-- <img class="card-img-top" src="../refer/shop_img/shop1.jpg" alt="Card image cap"> --%>
									<img class="card-img-top" style="height:20rem;" src="/files/${productList.PHYSICALFILE_NAME}/${productList.ORGINALFILE_NAME}" alt="Card image cap">
									<div class="card-body">
										<div class="card-title">브랜드: ${productList.BRAND}</div>
										<div class="card-text clothes_name">${productList.CLOTHES_NAME}</div>
										<div class="card-text">할인률: ${productList.DISCOUNT_RATE}</div>
										<div class="card-text">가격: <fmt:formatNumber value="${productList.PRICE}" pattern="#,###"/>원</div>
									</div>
								</div>
							</a>
						</c:forEach>
            </div>
        </div>

        <div>
          <h3>코디</h3>
          <div class="row row-cols-1 row-cols-md-4">
          
          <c:forEach items="${coordinationLists}" var="coordinationList" varStatus="loop">
          <%-- action="/coordination/view/${item.COORDINATION_ID}" --%>
          <form id="" action="/coordination/view" method="post">
              <%-- 하드코딩 --%>
              <%-- <input type="hidden" name="UID" value="U0003">  --%>

              <input type="hidden" name="SOURCE_UNIQUE_SEQ" value="${coordinationList.COORDINATION_ID}">
              <input type="hidden" name="COORDINATION_ID" value="${coordinationList.COORDINATION_ID}">
              <button class="btn btn_link col mb-3">
              <%-- <a href="" onclick="document.getElementById('form_${loop.index}').submit();" class="col mb-3"> --%>
                  <div class="card border-light h-100">
                      <img src="/files/${coordinationList.PHYSICALFILE_NAME}/${coordinationList.ORGINALFILE_NAME}" class="card-image" alt="" loading="lazy" />
                      <div class="card-body text-start">
                          <div class="card-title">${coordinationList.TITLE}</div>
                          <div class="card-text">${coordinationList.USERNAME}</div>
                          <div class="card-text-viewcount">조회수 : ${coordinationList.VIEWS} </div>
                      </div>
                  </div>
              <%-- </a> --%>
              </button>
          </form>
          </c:forEach>
          </div>
        </div>

        <div>
          <h3>QNA</h3>
          <table class="table table-hover text-center mt-2">
        <tbody>
          <tr>
            <td class="col-md-1" id="number">번호</td>
            <td class="col-md-2" id="cate">구분</td>
            <td class="" id="title">제목</td>
            <td class="col-md-1" id="id">작성자</td>
            <td class="col-md-1" id="date">날짜</td>
          </tr>
          <c:forEach items="${qnaLists}" var="qnaList" varStatus="loop">
            <tr>
              <td class="col-md-1" id="number">${loop.count}</td>
              <td class="col-md-2" id="cate">
                <c:choose>
                  <c:when test="${qnaList.CATEGORY eq 'repair'}">
                    교환/반품/수선
                  </c:when>
                  <c:when test="${qnaList.CATEGORY eq 'delivery'}">
                    출고/배송
                  </c:when>
                  <c:when test="${qnaList.CATEGORY eq 'cancle'}">
                    주문/취소
                  </c:when>
                  <c:when test="${qnaList.CATEGORY eq 'ect'}">
                    기타
                  </c:when>
                </c:choose>
              </td>
              <td class="" id="title"><a href="/list/qna/board/${qnaList.POST_NO_QNA}">${qnaList.TITLE}</a></td>
              <td class="col-md-1" id="id">${qnaList.USERNAME}</td>
              <td class="col-md-2" id="date">${qnaList.DATE}</td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
        </div>

        <div>
          <h3>FAQ</h3>
      <table class="table table-hover text-center mt-2">
        <tbody>
          <tr>
            <td class="col-md-1" id="number">번호</td>
            <td class="col-md-2" id="cate">구분</td>
            <td class="" id="title">제목</td>
            <td class="col-md-1" id="id">작성자</td>
            <td class="col-md-1" id="date">날짜</td>
          </tr>
          <c:forEach items="${faqLists}" var="faqList" varStatus="loop">
            <tr>
              <td class="col-md-1" id="number">${loop.count}</td>
              <td class="col-md-2" id="cate">
                <c:choose>
                  <c:when test="${faqList.CATEGORY eq 'repair'}">
                    교환/반품/수선
                  </c:when>
                  <c:when test="${faqList.CATEGORY eq 'delivery'}">
                    출고/배송
                  </c:when>
                  <c:when test="${faqList.CATEGORY eq 'cancle'}">
                    주문/취소
                  </c:when>
                  <c:when test="${faqList.CATEGORY eq 'ect'}">
                    기타
                  </c:when>
                </c:choose>
              </td>
              <td class="" id="title"><a href="list/faq/board/${faqList.POST_NO_FAQ}">${faqList.TITLE}</a></td>
              <td class="col-md-1" id="id">${faqList.USERNAME}</td>
              <td class="col-md-2" id="date">${faqList.DATE}</td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
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
