<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" href="/css/admin.css" />
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
              <a href="/admin/admin" class="text-decoration-none nav-link fs-5 fw-bold text-dark">베스트 상품 통계</a>
            </li>
          </ul>
          <ul class="list-unstyled">
            <li class="d-flex align-items-center">
              <a href="/admin/admin_list" class="text-decoration-none nav-link fs-5 fw-bold text-dark">게시판</a>
            </li>
          </ul>
        </div>
      </nav>
      <!-- 내용 -->
      <div style="margin-left: auto; margin-right: auto; width: 75%" class="container pt-3">
        <div id="head" class="fw-bold fs-4">베스트 상품 통계</div>
        <table class="table table-hover text-center mt-2">
          <tbody>
            <tr>
              <td class="col-md-1">순위</td>
              <td class="col-md-2">상품</td>
              <td class="">판매 수</td>
              <td class="col-md-1">매출</td>
              <td class="col-md-2">배송 완료</td>
              <td class="col-md-2">배송 준비</td>
              <td class="col-md-2">기능</td>
            </tr>
            <tr>
              <td class="col-md-1">1</td>
              <td class="col-md-2">상품1</td>
              <td class="">322</td>
              <td class="col-md-1">322,000</td>
              <td class="col-md-1">320</td>
              <td>2</td>
              <td>
                <form action="">
                  <div class="btn btn-sm btn-outline-secondary">배송</div>
                </form>
              </td>
            </tr>
            <tr>
              <td>2</td>
              <td>상품2</td>
              <td>224</td>
              <td>224,000</td>
              <td>223</td>
              <td>1</td>
              <td>
                <form action="">
                  <div class="btn btn-sm btn-outline-secondary">배송</div>
                </form>
              </td>
            </tr>
            <tr>
              <td>3</td>
              <td>상품3</td>
              <td>151</td>
              <td>151,000</td>
              <td>150</td>
              <td>0</td>
              <td>
                <form action="">
                  <div class="btn btn-sm btn-outline-secondary">배송</div>
                </form>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </main>
  </body>
  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"
  ></script>
</html>
