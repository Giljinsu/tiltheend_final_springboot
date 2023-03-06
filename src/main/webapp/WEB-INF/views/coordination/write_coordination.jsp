<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <c:set var="form_action" value="update"/>
    <c:if test="${empty resultMap}">
    <c:set var="form_action" value="save"/>
    </c:if>

    <c:set var="count" value="${filecount}"/>
    <c:if test="${empty filecount}">
    <c:set var="count" value="0"/>
    </c:if>
    <main style="margin-top: 8rem">
      <form action="/coordination/${form_action}" id="action-form" method="post" id="coordinaiton_form" enctype="multipart/form-data">
      <%-- 하드코딩 --%>
      <input type="hidden" name="COORDINATION_ID" value="${resultMap.COORDINATION_ID}">
      <input type="hidden" name="SOURCE_UNIQUE_SEQ" value="${resultMap.COORDINATION_ID}">
      <input type="hidden" name="PRODUCT_ID" value="PROD_1">
      <input type="hidden" name="UID" value="U0001">
      <input type="hidden" name="VIEWS" value="1">
      <input type="hidden" name="LIKES" value="2">
      <div id="isadded"></div>
      <%-- 파일을 업로드시 --%>
      <input type="hidden" name="REGISTER_SEQ" value="UUID-1111-1111111">
      <input type="hidden" name="MODIFIER_SEQ" value="UUID-1111-1111111">
      <%-- ===== --%>
      <div class="coordination">
        <div class="row">
          <div class="col d-flex justify-content-">

            <div class="model-image-box border d-flex justify-content-center align-items-center img_parent">
              <%-- <label for="input_image" class="btn btn-secondary img_upload">이미지 업로드</label>
              <input type="file" style="display:none" onchange="setThumbnail(event);"  name="file_0"
                accept="image/gif, image/jpg, image/png" class="form-control" id="input_image"> --%>
              <div id="carouselId" class="carousel slide" style="width:100%; height:100%;" >
                <div class="carousel-inner w-100 h-100">
                <c:if test="${empty files}">
                  <div class="carousel-item active w-100 h-100" id="carousel_id_0">
                        <div class="w-100 h-100">
                            <img class="model-image" id="modelimg_0" src="/files/default/default.png">
                          <div class="carousel-caption">
                            <label for="input_image_0" class="btn btn-secondary ">이미지 업로드</label>
                            <input type="file" style="display:none" onchange="setThumbnail(0);"  name="file_0"
                            accept="image/gif, image/jpg, image/png" class="form-control" id="input_image_0" />
                          </div>
                        </div>
                    </div>
                </c:if>
                <c:forEach items="${files}" var="file" varStatus="loop">
                <div id="setOriginalNameAndPhysicalName${loop.index}">
                </div>
                <input type="hidden" id="ATTACHFILE_SEQ${loop.index}" value="${file.ATTACHFILE_SEQ}">
                <input type="hidden" id="PHYSICALFILE_NAME${loop.index}" value="${file.PHYSICALFILE_NAME}">
                <input type="hidden" id="ORGINALFILE_NAME${loop.index}" value="${file.ORGINALFILE_NAME}">
                    <div class="carousel-item ${loop.index == 0 ? 'active' : ''} w-100 h-100" id="carousel_id_${loop.index}">
                        <div class="w-100 h-100">
                            <img class="model-image" id="modelimg_${loop.index}" src="/files/${file.PHYSICALFILE_NAME}/${file.ORGINALFILE_NAME}">
                            <div class="carousel-caption">
                              <label for="input_image_${loop.index}" class="btn btn-secondary ">이미지 업로드</label>
                              <input type="file" value="${file.ORGINALFILE_NAME}" style="display:none" onchange="setThumbnail(${loop.index});"  name="file_${loop.index}"
                              accept="image/gif, image/jpg, image/png" class="form-control" id="input_image_${loop.index}" />
                          </div>
                        </div>
                    </div>
                    <c:if test="${loop.last}">
                    <input type="hidden" name="fileCount" value="${loop.index}">
                    <div class="carousel-item  w-100 h-100" id="carousel_id_${loop.index+1}">
                        <div class="w-100 h-100">
                            <img class="model-image" id="modelimg_${loop.index+1}" src="/files/default/default.png">
                            <div class="carousel-caption">
                              <label for="input_image_${loop.index+1}" class="btn btn-secondary ">이미지 업로드</label>
                              <input type="file" style="display:none" onchange="setThumbnail(${loop.index+1});"  name="file_${loop.index+1}"
                              accept="image/gif, image/jpg, image/png" class="form-control" id="input_image_${loop.index+1}" />
                          </div>
                        </div>
                    </div>
                    </c:if>
                </c:forEach>
                    <%-- <div class="carousel-item active w-100 h-100" id="carousel_id_0">
                        <div class="w-100 h-100">
                            <img class="model-image" id="modelimg_0" src="/files/brian/model3.jpg">
                          <div class="carousel-caption">
                            <label for="input_image_0" class="btn btn-secondary ">이미지 업로드</label>
                            <input type="file" style="display:none" onchange="setThumbnail(0);"  name="file_0"
                            accept="image/gif, image/jpg, image/png" class="form-control" id="input_image_0" />
                          </div>
                        </div>
                    </div> --%>
                    
                    <%-- <div class="carousel-item" data-bs-interval="8000">
                        <div class="">
                            <img class="model-image" src="/files/${resultMap.PHYSICALFILE_NAME}/${resultMap.ORGINALFILE_NAME}" id="model_image">
                        </div>
                    </div> --%>
                  <button class="carousel-control-prev" data-bs-target="#carouselId" data-bs-slide="prev">
                      <span class="carousel-control-prev-icon"></span>
                  </button>
                  <button class="carousel-control-next" data-bs-target="#carouselId" data-bs-slide="next">
                      <span class="carousel-control-next-icon"></span>
                  </button>
                </div>
            </div>

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
                    <input type="text" name="TITLE" value="${resultMap.TITLE}" id="">
                  </td>
                </tr>
                <tr>
                  <th class="col-4">이름</th>
                  <td class="col-8 row">
                    <input type="text" name="USERNAME" value="${resultMap.USERNAME}" id="">
                  </td>
                </tr>
                <tr>
                  <th class="col-4">키/몸무게</th>
                  <td class="col-8 row">
                    <input class="col" type="text" value="${resultMap.HEIGHT}" name="HEIGHT" id="">
                    <div class="col-1 text">/</div>
                    <input class="col" type="text" value="${resultMap.WEIGHT}" name="WEIGHT" id="">
                  </td>
                </tr>
                <tr>
                  <th class="col-4">직책(직무)</th>
                  <td class="col-8 row">
                    <input type="text" name="JOB" value="${resultMap.JOB}" id="">
                  </td>
                </tr>
              </table>
              <!-- 게시글이 초과되면 스크롤 추가 -->
              <div class="" style="overflow:auto; height: 20rem;">
                <div style="height:85%"> 
                  <div id="editor"  class="form-control"></div>
                  <input type="hidden" name="CORD_CONTENT"  id="cord_content" />
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
		editor.setContents(${resultMap.CORD_CONTENT});
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

      // 이미지 썸네일
      let lastindex = ${count};
    function setThumbnail(currentindex) {
        var reader = new FileReader();
        // 파일 업데이트 부분
        let coordinaiton_form = document.querySelector("#setOriginalNameAndPhysicalName"+currentindex);
        let physicalFileName = document.querySelector("#PHYSICALFILE_NAME"+currentindex);
        let originalFilename = document.querySelector("#ORGINALFILE_NAME"+currentindex);
        let attachFileSeq = document.querySelector("#ATTACHFILE_SEQ"+currentindex);
             
        if(physicalFileName!=null && originalFilename!=null) {
          coordinaiton_form.innerHTML="<input type='hidden' name='PHYSICALFILE_NAME["+currentindex+"]' value='"+physicalFileName.value+"'>"+
                                      "<input type='hidden' name='ORGINALFILE_NAME["+currentindex+"]' value='"+originalFilename.value+"'>"+
                                      "<input type='hidden' name='ATTACHFILE_SEQ["+currentindex+"]' value='"+attachFileSeq.value+"'>";
        }
        // =====
        reader.onload = function(event) {
          var img = document.querySelector("#modelimg_"+currentindex);
          let carousel_id = document.querySelector("#carousel_id_"+currentindex+"")
            img.setAttribute("src", event.target.result);
          
          if(currentindex<lastindex) { //새로운 이미지 업로드시 밑에 부분 작동
            return;
          }
          //여기서보내
          let isadded = document.querySelector("#isadded");
          isadded.innerHTML="<input type='hidden' name='ISADDED' value='true'>"
          currentindex++;
            lastindex=currentindex;
          // if() {
          //   return;
          // }
          var innercarousels = document.querySelector(".carousel-inner");
          let temp="<div class='w-100 h-100 carousel-item' id='carousel_id_"+currentindex+"'>"+
                        "<div class='w-100 h-100'>"+
                            "<img class='model-image' src='/files/default/default.png' id='modelimg_"+currentindex+"'>"+
                            "<div class='carousel-caption'>"+
                            "<label for='input_image_"+currentindex+"' class='btn btn-secondary '>이미지 업로드</label>"+
                            "<input type='file' style='display:none' onchange='setThumbnail("+currentindex+");'  name='file_"+currentindex+"'"+
                            "accept='image/gif, image/jpg, image/png' class='form-control' id='input_image_"+currentindex+"' />"+
                          "</div>"+
                        "</div>" +
                    "</div>";
          innercarousels.insertAdjacentHTML('beforeend',temp);
          
          // var img = document.createElement("img");
          // img.setAttribute("src", event.target.result);
          // img.classList.add('model-image');
          // document.querySelector("#image-container").appendChild(img);
        };

        reader.readAsDataURL(event.target.files[0]);
      };
    </script>
  </body>
</html>
