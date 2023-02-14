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
    <link rel="stylesheet" href="./css/list.css" />
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
                <a class="nav-link ms-4 fs-5 text-dark" href="shop.html">상품</a>
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
    <main style="margin-top: 160px" class="container">
      <div id="head"><a href="" class="fw-bold me-4">Q&A</a> <a href="./faq.html">FAQ</a></div>

      <div id="category" class="mt-2 mb-2 d-flex" style="justify-content: space-between">
        <div>
          <a href="">전체</a>
          <a href="">교환/반품/수선</a>
          <a href="">주문/취소</a>
          <a href="">기타</a>
        </div>
        <!-- search -->
        <div id="search">
          <input type="text" placeholder value fw-filter fw-msg fw-label />
          <a href="" style="color: black; height: 360px">
            <span class="material-symbols-outlined">search</span>
          </a>
        </div>
      </div>
      <table class="table table-hover text-center mt-2">
        <tbody>
          <tr>
            <td class="col-md-1" id="number">번호</td>
            <td class="col-md-2" id="cate">구분</td>
            <td class="" id="title"><a href="./board.html">제목</a></td>
            <td class="col-md-1" id="id">작성자</td>
            <td class="col-md-1" id="date">날짜</td>
          </tr>
          <tr>
            <td class="col-md-1" id="number">3</td>
            <td class="col-md-2" id="cate">교환/반품/수선</td>
            <td class="" id="title"><a href="./board.html">testTitle</a></td>
            <td class="col-md-1" id="id">testID</td>
            <td class="col-md-1" id="date">2023.01.05</td>
          </tr>
          <tr>
            <td>2</td>
            <td>기타</td>
            <td><a href="./board.html">testTitle</a></td>
            <td>testID</td>
            <td>2023.01.05</td>
          </tr>
          <tr>
            <td>1</td>
            <td>주문/취소</td>
            <td><a href="./board.html">testTitle</a></td>
            <td>testID</td>
            <td>2023.01.05</td>
          </tr>
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

    <footer class="border-top p-5 text-secondary bg-light" style="font-size: 0.8rem">
      <div class="">
        <div class="row justify-content-between">
          <div class="col-12 col-md-8">
            <div>
              <span><a href="" class="text-decoration-none text-secondary border-end border-secondary pe-3">모바일 App</a></span>
              <span><a href="" class="text-decoration-none text-secondary border-end border-secondary ps-2 pe-3">저작권 안내</a></span>
              <span><a href="" class="text-decoration-none text-secondary border-end border-secondary ps-2 pe-3">개인정보 처리방침</a></span>
              <span><a href="" class="text-decoration-none text-secondary border-end border-secondary ps-2 pe-3">이용약관</a></span>
              <span><a href="" class="text-decoration-none text-secondary border-secondary ps-2 pe-3">프라이버시 센터</a></span>
            </div>
            <div class="mt-3">
              <span><a href="" class="text-decoration-none text-secondary border-end border-secondary pe-3">윤리경영 사이버 감사실</a></span>
              <span><a href="" class="text-decoration-none text-secondary border-end border-secondary ps-2 pe-3">영상정보처리기기 운영관리방침</a></span>
              <span><a href="" class="text-decoration-none text-secondary border-secondary ps-2 pe-3">사이트맵</a></span>
            </div>
            <div class="mt-3">
              <div>고객센터: 080-213-2312</div>
            </div>
          </div>
          <div class="col-12 col-md-2 d-flex align-items-center justify-content-end">
            <span class="material-symbols-outlined me-2"> home </span>
            <span class="material-symbols-outlined me-2"> settings </span>
            <span class="material-symbols-outlined me-2"> star </span>
            <span class="material-symbols-outlined"> favorite </span>
          </div>
        </div>
      </div>
    </footer>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
