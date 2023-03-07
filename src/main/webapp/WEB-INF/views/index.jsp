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
    <%@ include file="header.jsp" %>

    <main style="margin-top: 5rem; width: 98%; margin-left: auto; margin-right: auto">
      <!-- <img src="./refer/main3.jpg" style="width: 100%; height: 100%;" alt=""> -->
      <div class="d-flex">
        <a href="" class="mainImg_parent main1_width me-1">
          <img src="/refer/mainImg/model1.jpg" class="mainImg1 main1-lg" alt="">
          <div class="mainImg1_text">
            <div style="font-size: 6rem;" >TEST OFF</div>
            <div class="text-center" style="font-size: 3rem;" >-86%</div>
          </div>
        </a>
        <a href="" class="mainImg_parent main2_width me-1">
          <img src="/refer/mainImg/model3.jpg" class="mainImg2 me-1" alt="">
          <div class="mainImg1_text">
            <h1>TEST OFF</h1>
            <h3 class="text-center">-86%</h3>
          </div>
        </a>
        <a href="" class="mainImg_parent main2_width">
          <img src="/refer/mainImg/model2.jpg" class="mainImg2" alt="">
          <div class="mainImg1_text">
            <h1>TEST OFF</h1>
            <h3 class="text-center">-86%</h3>
          </div>
        </a>

      </div>

      <%-- 새로 삽입하는 Top Ranking --%>
      <div class="fs-3 mt-5 mb-3">Top Ranking
        <a href="/shop/shop" class="align-items-bottom" style="font-size: 0.8rem; text-decoration-line: none; color: rgba(0, 0, 0, 0.5)">더보기</a>      
      </div>
					<div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-bs-target="#myCarousel" data-bs-slide-to="0" class="active"></li>
							<li data-bs-target="#myCarousel" data-bs-slide-to="1"></li>
							<li data-bs-target="#myCarousel" data-bs-slide-to="2"></li>
						</ol>

						<!-- Slides -->
						<div class="carousel-inner">
							<c:forEach begin="0" end="2" var="i"> <!-- 3개의 ROW를 CAROUSEL에 삽입하기 -->
								<c:if test="${i==0}">
									<div class="carousel-item active">
								</c:if>
								<c:if test="${i>0}">
									<div class="carousel-item">
								</c:if>
										<div class="row">
											<c:forEach items="${resultMapBestProduct}" var="item" varStatus="loop"
																	begin="${i*6}" end="${i*6+5}">
																	<%-- 각 row 마다 4개씩 제품카드를 집어넣기 --%>
												<a href="/shop/${item.PRODUCT_ID}" class="col-2 mb-3">
													<div class="card" style="">
														<img class="card-img-top" src="/files/${item.PHYSICALFILE_NAME}/${item.ORGINALFILE_NAME}" alt="Card image cap">
														<div class="card-body">
															<div class="card-title">Ranking #${loop.index+1}</div>
															<div class="card-text">누적판매량:${item.SALES_VOLUME}개</div>
															<div class="card-text">브랜드: ${item.BRAND}</div>
															<div class="card-text clothes_name">${item.CLOTHES_NAME}</div>
															<div class="card-text">할인률: ${item.DISCOUNT_RATE}</div>
															<div class="card-text">가격: 
																<fmt:formatNumber value="${item.PRICE}" pattern="#,###"/>원
															</div>
														</div>
													</div>
												</a>
											</c:forEach>
										</div>
									</div>
							</c:forEach> <!-- 3개의 ROW를 CAROUSEL에 삽입하기 -->
						</div>

						<!-- Controls -->
						<button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
			</div>

      <%-- 코디 게시판 갱신 --%>
      <div class="fs-3 mt-5 mb-3">코디
        <a href="/coordination/list" class="align-items-bottom" style="font-size: 0.8rem; text-decoration-line: none; color: rgba(0, 0, 0, 0.5)">더보기</a>
      </div>
      <c:set  var="item" value="${resultMap}"/>
      <div class="row row-cols-1 row-cols-md-4">
        <c:forEach items="${resultMap}" var="item" varStatus="loop">
          <%-- action="/coordination/view/${item.COORDINATION_ID}" --%>
          <form id="" action="/coordination/view" method="post">
              <%-- 하드코딩 --%>
              <input type="hidden" name="UID" value="U0003"> 

              <input type="hidden" name="SOURCE_UNIQUE_SEQ" value="${item.COORDINATION_ID}">
              <input type="hidden" name="COORDINATION_ID" value="${item.COORDINATION_ID}">
              <button class="btn btn_link col mb-3">
              <%-- <a href="" onclick="document.getElementById('form_${loop.index}').submit();" class="col mb-3"> --%>
                  <div class="card border-light h-100">
                      <img src="/files/${item.PHYSICALFILE_NAME}/${item.ORGINALFILE_NAME}" class="card-image" alt="">
                      <div class="card-body text-start">
                          <div class="card-title">${item.TITLE}</div>
                          <div class="card-text">${item.USERNAME}</div>
                          <div class="card-text-viewcount">조회수 : ${item.VIEWS} </div>
                      </div>
                  </div>
              <%-- </a> --%>
              </button>
          </form>
        </c:forEach>
      </div>

      

    </main>

    <%@ include file="footer.jsp" %>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
