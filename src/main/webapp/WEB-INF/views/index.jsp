<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" href="./css/main.css" />
  </head>
  <body>
    <%@ include file="header.jsp" %>

    <main style="margin-top: 5rem; width: 98%; margin-left: auto; margin-right: auto">
      <!-- <img src="./refer/main3.jpg" style="width: 100%; height: 100%;" alt=""> -->
      <div class="d-flex">
        <a href="" class="mainImg_parent main1_width me-1">
          <img src="./refer/mainImg/model1.jpg" class="mainImg1 main1-lg" alt="">
          <div class="mainImg1_text">
            <div style="font-size: 6rem;" >TEST OFF</div>
            <div class="text-center" style="font-size: 3rem;" >-86%</div>
          </div>
        </a>
        <a href="" class="mainImg_parent main2_width me-1">
          <img src="./refer/mainImg/model3.jpg" class="mainImg2 me-1" alt="">
          <div class="mainImg1_text">
            <h1>TEST OFF</h1>
            <h3 class="text-center">-86%</h3>
          </div>
        </a>
        <a href="" class="mainImg_parent main2_width">
          <img src="./refer/mainImg/model2.jpg" class="mainImg2" alt="">
          <div class="mainImg1_text">
            <h1>TEST OFF</h1>
            <h3 class="text-center">-86%</h3>
          </div>
        </a>

      </div>

      <!-- TOP Ranking -->
      <div class="fs-3 mt-5 mb-3">
        Top Ranking
        <a href="" class="align-items-bottom" style="font-size: 0.8rem; text-decoration-line: none; color: rgba(0, 0, 0, 0.5)">더보기</a>
      </div>
      <!--<div class="row row-cols-2 row-cols-md-5 g-4">
        <a href="./item_info.html" class="col-2">
          <div class="card border-light h-100">
            <img src="./refer/clothes/top1.jpg" class="card-image-top" alt="" />
            <div class="card-body">
              <div class="card-title">브랜드명(링크연결)</div>
              <div class="card-text">의류명</div>
              <div class="card-text fs-6">가격</div>
            </div>
          </div>
        </a>
        <a href="" class="col">
          <div class="card border-light h-100">
            <img src="./refer/clothes/top2.jpg" class="card-image-top" alt="" />
            <div class="card-body">
              <div class="card-title">브랜드명</div>
              <div class="card-text">의류명2</div>
              <div class="card-text">가격</div>
            </div>
          </div>
        </a>
        <a href="" class="col">
          <div class="card border-light h-100">
            <img src="./refer/clothes/top3.jpg" class="card-image-top" alt="" />
            <div class="card-body">
              <div class="card-title">브랜드명</div>
              <div class="card-text">의류명3</div>
              <div class="card-text">가격</div>
            </div>
          </div>
        </a>
        <a href="" class="col">
          <div class="card border-light h-100">
            <img src="./refer/clothes/top4.jpg" class="card-image-top" alt="" />
            <div class="card-body">
              <div class="card-title">브랜드명</div>
              <div class="card-text">의류명4</div>
              <div class="card-text">가격</div>
            </div>
          </div>
        </a>
        <a href="" class="col">
          <div class="card border-light h-100">
            <img src="./refer/clothes/top4.jpg" class="card-image-top" alt="" />
            <div class="card-body">
              <div class="card-title">브랜드명</div>
              <div class="card-text">의류명4</div>
              <div class="card-text">가격</div>
            </div>
          </div>
        </a> -->
      </div>
      <!-- carousel 적용 -->
      <div class="" style="">
            <div id="carouselId" class="carousel slide" data-bs-ride="carousel">
              <!-- carousel indicator -->
            <!-- <div class="carousel-indicators"> -->
              <!-- 갯수만큼 넣으면 됨 -->
              <!-- <button data-bs-target="#carouselId" data-bs-slide-to="0" class="active bg-black"></button>
              <button data-bs-target="#carouselId" data-bs-slide-to="1" class="active bg-black"></button>
              <button data-bs-target="#carouselId" data-bs-slide-to="2" class="active bg-black"></button> -->
              <!-- data-bs-targets을 줘서 어떤것인지 암  active를 해야 작동함-->
          <!-- </div> -->
                <div class="carousel-inner">
                    <div class="carousel-item active" data-bs-interval="8000">
                        <div class="row row-cols-2 row-cols-md-5 g-4">
                            <a href="./item_info.html" class="col-2">
                                <div class="card border-light h-100">
                                    <img src="./refer/clothes/top1.jpg" class="card-image-top" alt="">
                                    <div class="card-body">
                                        <div class="card-title">브랜드명(링크연결)</div>
                                        <div class="card-text">의류명</div>
                                        <div class="card-text fs-6">가격</div>
                                    </div>
                                </div>
                            </a>
                            <a href="" class="col">
                                <div class="card border-light  h-100">
                                    <img src="./refer/clothes/top2.jpg" class="card-image-top" alt="">
                                    <div class="card-body">
                                        <div class="card-title">브랜드명</div>
                                        <div class="card-text">의류명2</div>
                                        <div class="card-text">가격</div>
                                    </div>
                                </div>
                            </a>
                            <a href="" class="col">
                                <div class="card border-light h-100">
                                    <img src="./refer/clothes/top3.jpg" class="card-image-top" alt="">
                                    <div class="card-body">
                                        <div class="card-title">브랜드명</div>
                                        <div class="card-text">의류명3</div>
                                        <div class="card-text">가격</div>
                                    </div>
                                </div>
                            </a>
                            <a href="" class="col">
                                <div class="card border-light h-100">
                                    <img src="./refer/clothes/top4.jpg" class="card-image-top" alt="">
                                    <div class="card-body">
                                        <div class="card-title">브랜드명</div>
                                        <div class="card-text">의류명4</div>
                                        <div class="card-text">가격</div>
                                    </div>
                                </div>
                            </a>
                            <a href="" class="col">
                                <div class="card border-light h-100">
                                    <img src="./refer/clothes/top4.jpg" class="card-image-top" alt="">
                                    <div class="card-body">
                                        <div class="card-title">브랜드명</div>
                                        <div class="card-text">의류명4</div>
                                        <div class="card-text">가격</div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="carousel-item" data-bs-interval="8000">
                        <div class="row row-cols-2 row-cols-md-5 g-4">
                            <a href="" class="col">
                                <div class="card border-light  h-100">
                                    <img src="./refer/clothes/top2.jpg" class="card-image-top" alt="">
                                    <div class="card-body">
                                        <div class="card-title">브랜드명</div>
                                        <div class="card-text">의류명2</div>
                                        <div class="card-text">가격</div>
                                    </div>
                                </div>
                            </a>
                            <a href="./item_info.html" class="col-2">
                                <div class="card border-light h-100">
                                    <img src="./refer/clothes/top1.jpg" class="card-image-top" alt="">
                                    <div class="card-body">
                                        <div class="card-title">브랜드명(링크연결)</div>
                                        <div class="card-text">의류명</div>
                                        <div class="card-text fs-6">가격</div>
                                    </div>
                                </div>
                            </a>
                            <a href="" class="col">
                                <div class="card border-light h-100">
                                    <img src="./refer/clothes/top4.jpg" class="card-image-top" alt="">
                                    <div class="card-body">
                                        <div class="card-title">브랜드명</div>
                                        <div class="card-text">의류명4</div>
                                        <div class="card-text">가격</div>
                                    </div>
                                </div>
                            </a>
                            <a href="" class="col">
                                <div class="card border-light h-100">
                                    <img src="./refer/clothes/top4.jpg" class="card-image-top" alt="">
                                    <div class="card-body">
                                        <div class="card-title">브랜드명</div>
                                        <div class="card-text">의류명4</div>
                                        <div class="card-text">가격</div>
                                    </div>
                                </div>
                            </a>
                            <a href="" class="col">
                                <div class="card border-light h-100">
                                    <img src="./refer/clothes/top3.jpg" class="card-image-top" alt="">
                                    <div class="card-body">
                                        <div class="card-title">브랜드명</div>
                                        <div class="card-text">의류명3</div>
                                        <div class="card-text">가격</div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <button class="carousel-control-prev" data-bs-target="#carouselId" data-bs-slide="prev">
                      <span class="carousel-control-prev-icon"></span>
                  </button>
                  <button class="carousel-control-next" data-bs-target="#carouselId" data-bs-slide="next">
                      <span class="carousel-control-next-icon"></span>
                  </button>
                </div>
            </div>
        </div>

      <!-- 코디 게시판 -->
      <div class="fs-3 mt-5 mb-3">
        코디
        <a href="coordinationBoard.html" class="align-items-bottom" style="font-size: 0.8rem; text-decoration-line: none; color: rgba(0, 0, 0, 0.5)">더보기</a>
      </div>
      <div class="row row-cols-1 row-cols-md-4 g-4 mb-5">
        <a href="./coordination.html" class="col">
          <div class="card border-light h-100">
            <img src="./refer/coordination/model1.jpg" class="card-image" alt="" />
            <div class="card-body">
              <div class="card-title">브랜드명(링크걸림)</div>
              <div class="card-text">의류명</div>
              <div class="card-text fs-6">가격</div>
            </div>
          </div>
        </a>
        <a href="" class="col">
          <div class="card border-light h-100">
            <img src="./refer/coordination/model2.jpg" class="card-image" alt="" />
            <div class="card-body">
              <div class="card-title">브랜드명</div>
              <div class="card-text">의류명2</div>
              <div class="card-text">가격</div>
            </div>
          </div>
        </a>
        <a href="" class="col">
          <div class="card border-light h-100">
            <img src="./refer/coordination/model3.jpg" class="card-image" alt="" />
            <div class="card-body">
              <div class="card-title">브랜드명</div>
              <div class="card-text">의류명2</div>
              <div class="card-text">가격</div>
            </div>
          </div>
        </a>
        <a href="" class="col">
          <div class="card border-light h-100">
            <img src="./refer/coordination/model2.jpg" class="card-image" alt="" />
            <div class="card-body">
              <div class="card-title">브랜드명</div>
              <div class="card-text">의류명2</div>
              <div class="card-text">가격</div>
            </div>
          </div>
        </a>
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
