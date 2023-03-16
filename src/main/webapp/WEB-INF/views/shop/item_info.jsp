<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>${resultMap[0].CLOTHES_NAME}</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="/css/item_info.css" />
    <script
    src="https://code.jquery.com/jquery-3.6.3.min.js"
    integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
    crossorigin="anonymous"></script>
  </head>
  <body>
    <%@ include file="../header.jsp" %>
    <c:forEach items="${resultMap}" var="resultMap" varStatus="loop">
      <c:forEach items="${reviewfile}" var="reviewfile" varStatus="loop2">
        <%-- img modal --%>
        <div class="modal fade" id="modal-img-${loop.index}-${loop2.index}">
          <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content" style="background-color: rgba(0, 0, 0, 0.2)">
              <img src="/files/${reviewfile.PHYSICALFILE_NAME}/${reviewfile.ORGINALFILE_NAME}" alt="" />
            </div>
          </div>
        </div>
      </c:forEach>
    </c:forEach>
    <main style="margin-top: 60px">
    <sec:authentication property="principal" var="userDetailsBean" />
      <div id="wrapper" style="width: 1200px; margin-left: auto; margin-right: auto" class="d-flex">
        <!-- 사이드바 -->
        <div class="me-3 pe-3 border-end pt-4 pb-4" id="left-column">
					<div><a href="/shop2/all/1">전체</a></div>
					<div><a href="/shop2/women/1">여성</a></div>
					<div><a href="/shop2/men/1">남성</a></div>
					<div><a href="/shop2/new/1">신상품</a></div>
					<div><a href="/shop2/sale/1">세일중</a></div>
					<div><a href="/shop2/top/1">상의</a></div>
					<div><a href="/shop2/outer/1">아우터</a></div>
					<div><a href="/shop2/pants/1">바지</a></div> 
					<div><a href="/shop2/shoes/1">신발</a></div>
					<div><a href="/shop2/hats/1">모자</a></div>
					<div><a href="/shop2/bags/1">가방</a></div>
				</div> 
        
          <form action="/shop/cart/${resultMap[0].PRODUCT_ID}" method="post">
          <div>
            <div id="info">
            <%-- <c:set  var="item" value="${resultMap}"/> --%>
              <div class="row row-cols-2">
                <!-- carousel -->
                <div class="image col-7" style="height: 950px">
                  <div id="carouselControlId" class="carousel slide" data-bs-ride="carousel" style="width: 550px; text-align: center">
                    <div class="carousel-inner">
                      <c:forEach items="${file_main}" var="file" varStatus="loop">
                        <div class="carousel-item ${loop.index == 0 ? 'active' : ''}">
                          <img class="image" src="/files/${file.PHYSICALFILE_NAME}/${file.ORGINALFILE_NAME}" alt="" />
                        </div>
                      </c:forEach>
                      <%-- <div class="carousel-item">
                        <img class="image" src="/refer/item_info/item2.jpg" alt="" />
                      </div>
                      <div class="carousel-item">
                        <img class="image" src="/refer/item_info/item3.jpg" alt="" />
                      </div>
                      <div class="carousel-item">
                        <img class="image" src="/refer/item_info/item4.jpg" alt="" />
                      </div> --%>
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
                    <div id="name">${resultMap[0].CLOTHES_NAME}</div>
                    <div id="item-code">
                      <span style="font-size: 12px; color: gray">${resultMap[0].PRODUCT_ID}</span>
                    </div>
                    <div id="item-price">
                      <c:set var="discount" value="${resultMap[0].DISCOUNT_RATE}"/>
                      <c:choose>
                        <c:when test="${discount == 0}">
                          <span><fmt:formatNumber value="${resultMap[0].PRICE}" pattern="###,###"/>원</span>
                        </c:when>
                        <c:otherwise>
                          <div style="color: gray"><del><fmt:formatNumber value="${resultMap[0].PRICE}" pattern="###,###"/>원</del></div>
                          <div><fmt:formatNumber value="${resultMap[0].PRICE*((100-discount)/100)}" pattern="###,###"/>원</div>
                        </c:otherwise>
                      </c:choose>
                    </div>
                    <div id="item-size">
                      <table border="0">
                        <tr>
                          <th scope="row" style="display: block">SIZE</th>
                          <td style="display: block">
                            <select name="" id="">
                              <option value="*">--- [필수] 사이즈를 선택해 주세요 ---</option>
                              <option value="**" disabled>------------------</option>
                              <option value="24" name="SIZE">24</option>
                              <option value="25" name="SIZE">25</option>
                              <option value="26" name="SIZE">26</option>
                              <option value="27" name="SIZE">27</option>
                              <option value="28" name="SIZE">28</option>
                              <option value="29" name="SIZE">29</option>
                              <option value="30" name="SIZE">30</option>
                            </select>
                          </td>
                        </tr>
                      </table>
                    </div>
                  </div>
                  <hr />

                  <div class="d-flex">
                  <div class="fs-4">개수 : </div>
                  <button class="btn btn-secondary ms-3" id="downCount" onclick="minusCount()" type="button">
                    <span class="material-symbols-outlined">
                    arrow_back_ios
                    </span>
                  </button>
                  <input class="text-end" type="text" id="PRODUCT_COUNT" name="PRODUCT_COUNT" value="1" style="width:4rem" readonly>
                  <button class="btn btn-secondary" id="upCount" onclick="plusCount()" type="button">
                    <span class="material-symbols-outlined">
                    arrow_forward_ios
                    </span>
                  </button>
                  </div>
                  <div id="total-price" class="d-flex justify-content-between">
                    <strong>총상품금액</strong>
                    <span id="product_TotalPrice"><fmt:formatNumber value="${resultMap[0].PRICE*((100-discount)/100)}" pattern="###,###"/>원</span>
                  </div>
                  <div id="buttons" class="d-flex justify-content-center">
                      <input type="hidden" name="PRODUCT_ID" value="${resultMap[0].PRODUCT_ID}">
                      <%-- 로그인 된상태 --%>
                      <sec:authorize access="isAuthenticated()">
                          <input type="hidden" name="UID" value="${userDetailsBean.UID}">
                      </sec:authorize>
                      <%-- 로그인 안되어있는 상태 --%>
                      <sec:authorize access="isAnonymous()">
                      </sec:authorize>
                      <button class="btn btn-outline-dark" id="add2cart" style="width: 45%">카트에 담기</button>
                      <button class="btn btn-dark" id="buynow" style="margin-left: 5px; width: 45%">구매</button>
                  </div>
                </form>
              </div>
            </div>
            <!-- 상세정보 -->
            <%-- 임시로 하드코딩 사유 : 데이터를 많이 넣어야함(시간없는데 데이터 넣는 시간이 아깝다) --%>
            <div id="item-info">
              <div>
                <%-- <c:forEach items="${file_info}" var="file" varStatus="loop"> --%>
                  <div>
                    <img class="image" src="/files/shop/common/info01.jpg" alt="" style="width:100%; height:100%"/>
                    <img class="image" src="/files/shop/common/info02.jpg" alt="" style="width:100%; height:100%"/>
                    <%-- <img class="image" src="/files/shop/common/${file.ORGINALFILE_NAME}" alt="" style="width:100%; height:100%"/> --%>
                  </div>
                <%-- </c:forEach> --%>
              </div>
            </div>
          </div>
          <div id="review-qna">
            <hr />
            <div id="review-rate">
              <!-- review -->
              <c:set var="reviews" value="${resultMap_review}"/>
              <c:set var="rate_5" value="${review_5}"/>
              <c:set var="rate_4" value="${review_4}"/>
              <c:set var="rate_3" value="${review_3}"/>
              <c:set var="rate_2" value="${review_2}"/>
              <c:set var="rate_1" value="${review_1}"/>
              <c:set var="count" value="${fn:length(reviews)}"/>
              <div class="row row-cols-2">
                <div style="width: 80%; padding-left: 30px">REVIEW (${count})</div>
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
                    <span style="font-size: 40px">
                    <c:choose>
                      <c:when test="${fn:length(reviews) == 0}">
                        0
                      </c:when>
                      <c:otherwise>
                        ${(fn:length(rate_5)*5+fn:length(rate_4)*4+fn:length(rate_3)*3+fn:length(rate_2)*2+fn:length(rate_1)*1)/count}
                      </c:otherwise>
                    </c:choose>
                    </span>
                  </div>
                  <div style="font-weight: 700"><span>${fn:length(reviews)}</span>명의 고객님이 리뷰를 남겼습니다.</div>
                </div>
                <div>
                  <div class="row row-cols-2">
                    <div class="rate" style="width: 25%; font-size: 13px">아주 좋아요 (${fn:length(rate_5)})</div>
                    <progress class="progressbar" value="${fn:length(rate_5)}" max="${count}" style="width: 75%"></progress>
                    <div class="rate" style="width: 25%; font-size: 13px">맘에 들어요 (${fn:length(rate_4)})</div>
                    <progress class="progressbar" value="${fn:length(rate_4)}" max="${count}" style="width: 75%"></progress>
                    <div class="rate" style="width: 25%; font-size: 13px">보통이에요 (${fn:length(rate_3)})</div>
                    <progress class="progressbar" value="${fn:length(rate_3)}" max="${count}" style="width: 75%"></progress>
                    <div class="rate" style="width: 25%; font-size: 13px">그냥 그래요 (${fn:length(rate_2)})</div>
                    <progress class="progressbar" value="${fn:length(rate_2)}" max="${count}" style="width: 75%"></progress>
                    <div class="rate" style="width: 25%; font-size: 13px">별로에요 (${fn:length(rate_1)})</div>
                    <progress class="progressbar" value="${fn:length(rate_1)}" max="${count}" style="width: 75%"></progress>
                  </div>
                </div>
              </div>
              <hr />
              <!-- 리뷰들 -->
              <c:forEach items="${resultMap_review}" var="resultMap_review" varStatus="loop">
                <c:set var="rate" value="${resultMap_review.RATE}"/>
                <div class="mt-1 ms-3">
                  <div style="display: flex; align-items: center">
                  <c:choose>
                        <c:when test="${rate eq '5'}">
                          <span class="material-symbols-outlined" style="color: #ffc107; font-variation-settings: 'FILL' 1"> grade </span>
                          <span class="material-symbols-outlined" style="color: #ffc107; font-variation-settings: 'FILL' 1"> grade </span>
                          <span class="material-symbols-outlined" style="color: #ffc107; font-variation-settings: 'FILL' 1"> grade </span>
                          <span class="material-symbols-outlined" style="color: #ffc107; font-variation-settings: 'FILL' 1"> grade </span>
                          <span class="material-symbols-outlined" style="color: #ffc107; font-variation-settings: 'FILL' 1"> grade </span>
                          <span style="margin-left: 0.3rem">
                            아주 좋아요
                          </span>
                        </c:when>
                        <c:when test="${rate eq '4'}">
                          <span class="material-symbols-outlined" style="color: #ffc107; font-variation-settings: 'FILL' 1"> grade </span>
                          <span class="material-symbols-outlined" style="color: #ffc107; font-variation-settings: 'FILL' 1"> grade </span>
                          <span class="material-symbols-outlined" style="color: #ffc107; font-variation-settings: 'FILL' 1"> grade </span>
                          <span class="material-symbols-outlined" style="color: #ffc107; font-variation-settings: 'FILL' 1"> grade </span>
                          <span class="material-symbols-outlined" style="color: #b3b3b3; font-variation-settings: 'FILL' 1"> grade </span>
                          <span style="margin-left: 0.3rem">
                            맘에 들어요
                          </span>
                        </c:when>
                        <c:when test="${rate eq '3'}">
                          <span class="material-symbols-outlined" style="color: #ffc107; font-variation-settings: 'FILL' 1"> grade </span>
                          <span class="material-symbols-outlined" style="color: #ffc107; font-variation-settings: 'FILL' 1"> grade </span>
                          <span class="material-symbols-outlined" style="color: #ffc107; font-variation-settings: 'FILL' 1"> grade </span>
                          <span class="material-symbols-outlined" style="color: #b3b3b3; font-variation-settings: 'FILL' 1"> grade </span>
                          <span class="material-symbols-outlined" style="color: #b3b3b3; font-variation-settings: 'FILL' 1"> grade </span>
                          <span style="margin-left: 0.3rem">
                            보통이에요
                          </span>
                        </c:when>
                        <c:when test="${rate eq '2'}">
                          <span class="material-symbols-outlined" style="color: #ffc107; font-variation-settings: 'FILL' 1"> grade </span>
                          <span class="material-symbols-outlined" style="color: #ffc107; font-variation-settings: 'FILL' 1"> grade </span>
                          <span class="material-symbols-outlined" style="color: #b3b3b3; font-variation-settings: 'FILL' 1"> grade </span>
                          <span class="material-symbols-outlined" style="color: #b3b3b3; font-variation-settings: 'FILL' 1"> grade </span>
                          <span class="material-symbols-outlined" style="color: #b3b3b3; font-variation-settings: 'FILL' 1"> grade </span>
                          <span style="margin-left: 0.3rem">
                            그냥 그래요
                          </span>
                        </c:when>
                        <c:when test="${rate eq '1'}">
                          <span class="material-symbols-outlined" style="color: #ffc107; font-variation-settings: 'FILL' 1"> grade </span>
                          <span class="material-symbols-outlined" style="color: #b3b3b3; font-variation-settings: 'FILL' 1"> grade </span>
                          <span class="material-symbols-outlined" style="color: #b3b3b3; font-variation-settings: 'FILL' 1"> grade </span>
                          <span class="material-symbols-outlined" style="color: #b3b3b3; font-variation-settings: 'FILL' 1"> grade </span>
                          <span class="material-symbols-outlined" style="color: #b3b3b3; font-variation-settings: 'FILL' 1"> grade </span>
                          <span style="margin-left: 0.3rem">
                            별로에요
                          </span>
                        </c:when>
                      </c:choose>
                    <%-- <span style="margin-left: 0.3rem">
                      <c:choose>
                        <c:when test="${rate eq '5'}">
                          아주 좋아요
                        </c:when>
                        <c:when test="${rate eq '4'}">
                          맘에 들어요
                        </c:when>
                        <c:when test="${rate eq '3'}">
                          보통이에요
                        </c:when>
                        <c:when test="${rate eq '2'}">
                          그냥 그래요
                        </c:when>
                        <c:when test="${rate eq '1'}">
                          별로에요
                        </c:when>
                      </c:choose>
                    </span> --%>
                    <span style="color: gray; font-size: 7px; margin-left: 70%">${resultMap_review.DATE}</span>
                  </div>
                  <div class="mt-3">${resultMap_review.REVIEW_CONTENT}</div>
                  <div style="justify-items: start" class="mt-3">
                    <c:forEach items="${reviewfile}" var="reviewfile" varStatus="loop2">
                      <a href="#modal-img-${loop.index}-${loop2.index}" data-bs-toggle="modal" style="display: inline-flex">
                        <div class="card border-bold" style="width: 100px">
                          <img src="/files/${reviewfile.PHYSICALFILE_NAME}/${reviewfile.ORGINALFILE_NAME}" class="card-image-top" style="height: 100px; width: 100px" />
                        </div>
                      </a>
                    </c:forEach>
                  </div>
                </div>
              <hr />
              </c:forEach>
            </div>
          </div>
        </div>
      </div>
    </main>
<%-- <c:forEach items="${reviewfile}" var="reviewfile" varStatus="loop">
  <a href="#modal-img-3" data-bs-toggle="modal" style="display: inline-flex">
    <div class="card border-bold" style="width: 100px">
      <img src="/files/${reviewfile.PHYSICALFILE_NAME}/${reviewfile.ORGINALFILE_NAME}" class="card-image-top" style="height: 100px; width: 100px" />
    </div>
  </a>
</c:forEach> --%>
    <script>
    let countValue = document.getElementById("PRODUCT_COUNT")
    function plusCount() {
      countValue.value=parseInt(countValue.value)+1;
      // countValue.innerText=parseInt(countValue)
    }
    function minusCount() {
      countValue.value=parseInt(countValue.value)-1;
      if(countValue.value<1) {
        countValue.value=1;
      }
    }
        // $(document).ready(function(){ 
        $(function(){ //위와 동일
        $("#upCount").click(function() {
            $.ajax({
              url:"http://localhost:8080/shop/calcPrice",
              type : "POST",
              data : {'tempProductCount':countValue.value,"PRODUCT_ID":"${resultMap[0].PRODUCT_ID}"},
              success : function(dataID, status) {
                        let a= Number.parseInt(dataID.PRICE);
                        let b= Number.parseInt(dataID.DISCOUNT_RATE);
                        let c= Number.parseInt(a*((100-b)/100));
                        let result = c.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
                        $("#product_TotalPrice").html(result+"원");
                        // $("#product_TotalPrice").html("<div>"+(dataID.PRICE*((100-dataID.DISCOUNT_RATE)/100))+"</div>");
                        // $("#product_TotalPrice").append(dataID.PRICE);
                        // $("#dataID").append(typeof dataID);
                        // 하나 하나 확인 표시
                        // $("#dataID").append(dataID.paginations.blockScale);
                        // $("#dataID").append(", ");
                        // $("#dataID").append(dataID.resultList[1].NAME);
                        // $("#dataID").append(", ");
                        // each // 자바스크립트
                        // $.each(dataID.resultList, function(index, item) {
                        //     $("#dataID").append('<div>'+index+', '+item.NAME+'</div>');
                        // });
                    },
     error:function(request,status,error){
        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
       },
              complete: function() {
                        // remove progress bar
                        // $("#complete_status").append("Done");
                    },
            })
          });
        });

                $(function(){ //위와 동일
        $("#downCount").click(function() {
            $.ajax({
              url:"/shop/calcPrice",
              type : "POST",
              data : {'tempProductCount':countValue.value,"PRODUCT_ID":"${resultMap[0].PRODUCT_ID}"},
              success : function(dataID, status) {
                        let a= Number.parseInt(dataID.PRICE);
                        let b= Number.parseInt(dataID.DISCOUNT_RATE);
                        let c= Number.parseInt(a*((100-b)/100));
                        let result = c.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
                        $("#product_TotalPrice").html(result+"원");
                        // $("#product_TotalPrice").html("<div>"+(dataID.PRICE*((100-dataID.DISCOUNT_RATE)/100))+"</div>");
                        // $("#product_TotalPrice").append(dataID.PRICE);
                        // $("#dataID").append(typeof dataID);
                        // 하나 하나 확인 표시
                        // $("#dataID").append(dataID.paginations.blockScale);
                        // $("#dataID").append(", ");
                        // $("#dataID").append(dataID.resultList[1].NAME);
                        // $("#dataID").append(", ");
                        // each // 자바스크립트
                        // $.each(dataID.resultList, function(index, item) {
                        //     $("#dataID").append('<div>'+index+', '+item.NAME+'</div>');
                        // });
                    },
     error:function(request,status,error){
        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
       },
              complete: function() {
                        // remove progress bar
                        // $("#complete_status").append("Done");
                    },
            })
          });
        });
    </script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
