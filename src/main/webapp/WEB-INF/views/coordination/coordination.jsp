<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
    crossorigin="anonymous"
  />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  <link rel="stylesheet" href="/css/coordination.css">
    <link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
    <script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
</head>
<body>
<%@ include file="../header.jsp" %>
    <c:set  var="item" value="${resultMap}"/>
    <c:set  var="file" value="${fileInfo}"/>
    <main style="margin-top: 8rem">
      <div class="coordination">
        <div class="row">
          <div class="col d-flex justify-content-">
            <div class="model-image-box">
              <img class="model-image" src="/files/${file.PHYSICALFILE_NAME}/${file.ORGINALFILE_NAME}" alt="">
            </div>
          </div>
          <div class="col">
            <div class="coordination_text">
              <div>
                <h3>Information</h3>
                <div>
                  <span class="material-symbols-outlined">
                    favorite
                    </span>
                </div>
              </div>
              <table class="table">
                <tr>
                  <th class="col-4">이름</th>
                  <td class="col-8">${item.USERNAME}</td>
                </tr>
                <tr>
                  <th class="col-4">키/몸무게</th>
                  <td class="col-8">${item.HEIGHT}/${item.WEIGHT}</td>
                </tr>
                <tr>
                  <th class="col-4">직책(직무)</th>
                  <td class="col-8">${item.JOB}</td>
                </tr>
              </table>
              <!-- 게시글이 초과되면 스크롤 추가 -->
              <div class="" style="overflow:auto; height: 20rem;">
                <div style="height:100%"> 
                <div id="cord_content"  class="form-control"></div>
                </div>
              </div>
              <%-- 수정 삭제 --%>
              <div class="d-flex justify-content-end mt-3">
                <form action="/coordination/modify">
                  <button class="btn border">수정</button>
                </form>
                <form action="/coordination/delete" method="post">
                  <input type="hidden" name="COORDINATION_ID" value="${item.COORDINATION_ID}">
                  <input type="hidden" name="SOURCE_UNIQUE_SEQ" value="${item.COORDINATION_ID}">
                  <button class="btn border">삭제</button>
                </form>
              </div>
          </div>
          </div>
        </div>
        <!-- 사용된 제품  -->
        <hr>
        <div class="productlist">
          <h5 class="productlist_title">사용된 제품</h5>
            <div class="d-flex g-4">
              <a href="" class="">
                <div class="card border-light h-100 me-2">
                    <img src="/refer/clothes/top1.jpg" class="card-image" alt="">
                    <div class="card-body">
                        <div class="card-title">브랜드명</div>
                        <div class="card-text">의류명</div>
                        <div class="card-text fs-6">가격</div>
                    </div>
                </div>
              </a>
              <a href="" class="">
                <div class="card border-light h-100">
                    <img src="/refer/clothes/top1.jpg" class="card-image" alt="">
                    <div class="card-body">
                        <div class="card-title">브랜드명</div>
                        <div class="card-text">의류명</div>
                        <div class="card-text fs-6">가격</div>
                    </div>
                </div>
              </a>
            </div>
        </div>
        <!-- 댓글 -->
        <hr>
        <div class="commentarea">
          <h5 style="">댓글 : 2개</h5>
          <div class="comment">
            <div style="margin-bottom: 0.5rem;">
              작성자
              <span style="font-size: 0.7rem;">(2023-02-03)</span>
            </div>
            <div>
              멋져요!!
            </div>
          </div>
          <hr style="border-color: rgba(0, 0, 0, 0.2);">
          <!--  -->
          <div class="comment">
            <div style="margin-bottom: 0.5rem;">
              작성자2
              <span style="font-size: 0.7rem;">(2023-02-03)</span>
            </div>
            <div>
              키가 어떻게 되시나요??
            </div>
          </div>
          <hr style="border-color: rgba(0, 0, 0, 0.2);">
        </div>
        <!-- 댓글 작성 -->
        <div class="d-flex" style="height: 3rem; margin-bottom: 2rem;">
          <input class="form-control" style="" type="text" name="comment" id="">
          <button class="btn" style="font-weight: 600; width: 4rem; border: 1px solid gray;">등록</button>
        </div>
      </div>
    </main>

    <%@ include file="../footer.jsp" %>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" 
    crossorigin="anonymous"></script>
    <script>
    var cord_content = new Quill('#cord_content', {
       modules: {
        toolbar: false
        // 툴바 없애기
      },
			theme: 'snow'
		});
      cord_content.disable(); // 변경못하게함
      cord_content.setContents(${item.CORD_CONTENT});
    </script>
</body>
</html>