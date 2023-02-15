<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" href="/css/coordination.css">
  </head>
  <body>
  <%@ include file="../header.jsp" %>
    
    <main style="margin-top: 8rem">
      <form action="">
      <div class="coordination">
        <div class="row">
          <div class="col d-flex justify-content-">
            <div class="model-image-box border d-flex justify-content-center align-items-center">
              <button class="btn btn-secondary">이미지 업로드</button>
              <!-- <img class="model-image" src="./refer/coordination/model1.jpg" alt=""> -->
            </div>
          </div>
          <div class="col">
            <div class="coordination_text">
              <div>
                <h3>코디 게시글 작성</h3>
                <div>
                </div>
              </div>
              <table class="table">
                <tr>
                  <th class="col-4">이름</th>
                  <td class="col-8 row">
                    <input type="text" name="username" id="">
                  </td>
                </tr>
                <tr>
                  <th class="col-4">키/몸무게</th>
                  <td class="col-8 row">
                    <input class="col" type="text" name="height" id="">
                    <div class="col-1 text">/</div>
                    <input class="col" type="text" name="weight" id="">
                  </td>
                </tr>
                <tr>
                  <th class="col-4">직책(직무)</th>
                  <td class="col-8 row">
                    <input type="text" name="job" id="">
                  </td>
                </tr>
              </table>
              <!-- 게시글이 초과되면 스크롤 추가 -->
              <div class="" style="overflow:auto; height: 20rem;">
                <div> 
                  <textarea class="form-control" name="coordination_content" id="" rows="10" placeholder="내용 작성"></textarea>
                </div>
              </div>
          </div>
          </div>
        </div>
        <!-- 사용된 제품  -->
        <hr>
        <div class="productlist">
          <div class="d-flex justify-content-between
          ">
            <h5 class="productlist_title">사용된 제품</h5>
            <div>
              <button class="btn btn-secondary">제품 업로드</button>
            </div>
          </div>
            <div class="d-flex g-4">
              <a href="" class="">
                <div class="card border-light h-100 me-2">
                    <img src="./refer/clothes/top1.jpg" class="card-image" alt="">
                    <div class="card-body">
                        <div class="card-title">브랜드명</div>
                        <div class="card-text">의류명</div>
                        <div class="card-text fs-6">가격</div>
                    </div>
                </div>
              </a>
              <a href="" class="">
                <div class="card border-light h-100">
                    <img src="./refer/clothes/top1.jpg" class="card-image" alt="">
                    <div class="card-body">
                        <div class="card-title">브랜드명</div>
                        <div class="card-text">의류명</div>
                        <div class="card-text fs-6">가격</div>
                    </div>
                </div>
              </a>
            </div>
          </div>
          <hr />
          <div class="text-center mb-4">
            <button class="btn btn-secondary">게시글 작성</button>
          </div>
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
