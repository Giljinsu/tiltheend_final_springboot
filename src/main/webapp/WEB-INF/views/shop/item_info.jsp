<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>상품명</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="/css/item_info.css" />
  </head>
  <body>
    <%@ include file="../header.jsp" %>
    <!-- modal-img-1 -->
    <div class="modal fade" id="modal-img-1">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content" style="background-color: rgba(0, 0, 0, 0.2)">
          <img src="/refer/review/review1.jpg" alt="" />
        </div>
      </div>
    </div>
    <!-- modal-img-2 -->
    <div class="modal fade" id="modal-img-2">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content" style="background-color: rgba(0, 0, 0, 0.2)">
          <img src="/refer/review/review2.jpg" alt="" />
        </div>
      </div>
    </div>
    <!-- modal-img-3 -->
    <div class="modal fade" id="modal-img-3">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content" style="background-color: rgba(0, 0, 0, 0.2)">
          <img src="/refer/review/review3.jpg" alt="" />
        </div>
      </div>
    </div>
    <!-- modal-img-4 -->
    <div class="modal fade" id="modal-img-4">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content" style="background-color: rgba(0, 0, 0, 0.2)">
          <img src="/refer/review/review4.jpg" alt="" />
        </div>
      </div>
    </div>
    <main style="margin-top: 60px">
      <div id="wrapper" style="width: 1200px; margin-left: auto; margin-right: auto" class="d-flex">
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
        <div>
          <div id="info">
            <div class="row row-cols-2">
              <!-- carousel -->
              <div class="image col-7" style="height: 950px">
                <div id="carouselControlId" class="carousel slide" data-bs-ride="carousel" style="width: 550px; text-align: center">
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img class="image" src="/refer/item_info/item1.jpg" alt="" />
                    </div>
                    <div class="carousel-item">
                      <img class="image" src="/refer/item_info/item2.jpg" alt="" />
                    </div>
                    <div class="carousel-item">
                      <img class="image" src="/refer/item_info/item3.jpg" alt="" />
                    </div>
                    <div class="carousel-item">
                      <img class="image" src="/refer/item_info/item4.jpg" alt="" />
                    </div>
                  </div>
                  <button class="carousel-control-prev" data-bs-target="#carouselControlId" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                  </button>
                  <button class="carousel-control-next" data-bs-target="#carouselControlId" data-bs-slide="next">
                    <span class="carousel-control-next-icon"></span>
                  </button>
                </div>
              </div>
              <!-- 가격정보 -->
              <div id="price-info" class="col-5">
                <div id="item-info">
                  <div id="name">상품명</div>
                  <div id="item-code">
                    <span style="font-size: 12px; color: gray">상품코드</span>
                  </div>
                  <div id="item-price">
                    <span>상품 가격</span>
                  </div>
                  <div id="item-size">
                    <table border="0">
                      <tr>
                        <th scope="row" style="display: block">SIZE</th>
                        <td style="display: block">
                          <select name="" id="">
                            <option value="*">--- [필수] 사이즈를 선택해 주세요 ---</option>
                            <option value="**" disabled>------------------</option>
                            <option value="24">24</option>
                            <option value="25">25</option>
                            <option value="26">26</option>
                            <option value="27">27</option>
                            <option value="28">28</option>
                            <option value="29">29</option>
                            <option value="30">30</option>
                          </select>
                        </td>
                      </tr>
                    </table>
                  </div>
                </div>
                <hr />
                <div id="total-price" class="d-flex justify-content-between">
                  <strong>총상품금액</strong>
                  <span>0</span>
                </div>
                <div id="buttons" class="d-flex justify-content-center">
                  <div class="btn btn-outline-dark" id="add2cart" style="margin-right: 5px">카트에 담기</div>
                  <div class="btn btn-dark" id="buynow" style="margin-left: 5px">구매</div>
                </div>
              </div>
            </div>
            <!-- 상세정보 -->
            <div id="item-info">
              <div>상품 상세 정보칸입니다.</div>
            </div>
          </div>
          <div id="review-qna">
            <hr />
            <div id="review-rate">
              <!-- review -->
              <div class="row row-cols-2">
                <div style="width: 80%; padding-left: 30px">REVIEW (2)</div>
                <div style="width: 20%; text-align: right; padding-right: 30px">
                  <!-- <a href="./review.html" style="color: black; text-decoration: none">전체 리뷰 보기</a> -->
                </div>
              </div>
              <hr />
              <!-- 별점 -->
              <div class="row row-cols-2">
                <div style="text-align: center">
                  <div>
                    <img src="/refer/review/star.png" alt="" id="star" />
                    <span style="font-size: 40px">4.5</span>
                  </div>
                  <div style="font-weight: 700"><span>2</span>명의 고객님이 리뷰를 남겼습니다.</div>
                </div>
                <div>
                  <div class="row row-cols-2">
                    <div class="rate" style="width: 25%">아주 좋아요 (1)</div>
                    <progress class="progressbar" value="1" max="2" style="width: 75%"></progress>
                    <div class="rate" style="width: 25%">맘에 들어요 (1)</div>
                    <progress class="progressbar" value="1" max="2" style="width: 75%"></progress>
                    <div class="rate" style="width: 25%">보통이에요 (0)</div>
                    <progress class="progressbar" value="0" max="2" style="width: 75%"></progress>
                    <div class="rate" style="width: 25%">그냥 그래요 (0)</div>
                    <progress class="progressbar" value="0" max="2" style="width: 75%"></progress>
                    <div class="rate" style="width: 25%">별로에요 (0)</div>
                    <progress class="progressbar" value="0" max="2" style="width: 75%"></progress>
                  </div>
                </div>
              </div>
              <hr />
              <!-- 리뷰들 -->
              <div id="review1" class="mt-1 ms-3">
                <div style="display: flex; align-items: center">
                  <span class="material-symbols-outlined" style="color: #ffc107; font-variation-settings: 'FILL' 1"> grade </span>
                  <span class="material-symbols-outlined" style="color: #ffc107; font-variation-settings: 'FILL' 1"> grade </span>
                  <span class="material-symbols-outlined" style="color: #ffc107; font-variation-settings: 'FILL' 1"> grade </span>
                  <span class="material-symbols-outlined" style="color: #ffc107; font-variation-settings: 'FILL' 1"> grade </span>
                  <span class="material-symbols-outlined" style="color: #b3b3b3; font-variation-settings: 'FILL' 1"> grade </span>
                  <span style="margin-left: 0.3rem">맘에 들어요</span>
                  <span style="color: gray; font-size: 7px; margin-left: 75%">2023.02.23</span>
                </div>
                <div class="mt-3">리뷰 내용</div>
                <div style="justify-items: start" class="mt-3">
                  <a href="#modal-img-1" data-bs-toggle="modal" style="display: inline-flex">
                    <div class="card border-bold" style="width: 100px">
                      <img src="/refer/review/review1.jpg" class="card-image-top" style="height: 100px; width: 100px" />
                    </div>
                  </a>
                  <a href="#modal-img-2" data-bs-toggle="modal" style="display: inline-flex; margin-left: 0.3rem">
                    <div class="card border-bold" style="width: 100px">
                      <img src="/refer/review/review2.jpg" class="card-image-top" style="height: 100px; width: 100px" />
                    </div>
                  </a>
                </div>
              </div>
              <hr />
              <div id="review2" class="mt-1 ms-3">
                <div style="display: flex; align-items: center">
                  <span class="material-symbols-outlined" style="color: #ffc107; font-variation-settings: 'FILL' 1"> grade </span>
                  <span class="material-symbols-outlined" style="color: #ffc107; font-variation-settings: 'FILL' 1"> grade </span>
                  <span class="material-symbols-outlined" style="color: #ffc107; font-variation-settings: 'FILL' 1"> grade </span>
                  <span class="material-symbols-outlined" style="color: #ffc107; font-variation-settings: 'FILL' 1"> grade </span>
                  <span class="material-symbols-outlined" style="color: #ffc107; font-variation-settings: 'FILL' 1"> grade </span>
                  <span style="margin-left: 0.3rem">아주 좋아요</span>
                  <span style="color: gray; font-size: 7px; margin-left: 75%">2023.01.31</span>
                </div>
                <div class="mt-3">리뷰 내용</div>
                <div style="justify-items: start" class="mt-3">
                  <a href="#modal-img-3" data-bs-toggle="modal" style="display: inline-flex">
                    <div class="card border-bold" style="width: 100px">
                      <img src="/refer/review/review3.jpg" class="card-image-top" style="height: 100px; width: 100px" />
                    </div>
                  </a>
                  <a href="#modal-img-4" data-bs-toggle="modal" style="display: inline-flex; margin-left: 0.3rem">
                    <div class="card border-bold" style="width: 100px">
                      <img src="/refer/review/review4.jpg" class="card-image-top" style="height: 100px; width: 100px" />
                    </div>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
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
