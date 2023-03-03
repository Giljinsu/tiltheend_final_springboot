<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>브랜드명</title>
		<link
		  href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
		  rel="stylesheet"
		  integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
		  crossorigin="anonymous"
		/>
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
		<link rel="stylesheet" href="../css/main.css">
		<style>
      * {
        /* border: 1px solid gray; */
      }
      #left-column {
        /* border: 1px solid red; */
        width: 13%
      }
      #right-column {
        /* border: 1px solid red; */
        width: 70%
      }
			.clothes_name {
				height:80px;
			}
			</style>
	</head>
	<body>
		<%@ include file="../header.jsp" %>
  <!-- modal -->
  <div class="modal fade" id="modalTarget">
      <div class="modal-dialog modal-dialog-centered">
          <div class="modal-content" style="background-color: rgba(0, 0, 0, 0.7);">
              <div class="modal-header" style="color: white;">
                  Search
                  <button class="btn btn-secondary close_button" data-bs-dismiss="modal"
                      style="border: 0; background-color: rgba(0, 0, 0, 0);">
                      <span class="material-symbols-outlined">
                      close
                      </span></button>
              </div>
              <div class="modal-body d-flex align-items-center">
                  <input type="text" class="form-control me-3">
                  <a href="" style="color: white;">
                      <span class="material-symbols-outlined">search</span>
                  </a>
              </div>
          </div>    
      </div>
  </div>
		<main class="mb-4" style="margin-top:100px">

			<div class="container d-flex align-items-stretch">
				
				<!-- 사이드바 -->
				<div class="me-3 pe-3 border-end pt-4 pb-4" id="left-column">
					<div><a href="">전체</a></div>
					<div><a href="">여성</a></div>
					<div><a href="">남성</a></div>
					<div><a href="">신상품</a></div>
					<div><a href="">세일중</a></div>
					<div><a href="">상의</a></div>
					<div><a href="">아우터</a></div>
					<div><a href="">바지</a></div>
					<div><a href="">신발</a></div>
					<div><a href="">모자</a></div>
					<div><a href="">가방</a></div>
				</div> 
				<div id="right-column">
					<div class="pt-4 pb-4">상품 > 전체</div>

					<div class="fs-5 mb-3">베스트 상품 리스트</div>
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
																	begin="${i*4}" end="${i*4+3}">
																	<%-- 각 row 마다 4개씩 제품카드를 집어넣기 --%>
												<a href="item_info" class="col-3 mb-3">
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
					
					<!-- 일반 상품 리스트 -->
					<div class="fs-5 mt-5 mb-3">상품 리스트</div>
					<div class="row">
						<c:forEach items="${resultMap}" var="item" varStatus="loop">
							<a href="/shop/${item.PRODUCT_ID}" class="col-3 mb-3">
								<div class="card" style="">
									<%-- <img class="card-img-top" src="../refer/shop_img/shop1.jpg" alt="Card image cap"> --%>
									<img class="card-img-top" src="/files/${item.PHYSICALFILE_NAME}/${item.ORGINALFILE_NAME}" alt="Card image cap">
									<div class="card-body">
										<div class="card-title">브랜드: ${item.BRAND}</div>
										<div class="card-text clothes_name">${item.CLOTHES_NAME}</div>
										<div class="card-text">할인률: ${item.DISCOUNT_RATE}</div>
										<div class="card-text">가격: <fmt:formatNumber value="${item.PRICE}" pattern="#,###"/>원</div>
									</div>
								</div>
							</a>
						</c:forEach>
						
						
					</div>
					<!-- pagination -->
					<div class="container d-flex justify-content-center mt-4">
						<nav aria-label="Page navigation example" class="">
							<ul class="pagination">
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
				</div>
			</div>
		</main>
		<%@ include file="../footer.jsp" %>
		<script>
			var myCarousel = document.querySelector('#myCarousel')
			var carousel = new bootstrap.Carousel(myCarousel, {
				interval: 3000,
				wrap: true
			})
		</script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
			crossorigin="anonymous"></script>
	  
	</body>
</html>