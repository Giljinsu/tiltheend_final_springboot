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
    <header class="fixed-top bg-white border-bottom">
      <nav class="navbar navbar-expand">
        <div class="d-flex align-items-center">
          <a href="./index.html" style="font-weight: 1000" class="navbar-brand fs-4 ms-2">브랜드명</a>
        </div>
        <div class="w-100">
          <div class="short-div">
            <div style="width: 100%" class="d-flex justify-content-between align-items-center">
              <div class="navbar-nav">
                <a class="nav-link ms-4 fs-5 text-dark"  href="/shop/shop">상품</a>
                <!-- <div class="d-flex nav-item">
                  <a href="" class="nav-link fs-5 dropdown-toggle text-dark" data-bs-toggle="dropdown">게시판</a>
                  <div class="dropdown-menu">
                    <a href="./coordinationBoard.html" class="dropdown-item">코디 게시판</a>
                    <a href="./qna.html" class="dropdown-item">Q&A</a>
                    <a href="./announcement.html" class="dropdown-item">공지사항</a>
                  </div>
                </div> -->
                <a href="./coordinationBoard.html" class="nav-link fs-5 text-dark">코디게시판</a>
                <a href="./qna.html" class="nav-link fs-5 text-dark">Q&A</a>
                <a href="./announcement.html" class="nav-link fs-5 text-dark">공지사항</a>
              </div>
              <div class="navbar-nav">
                <a href="login.html" class="nav-link me-4 fs-5 d-flex align-items-center">
                  <span class="material-symbols-outlined">person</span>
                </a>
                <a href="shoppingcart.html" class="nav-link me-4 fs-5 d-flex align-items-center">
                  <span class="material-symbols-outlined">shopping_cart_checkout</span>
                </a>
                <a href="#modalTarget" data-bs-toggle="modal" class="nav-link d-flex align-items-center me-4 fs-5" style="text-align: c">
                  <span class="material-symbols-outlined">search</span>
                </a>
              </div>
            </div>
          </div>
          <!-- <div class="short-div d-flex justify-content-between navbar-nav">
            <div class="d-flex">
              <a class="nav-link ms-4 text-dark" href="shop.html">여성</a>
              <a class="nav-link ms-2 text-dark" href="shop.html">남성</a>
              <a class="nav-link ms-2 text-dark" href="shop.html">BEST</a>
              <a class="nav-link me-2 text-dark" href="shop.html">상의</a>
              <a class="nav-link me-2 text-dark" href="shop.html">아우터</a>
              <a class="nav-link me-2 text-dark" href="shop.html">바지</a>
              <a class="nav-link me-2 text-dark" href="shop.html">신발</a>
              <a class="nav-link me-2 text-dark" href="shop.html">모자</a>
              <a class="nav-link me-2 text-dark" href="shop.html">가방</a>
            </div>
          </div> -->
        </div>
      </nav>
    </header>
    <!-- modal -->
    <div class="modal fade" id="modalTarget">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content" style="background-color: rgba(0, 0, 0, 0.7)">
          <div class="modal-header" style="color: white">
            Search
            <button class="btn btn-secondary close_button" data-bs-dismiss="modal" style="border: 0; background-color: rgba(0, 0, 0, 0)">
              <span class="material-symbols-outlined"> close </span>
            </button>
          </div>
          <div class="modal-body d-flex align-items-center">
            <input type="text" class="form-control me-3" />
            <a href="" style="color: white">
              <span class="material-symbols-outlined">search</span>
            </a>
          </div>
        </div>
      </div>
    </div>
    <!-- 헤더 여기까지 복사해야함 -->
    </body>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
</html>