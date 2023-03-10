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
    <link rel="stylesheet" href="/css/shoppingcart.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  </head>
  <body>
    <%@ include file="../header.jsp" %>
    
    <main style="margin-top: 8rem">
      <div class="container">
      <form action="/orderlist/save" method="post">
      <%-- 하드코딩 --%>
        <input type="hidden" name="DELIVERY_COMPANY" value="CJ대한통운">
        <input type="hidden" name="DELIVERY_STATUS" value="배송준비중">
        <input type="hidden" name="SHOPPINGCART_ID" value="배송준비중">

        <input type="hidden" name="ADDITIONAL_DISCOUNT" value="0">
        

        <input type="hidden" name="UID" value="${USER.UID}">

        <h2 class="mb-5">결제 페이지</h2>
        <h4>주문자 정보</h4>        
        <table class="table mt-3">
        
          <tr>
            <th>이름</th>
            <td>
              <input type="text" name="" value="${USER.USERNAME}" readonly id="">
            </td>
          </tr>
          <tr>
            <th>이메일</th>
            <td>
              <input type="text" name="" value="${USER.EMAIL}" readonly id="">
            </td>
          </tr>
          <tr>
            <th>전화번호</th>
            <td>
              <input type="text" name="PHONENUMBER" readonly value="${USER.PHONENUMBER}">
              <%-- <input style="width: 4rem;" type="text" name="firstPhoneNum" id="">
              <span>-</span>
              <input style="width: 4rem;" type="text" name="secondPhoneNum" id="">
              <span>-</span>
              <input style="width: 4rem;" type="text" name="thirdPhoneNum" id=""> --%>
            </td>
          </tr>
        </table>

        <h4 class="mt-5">배송 정보</h4>
        <div>
          <table class="table border">
            <tr>
              <th class="align-middle">배송지</th>
              <td>
                <span id="purchasePage_DELIVERYNAME">배송지를 등록해주세요</span>
                <button class="btn border" type="button" onclick="new_window()">배송지 추가</button>
                <script>
                function new_window() {
                  window.open(
                    "/shoppingcart/delivery_address",
                    "배송지추가",
                    "width=500, height=400, top=50, left=50"
                  );
                }
                </script>
              </td>
            </tr>
            <tr id="deliveryoption1">
            <th class="align-middle">이름/연락처</th>
              <td>
                <span class="border-end pe-2 border-2" id="purchase_USERNAME"></span>
                <span class="" id="purchase_number"></span>
              </td>
            </tr>
             <tr id="deliveryoption2">
             <th class="align-middle">주소</th>
              <td id="purchasePage_address">
              </td>
            </tr>
             <tr id="deliveryoption3">
             <th class="align-middle">배송요청사항</th>
              <td>
                <select name="REQUIREMENT" id="purchase_requirement" class="" aria-label="" >
                  <option value="default">배송 시 요청사항을 선택해주세요</option>
                  <option value="부재 시 경비실에 맡겨주세요" >부재 시 경비실에 맡겨주세요</option>
                  <option value="부재 시 택배함에 넣어주세요">부재 시 택배함에 넣어주세요</option>
                  <option value="부재 시 집 앞애 놔주세요">부재 시 집 앞애 놔주세요</option>
                  <option value="파손의 위험이 있는 제품입니다. 조심히 다뤄주세요.">파손의 위험이 있는 제품입니다. 조심히 다뤄주세요.</option>
                </select>
              </td>
            </tr>
          </table>
        </div>
        
        <h4 class="mt-5">상품 정보</h4>
        <div class="mt-4">
          <table class="table" style="text-align: center; vertical-align: middle;">
           <thead>
            <c:set var="countAll" value="0" />
            <c:forEach items="${resultMap}" var="count">
            <c:set var="countAll" value="${countAll + count.PRODUCT_COUNT}" />
            </c:forEach>
             <th>전체 ${countAll}개</th>
             <th>상품명</th>
             <th>판매가</th>
             <th>할인</th>
             <th>수량</th>
           </thead>
           <tbody>
          <c:set var="discountSum" value="0" />
          <c:set var="priceSum" value="0" />
          <c:forEach items="${resultMap}" var="item" varStatus="loop">
          <c:set var="discountSum" value="${discountSum + (item.PRICE*item.DISCOUNT_RATE/100)*item.PRODUCT_COUNT}" />
          <c:set var="priceSum" value="${priceSum + (item.PRICE*item.PRODUCT_COUNT)}" />
          <input type="hidden" name="FINAL_PRICE[${loop.index}]" value="<fmt:formatNumber type="number"  pattern="#,###" value="${(item.PRICE-(item.PRICE*item.DISCOUNT_RATE/100))*item.PRODUCT_COUNT} " />">
          <tr>
            <td>${loop.index+1}</td>
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
          </tr>
          </c:forEach>
          </tbody>
          </table>
        </div>

        <div class="mt-5">
          <h5>할인금액</h5>
          <table class="table" style="margin-top: 2rem;">
            <tbody>
              <tr>
                <th>상품 할인</th>
                <td><fmt:formatNumber type="number"  pattern="#,###" value="${discountSum}" />원</td>
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

        <h4 class="mt-5">결제 정보</h4>
        <div>
          <div class="row border ">
            <div class="col-2 pt-2" style="font-weight: 600;">결제 안내</div>
            <div class="col p-2">
            <span>
            <label class="form-check-label" for="cardCheck">카드</label>
            <input class="form-check-input" type="radio" value="카드" name="ORDER_METHOD" id="cardCheck">
            </span>
            <span>
            <label class="form-check-label" for="accountCheck">계좌이체</label>
            <input class="form-check-input" type="radio" value="계좌이체" name="ORDER_METHOD" id="accountCheck">
            </span>
            <span>
            <label class="form-check-label" for="kakaoCheck">카카오페이</label>
            <input class="form-check-input" type="radio" value="카카오페이" name="ORDER_METHOD" id="kakaoCheck">
            </span>
            </div>
          </div>
          <div class="row border">
            <div class="col-2" style="font-weight: 600;">품절시 환불 안내</div>
            <div class="col" style="font-size: small;">
              <div>결제하신 수단으로 취소됩니다</div>
              <div class="mt-1">· 입점업체 배송은 낮은 확률로 상품이 품절일 가능성이 있습니다. 이에 품절 시 빠르게 환불 처리해드립니다.</div>
              <div class="mt-1">· 현금 환불의 경우, 예금정보가 일치해야 환불 처리가 가능합니다. 은행명, 계좌번호, 예금주명을 정확히 기재 부탁드립니다.</div>
              <div class="mt-1">· 환불 받으신 날짜 기준으로 3~5일(주말 제외) 후 결제대행사에서 직접 고객님의 계좌로 환불 처리됩니다.</div>
            </div>
          </div>
          <div class="row border">
            <div class="col-2" style="font-weight: 600;">주문자 동의</div>
            <div class="col" style="font-size: small;">
              <div>회원 본인은 구매 조건, 주문 내용 확인 및 결제에 동의합니다</div>
              <div class="mt-1">
                <span class="me-2">개인정보 수집 및 이용 동의</span>
                <button style="width: 2rem; font-size: 1.5px; padding: 0;" class="btn" data-bs-target="#collapseTarget" data-bs-toggle="collapse">
                  <div class="border-bottom border-dark ">자세히</div>
                </button>
                <div class="collapse" id="collapseTarget">
                  <div class="card card-body">
                    <div>개인정보 수집 및 이용 동의</div>
                    <div>1. 수집목적</div>
                    <div>판매자와 구매자의 거래의 원활한 진행, 본인의사의 확인, 고객 상담 및 불만처리, 상품과 경품 배송을 위한 배송지 확인 등</div>
                    <div>2. 수집 항목</div>
                    <div>구매자 정보: 성명, 전화번호, ID, 휴대전화 번호, 메일주소, 상품 구매정보</div>
                    <div>수령자 정보: 성명, 전화번호, 휴대전화 번호, 배송지 주소</div>
                    <div>3. 보유기간</div>
                    <div>개인정보 수집 및 이용목적 달성 시 및 관련 법령에 따른 기간까지 보관</div>
                    <div>4. 동의 거부시 불이익</div>
                    <div>본 개인정보 수집 및 이용 등에 동의하지 않을 권리가 있습니다. 다만, 필수항목에 동의를 하지 않을경우 거래가 제한될 수 있습니다.</div>
                  </div>
                </div>
              </div>


              <div class="mt-1">
                <span class="me-2">개인정보 제 3자 제공 동의</span>
                <button style="width: 2rem; font-size: 1.5px; padding: 0;" class="btn" data-bs-target="#collapseTarget2" data-bs-toggle="collapse">
                  <div class="border-bottom border-dark ">자세히</div>
                </button>
                <div class="collapse" id="collapseTarget2">
                  <div class="card card-body">
                    <div>브랜드명의 회원계정으로 상품 및 서비스를 구매하고자 할 경우, (주)무신사는 거래 당사자간 원활한 의사소통 및 배송, 상담 등 거래이행을 위하여 필요한 최소한의 개인정보만을 무신사 입점업체 판매자 및 배송업체에 아래와 같이 공유하고 있습니다.</div>
                    <div>1. (주)브랜드명는 귀하께서 브랜드명 입점업체 판매자로부터 상품 및 서비스를 구매하고자 할 경우, 개인정보보호법 제 17조 (개인정보의 제공)에 따라 아래와 같은 사항은 안내하고 동의를 받아 귀하의 개인정보를 판매자에게 공유합니다.</div>
                    <div>2. 개인정보를 공유받는자 : 주식회사 패션링크</div>
                    <div>3. 공유하는 개인정보 항목 - 구매자 정보: 성명, 전화번호, ID, 휴대전화 번호, 메일주소, 상품 구매정보 - 수령자 정보: 성명, 전화번호, 휴대전화 번호, 배송지 주소</div>
                    <div>4. 개인정보를 공유받는 자의 이용 목적 : 판매자와 구매자의 거래의 원활한 진행, 본인의사의 확인, 고객 상담 및 불만처리, 상품과 경품 배송을 위한 배송지 확인 등</div>
                    <div>5. 개인정보를 공유받는 자의 개인정보 보유 및 이용 기간 : 상품 구매/배송/반품 등 서비스 처리 완료 후 180일간 보관 후 파기</div>
                    <div>6. 동의 거부 시 불이익 : 본 개인정보 공유에 동의하지 않으시는 경우, 동의를 거부할 수 있으며, 이 경우 거래가 제한됩니다.</div>
                  </div>
                </div>
              </div>
              <!-- <div class="mt-1">전자결제대행 이용 동의
                <span class="me-2">전자결제대행 이용 동의</span>
                <button style="width: 2rem; font-size: 1.5px; padding: 0;" class="btn" data-bs-target="#collapseTarget3" data-bs-toggle="collapse">
                  <div class="border-bottom border-dark ">자세히</div>
                </button>
                <div class="collapse" id="collapseTarget3">
                  <div class="card card-body">
                      모로코, 승부차기로 스페인 꺾고 첫 8강…‘하무스 해트트릭’ 포르투갈도 8강
                  </div>
                </div>
              </div> -->
            </div>
          </div>
        </div>

        <div class="text-center mt-5 mb-5">
          <%-- <input type="hidden" name="FINAL_PRICE" value="<fmt:formatNumber type="number"  pattern="#,###" value="${priceSum-discountSum}"/>"> --%>
          <button class="btn btn-secondary"><fmt:formatNumber type="number"  pattern="#,###" value="${priceSum-discountSum}"/>원 결제하기</button>
        </div>
        </form>
      </div>
    </main>

    <%@ include file="../footer.jsp" %>
    <script>
    window.onload = function() {
      document.getElementById("deliveryoption1").style.display ="none";
      document.getElementById("deliveryoption2").style.display ="none";
      document.getElementById("deliveryoption3").style.display ="none";
    }
    function setSelectedValue(value) {
      var selectElement = document.getElementById("purchase_requirement");
      selectElement.value = value;
      document.getElementById("deliveryoption1").style.display ="table-row";
      document.getElementById("deliveryoption2").style.display ="table-row";
      document.getElementById("deliveryoption3").style.display ="table-row";
    }
    </script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
