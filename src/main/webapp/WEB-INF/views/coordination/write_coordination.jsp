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
    <link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
    <script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
  </head>
  <body>
  <%@ include file="../header.jsp" %>
    
    <main style="margin-top: 8rem">
      <form action="/coordination/save" id="action-form" method="post" enctype="multipart/form-data">
      <%-- 하드코딩 --%>
      <input type="hidden" name="COORDINATION_ID" value="cord_001">
      <input type="hidden" name="PRODUCT_ID" value="PROD_1">
      <input type="hidden" name="UID" value="U0001">
      <input type="hidden" name="VIEWS" value="1">
      <input type="hidden" name="LIKES" value="2">
      <%-- ===== --%>
      <div class="coordination">
        <div class="row">
          <div class="col d-flex justify-content-">
            <div class="model-image-box border d-flex justify-content-center align-items-center">
              <div>
              <label for="input_image" class="btn btn-secondary">이미지 업로드</label>
              <input type="file" style="display:none"  name="file_0"
                accept="image/gif, image/jpg, image/png" class="form-control" id="input_image">
              <%-- 이미지만 사용가능하게 accept사용 --%>
              </div>
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
                  <th class="col-4">제목</th>
                  <td class="col-8 row">
                    <input type="text" name="TITLE" value="Test" id="">
                  </td>
                </tr>
                <tr>
                  <th class="col-4">이름</th>
                  <td class="col-8 row">
                    <input type="text" name="USERNAME" value="김영철" id="">
                  </td>
                </tr>
                <tr>
                  <th class="col-4">키/몸무게</th>
                  <td class="col-8 row">
                    <input class="col" type="text" value="178" name="HEIGHT" id="">
                    <div class="col-1 text">/</div>
                    <input class="col" type="text" value="76" name="WEIGHT" id="">
                  </td>
                </tr>
                <tr>
                  <th class="col-4">직책(직무)</th>
                  <td class="col-8 row">
                    <input type="text" name="JOB" value="개그맨" id="">
                  </td>
                </tr>
              </table>
              <!-- 게시글이 초과되면 스크롤 추가 -->
              <div class="" style="overflow:auto; height: 20rem;">
                <div style="height:85%"> 
                  <div id="editor"  class="form-control"></div>
                  <input type="hidden" name="CORD_CONTENT" id="cord_content" />
                  <%-- <textarea class="form-control" name="coordination_content" id="" rows="10" placeholder="내용 작성"></textarea> --%>
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
              <%-- <input type="hidden" name="PRODUCT_ID" value="PROD_1"> --%>
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
            <button class="btn btn-secondary" id="submit-button">게시글 작성</button>
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
    <script>
    var editor = new Quill('#editor', {
			theme: 'snow'
		});
		// add content in quill editor
		editor.setContents(${resultMap.DESCRIPTION});
		// editor.disable(); // 변경못하게함
		// editor.root.style.backgroundColor= "#f2f2f2";

		let submitButton = document.querySelector("#submit-button");
		submitButton.addEventListener("click", function (event) {
			let content =editor.getContents();
			// Quill function
			let cord_content = document.querySelector("#cord_content");
			cord_content.value = JSON.stringify(content);
      // cord_content.value = content;
			let form = document.querySelector("#action-form");
			form.submit();
			// 이것이 submit한거랑 똑같음
		});
    </script>
  </body>
</html>
