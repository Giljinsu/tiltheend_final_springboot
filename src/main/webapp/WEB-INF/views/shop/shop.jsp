<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>λΈλλλͺ</title>
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
				
				<!-- μ¬μ΄λλ° -->
				<div class="me-3 pe-3 border-end pt-4 pb-4" id="left-column">
					<div><a href="/shop2/shop">μ μ²΄</a></div>
					<div><a href="/shop2/women">μ¬μ±</a></div>
					<div><a href="/shop2/men">λ¨μ±</a></div>
					<div><a href="/shop2/new">μ μν</a></div>
					<div><a href="/shop2/sale">μΈμΌμ€</a></div>
					<div><a href="/shop2/top">μμ</a></div>
					<div><a href="/shop2/outer">μμ°ν°</a></div>
					<div><a href="/shop2/pants">λ°μ§</a></div> 
					<div><a href="/shop2/shoes">μ λ°</a></div>
					<div><a href="/shop2/hats">λͺ¨μ</a></div>
					<div><a href="/shop2/bags">κ°λ°©</a></div>
				</div> 
				<div id="right-column">
						<div class="pt-4 pb-4">μν > 
							<c:if test="${category.equals('all')}">μ μ²΄</c:if>
							<c:if test="${category.equals('women')}">μ¬μ±</c:if>
							<c:if test="${category.equals('men')}">λ¨μ±</c:if>
							<c:if test="${category.equals('new')}">μ μν</c:if>
							<c:if test="${category.equals('sale')}">μΈμΌμ€</c:if>
							<c:if test="${category.equals('top')}">μμ</c:if>
							<c:if test="${category.equals('outer')}">μμ°ν°</c:if>
							<c:if test="${category.equals('pants')}">λ°μ§</c:if>
							<c:if test="${category.equals('shoes')}">μ λ°</c:if>
							<c:if test="${category.equals('hats')}">λͺ¨μ</c:if>
							<c:if test="${category.equals('bags')}">κ°λ°©</c:if>
						</div>

					<div class="fs-5 mb-3">λ² μ€νΈ μν λ¦¬μ€νΈ</div>
					<div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-bs-target="#myCarousel" data-bs-slide-to="0" class="active"></li>
							<li data-bs-target="#myCarousel" data-bs-slide-to="1"></li>
							<li data-bs-target="#myCarousel" data-bs-slide-to="2"></li>
						</ol>

						<!-- Slides -->
						<div class="carousel-inner">
							<c:forEach begin="0" end="2" var="i"> <!-- 3κ°μ ROWλ₯Ό CAROUSELμ μ½μνκΈ° -->
								<c:if test="${i==0}">
									<div class="carousel-item active">
								</c:if>
								<c:if test="${i>0}">
									<div class="carousel-item">
								</c:if>
										<div class="row">
											<c:forEach items="${resultMapBestProduct}" var="item" varStatus="loop"
																	begin="${i*4}" end="${i*4+3}">
																	<%-- κ° row λ§λ€ 4κ°μ© μ νμΉ΄λλ₯Ό μ§μ΄λ£κΈ° --%>
												<a href="/shop/${item.PRODUCT_ID}" class="col-3 mb-3">
													<div class="card" style="">
														<div class="d-flex align-items-center" style="height:293px">
															<img class="card-img-top" src="/files/${item.PHYSICALFILE_NAME}/${item.ORGINALFILE_NAME}" alt="Card image cap">
														</div>
														<div class="card-body">
															<div class="card-title">Ranking #${loop.index+1}</div>
															<div class="card-text">λμ νλ§€λ:${item.SALES_VOLUME}κ°</div>
															<div class="card-text">λΈλλ: ${item.BRAND}</div>
															<div class="card-text clothes_name">${item.CLOTHES_NAME}</div>
															<div class="card-text">ν μΈλ₯ : ${item.DISCOUNT_RATE}</div>
															<div class="card-text">κ°κ²©: 
																<fmt:formatNumber value="${item.PRICE}" pattern="#,###"/>μ
															</div>
														</div>
													</div>
												</a>
											</c:forEach>
										</div>
									</div>
							</c:forEach> <!-- 3κ°μ ROWλ₯Ό CAROUSELμ μ½μνκΈ° -->
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
					
					<!-- μΌλ° μν λ¦¬μ€νΈ -->
					<div class="fs-5 mt-5 mb-3">μν λ¦¬μ€νΈ</div>
					<div class="row">
						<c:forEach items="${resultMap}" var="item" varStatus="loop">
							<a href="/shop/${item.PRODUCT_ID}" class="col-3 mb-3">
								<div class="card" style="">
									<%-- <img class="card-img-top" src="../refer/shop_img/shop1.jpg" alt="Card image cap"> --%>
									<div class="d-flex align-items-center" style="height:293px">
										<img class="card-img-top" src="/files/${item.PHYSICALFILE_NAME}/${item.ORGINALFILE_NAME}" alt="Card image cap">
									</div>
									<div class="card-body">
										<div class="card-title">λΈλλ: ${item.BRAND}</div>
										<div class="card-text clothes_name">${item.CLOTHES_NAME}</div>
										<div class="card-text">ν μΈλ₯ : ${item.DISCOUNT_RATE}</div>
										<div class="card-text">κ°κ²©: <fmt:formatNumber value="${item.PRICE}" pattern="#,###"/>μ</div>
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