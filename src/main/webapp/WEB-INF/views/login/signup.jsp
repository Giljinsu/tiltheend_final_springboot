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
        <form class="form-group d-flex justify-content-center mb-5" action="/login/signup" method="POST">
          <table class="table w-50 fs-6 font-weight-bold">
            <tr>
              <td>이름</td>
              <td><input name="name" class="form-control" type="text"></td>
            </tr>
            <tr>
              <td>태어난 연도</td>
              <td><input name="birthYear" class="form-control" type="text"></td>
            </tr>
            <tr>
              <td>성별</td>
              <td><select name="sex" id="">
                <option value="male">---</option>
                <option value="male">남자</option>
                <option value="female">여자</option>
              </select></td>
            </tr>
            <tr>
              <td>전화번호</td>
              <td><input class="form-control" name="phone" type="text"></td>
            </tr>
            <tr>
              <td>이메일</td>
              <td><input class="form-control" name="email" type="text" placeholder="tom@gmail.com"></td>
            </tr>
            <tr>
              <td>ID</td>
              <td class="d-flex justify-content-start">
                <input class="form-control mb-2 w-75" name="id" type="text">
                <div class="">&nbsp;</div>
                <button class="btn h-50 btn-dark w-25">중복확인</button>
              </td>
            </tr>
            <tr>
              <td>PW</td>
              <td><input class="form-control" name="pw" type="password"></td>
            </tr>
            <tr>
              <td colspan="2" class="text-center">
                <button class="btn btn-dark">회원가입</button>
              </td>
            </tr>
          </table>
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
