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
    <link rel="stylesheet" href="./css/main.css" />
    <style>
      * {
        /* border: 1px dotted black; */
      }
    </style>
  </head>
  <body>
    <%@ include file="../header.jsp" %>
  <!-- modal -->
  <div class="modal fade" id="modalTarget">
      <div class="modal-dialog modal-dialog-centered">
          <div class="modal-content" style="background-color: rgba(0, 0, 0, 0.7);">
              <div class="modal-header" style="color: white;">
                  Search
                  <button class="btn btn-secondary close_button" data-bs-dismiss="modal"
                      style="border: 0; background-color: rgba(0, 0, 0, 0);">
                      <span class="material-symbols-outlined">
                      close
                      </span></button>
              </div>
              <div class="modal-body d-flex align-items-center">
                  <input type="text" class="form-control me-3">
                  <a href="" style="color: white;">
                      <span class="material-symbols-outlined">search</span>
                  </a>
              </div>
          </div>    
      </div>
  </div>
    <main class="" style="margin-top: 200px;margin-bottom:100px">
      <div></div>
      <div class="container">
        <div class="fs-4 text-center mt-5 mb-4">Join Us!</div>
        <form class="form-group d-flex justify-content-center mb-5" onsubmit="return validateForm()" action="/login/join" method="post">
          <table class="table w-50 fs-6 font-weight-bold">
            <tr>
              <td>이름</td>
              <td><input id="name" name="USERNAME" class="form-control" value="${currentInfo.nameValue}" type="text">
              <div id="nameErr"></div>
              </td>
            </tr>
            <tr>
              <td>생년월일</td>
              <td><input id="birthYear" name="BIRTH_YEAR" value="${currentInfo.birthYearValue}" class="form-control" type="date">
                <div id="birthYearErr"></div>
              </td>
            </tr>
            <tr>
              <td>성별</td>
              <td><select name="SEX" id="sex">
                <option value="">---</option>
                <option value="남" ${currentInfo.sexValue eq "남" ? 'selected' : ""}>남자</option>
                <option value="여" ${currentInfo.sexValue eq "여" ? 'selected' : ""}>여자</option>
              </select>
              <div id="sexErr"></div>
              </td>
            </tr>
            <tr>
              <td>전화번호</td>
              <td class="">
                <input class="" value="${currentInfo.phonenumber0Value}" style="width:5rem;" name="PHONENUMBER0" id="phonenumber0" type="text"> -
                <input class="" value="${currentInfo.phonenumber1Value}" style="width:8rem;" name="PHONENUMBER1" id="phonenumber1" type="text"> -
                <input class="" value="${currentInfo.phonenumber2Value}" style="width:8rem;" name="PHONENUMBER2" id="phonenumber2" type="text">
                <div id="phonenumberErr"></div>
              </td>
            </tr>
            <tr>
              <td>이메일</td>
              <td><input class="form-control" value="${currentInfo.emailValue}" name="EMAIL" id="email" type="text" placeholder="tom@gmail.com">
              <div id="emailErr"></div>
              </td>
            </tr>
            <tr>
              <td>ID</td>
                <form></form>
              <td class="">
                <div class="d-flex justify-content-start">
                <input class="form-control mb-2 w-75" value="${currentInfo.idValue}" id="id" name="ID" type="text">
                <div class="">&nbsp;</div>
                <form id="idCheckForm" action="/login/checkingid" class="h-50 w-25">
                <div id="addHiddenInput"></div>
                <button class="btn btn-dark" onclick="checkId()" type="button">중복확인</button>
                </form>
                </div>
                <div id="idErr" class="d-block" style="color:red;">
                ${idcheck}
                <input type="hidden" id="idcheck" value="${idcheck}">
                </div>
              </td>
            </tr>
            <tr>
              <td>PW</td>
              <td><input class="form-control" value="${currentInfo.pwValue}" id="pw" name="PW" type="password">
              <div id="pwErr"></div>
              </td>
            </tr>
            <tr>
              <td colspan="2" class="text-center">
                <button class="btn btn-dark" >회원가입</button>
              </td>
            </tr>
          </table>
        </form>
        <script></script>
      </div>
    </main>

    <%@ include file="../footer.jsp" %>
    <script src="/js/join.js">
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
