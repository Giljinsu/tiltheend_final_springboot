<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
    <link rel="stylesheet" href="/css/shoppingcart.css" />
  </head>
  <body>
    <%@ include file="../header.jsp" %>
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
           <c:set var="countAll" value="0" />
            <c:forEach items="${resultMap}" var="count">
            <c:set var="countAll" value="${countAll + count.PRODUCT_COUNT}" />
           </c:forEach>
           <th>전체 ${countAll}개</th>
           <th><input type="checkbox" name="" id=""></th>
           <th>상품명</th>
           <th>판매가</th>
           <th>할인</th>
           <th>수량</th>
           <th>주문관리</th>
         </thead>
         <tbody>
          <c:set var="discountSum" value="0" />
          <c:set var="priceSum" value="0" />
          <c:forEach items="${resultMap}" var="item" varStatus="loop">
          <c:set var="discountSum" value="${discountSum + (item.PRICE*item.DISCOUNT_RATE/100)*item.PRODUCT_COUNT}" />
          <c:set var="priceSum" value="${priceSum + (item.PRICE*item.PRODUCT_COUNT)}" />
          <tr>
            <td>${loop.index+1}</td>
            <td><input type="checkbox" name="" id=""></td>
            <td>
              <img class="cart_image" src="/files/${item.PHYSICALFILE_NAME}/${item.ORGINALFILE_NAME}" alt="">
              ${item.CLOTHES_NAME}
            </td>
            <td>
             <div class style="color:rgba(0,0,0,0.6); ">
              <del><fmt:formatNumber type="number"  pattern="#,###" value="${item.PRICE*item.PRODUCT_COUNT}" />원</del>
             </div>
              <div class="" style="font-weight:600;">
              <fmt:formatNumber type="number"  pattern="#,###" value="${(item.PRICE-(item.PRICE*item.DISCOUNT_RATE/100))*item.PRODUCT_COUNT} " />원
              </div>
            </td>
            <td>${item.DISCOUNT_RATE}%</td>
            <td style="font-weight:600;">${item.PRODUCT_COUNT}</td>
            <td>
              <form action="/shoppingcart/delete" method="post">
                <input type="hidden" name="UID" value="${item.UID}">
                <input type="hidden" name="SHOPPINGCART_ID" value="${item.SHOPPINGCART_ID}">
              <button class="btn border-dark">삭제하기</button>
              </form>
            </td>
          </tr>
          </c:forEach>
          <%-- <tr>
            <td>1</td>
            <td><input type="checkbox" name="" id=""></td>
            <td>
              <img class="cart_image" src="/refer/clothes/top1.jpg" alt="">
              상품명
            </td>
            <td>1000</td>
            <td>%</td>
            <td>1개</td>
            <td>
              <button class="btn border-dark">삭제하기</button>
            </td>
          </tr> --%>
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
              <td>
              <fmt:formatNumber type="number"  pattern="#,###" value="${discountSum}" />원
              </td>
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
        상품 금액 <b><fmt:formatNumber type="number"  pattern="#,###" value="${priceSum}"/></b>원 - 할인 합계 <b><fmt:formatNumber type="number"  pattern="#,###" value="${discountSum}"/></b>원 = 최종 결제 금액 <b><fmt:formatNumber type="number"  pattern="#,###" value="${priceSum-discountSum}"/></b>원
      </div>
      <div style="text-align: center;">
      <form action="/orderlist/list" method="post">
        <c:forEach items="${resultMap}" var="item" varStatus="loop">
          <%-- <input type="hidden" name="PRODUCT_ID" value="${item.PRODUCT_ID}"> --%>
          <input type="hidden" name="UID" value="${item.UID}">
          <%-- <input type="hidden" name="SHOPPINGCART_ID" value="${item.SHOPPINGCART_ID}"> --%>
        </c:forEach>
        <button class="btn btn-dark" style="width: 8rem; height: 4rem; margin-bottom: 3rem;">주문하기</button>
      </form>
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
