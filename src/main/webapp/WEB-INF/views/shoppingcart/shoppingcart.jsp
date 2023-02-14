<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="./css/shoppingcart.css" />
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
                <a class="nav-link ms-4 fs-5 text-dark"  href="shop.html">상품</a>
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

    <!-- <main style="width: 2000px; margin-left: auto; margin-right: auto; margin-top: 8rem"> -->
      <main class="container" style="margin-top: 5rem">
      <div>
        <h3>Order / Payment</h3>
      </div>
      <div class="mt-4">
        <table class="table" style="text-align: center; vertical-align: middle;">
         <thead>
           <th>전체 1개</th>
           <th><input type="checkbox" name="" id=""></th>
           <th>상품명</th>
           <th>판매가</th>
           <th>할인</th>
           <th>수량</th>
           <th>주문관리</th>
           <th>배송상태</th>
         </thead>
         <tbody>
          <tr>
            <td>1</td>
            <td><input type="checkbox" name="" id=""></td>
            <td>
              <img class="cart_image" src="./refer/clothes/top1.jpg" alt="">
              상품명
            </td>
            <td>1000</td>
            <td>%</td>
            <td>1개</td>
            <td>
              <button class="btn border-dark">삭제하기</button>
            </td>
            <td>
              택배배송입니다
            </td>
          </tr>
         </tbody>
        </table>
        <div>
          <button class="mt-3 btn border-dark">선택 삭제</button>
        </div>
      </div>
      <div class="mt-5" style="font-size: small ">
        <ul>
          <li>브랜드명은 전 상품 무료 배송입니다.</li>
          <li>2개 이상의 브랜드를 주문하신 경우, 개별 배송됩니다.</li>
          <li>결제 시 각종 할인 적용이 달라질 수 있습니다.</li>
          <li>해외배송 상품은 배송료가 추가로 발생될 수 있습니다.-</li>
          <li>장바구니 상품은 최대 1년 보관(비회원 2일)되며 담은 시점과 현재의 판매 가격이 달라질 수 있습니다.</li>
          <li>장바구니에는 최대 100개의 상품을 보관할 수 있으며, 주문당 한번에 주문 가능한 상품수는 100개로 제한됩니다.</li>
          <li>구매 가능 수량이 1개로 제한된 상품은 주문 취소 시, 24시간 내 가상계좌 재주문이 불가합니다.</li>
          <li>수량 제한 상품의 경우, 가상계좌를 통한 주문은 최대 2건까지만 가능합니다.(미입금 주문 기준, 기존 주문 합산)</li>
        </ul>
      </div>
      <div class="mt-5">
        <h5>할인금액</h5>
        <table class="table" style="margin-top: 2rem;">
          <tbody>
            <tr>
              <th>상품 할인</th>
              <td>0원</td>
            </tr>
            <tr>
              <th>등급 할인</th>
              <td>0원</td>
            </tr>
            <tr>
              <th>쿠폰 할인</th>
              <td>0원</td>
            </tr>
            <tr>
              <th>적립금 선 할인</th>
              <td>0원</td>
            </tr>
            <tr>
              <th>적립금 사용</th>
              <td>0원</td>
            </tr>
            <tr>
              <th>할인 합계</th>
              <td>0원</td>
            </tr>
          </tbody>
        </table>
      </div>

      <div style="text-align: center; font-size: large; margin-top: 3rem; margin-bottom: 2rem;">
        상품 금액 <b>1000원</b> - 할인 합계 <b>0원</b> = 최종 결제 금액 <b>1000원</b>
      </div>
      <div style="text-align: center;">
        <button class="btn btn-dark" style="width: 8rem; height: 4rem; margin-bottom: 3rem;">주문하기</button>
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
