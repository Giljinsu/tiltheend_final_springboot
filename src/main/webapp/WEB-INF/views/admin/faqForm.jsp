<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>FAQ 수정</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link href="//cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
    <script src="//cdn.quilljs.com/1.3.6/quill.js"></script>
  </head>
  <body>
    <%@ include file="../header.jsp" %>
    <c:set  var="category" value="${resultMap.CATEGORY}"/>
    <c:set  var="code" value="수정"/>
    <c:set  var="link" value="edit"/>
    <c:if test="${empty resultMap}">
		  <c:set var="code" value="작성" />
      <c:set  var="link" value="write"/>
	  </c:if>
    <main style="margin-top: 160px" class="container">
      <div class="container">
        <form action="/admin/${link}/faq/save" id="action-form" method="post">
          <h3 class="mb-5">FAQ ${code}</h3>
          <%-- 하드코딩 --%>
          <input type="hidden" name="POST_NO_FAQ" value="${resultMap.POST_NO_FAQ}">
          <input type="hidden" name="UID" value="U0001">
          <table class="table">
            <tbody>
              <tr>
                <th class="col-1 text-center align-self-center">제목</th>
                <td class="col-5">
                  <input type="text" name="TITLE" style="width:100%" value="${resultMap.TITLE}">
                </td>
                <th class="col-1 text-center">구분</th>
                <td class="col-5">
                  <select class="form-select" name="CATEGORY">
                    <option ${category == "repair" ? "selected" : ""} value="repair">교환/반품/수선</option>
                    <option ${category == "delivery" ? "selected" : ""} value="delivery">출고/배송</option>
                    <option ${category == "cancle" ? "selected" : ""} value="cancle">주문/취소</option>
                    <option ${category == "ect" ? "selected" : ""} value="ect">기타</option>
                  </select>
                </td>
              </tr>
              <%-- <tr>
                <th class="col-1 text-center">구분</th>
                <td class="col-11">
                  <select class="form-select">
                    <option selected>교환/반품/수선</option>
                    <option>출고/배송</option>
                    <option>주문/취소</option>
                    <option>기타</option>
                  </select>
                </td>
              </tr> --%>
            </tbody>
          </table>
          <div class="" style="overflow:auto; height: 20rem;">
            <div style="height:85%"> 
              <div id="editor"  class="form-control"></div>
              <input type="hidden" name="CONTENT" id="content" />
              <%-- <textarea class="form-control" name="coordination_content" id="" rows="10" placeholder="내용 작성"></textarea> --%>
            </div>
          </div>
          <div class="text-end mb-4">
            <button class="btn btn-dark" id="submit-button">FAQ ${code}</button>
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
      editor.setContents(${resultMap.CONTENT});
      // editor.disable(); // 변경못하게함
      // editor.root.style.backgroundColor= "#f2f2f2";

      let submitButton = document.querySelector("#submit-button");
      submitButton.addEventListener("click", function (event) {
        let content = editor.getContents();
        // Quill function
        let faqcontent = document.querySelector("#content");
        faqcontent.value = JSON.stringify(content);
        // content.value = content;
        let form = document.querySelector("#action-form");
        form.submit();
        // 이것이 submit한거랑 똑같음
      });
    </script>
  </body>
</html>
