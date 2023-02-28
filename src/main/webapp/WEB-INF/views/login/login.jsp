<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
  <link rel="stylesheet" href="./css/main.css">
  <style>
    * {
      /* border: 1px solid black; */
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
    <main style="height:500px;margin-top:320px;">
      <div class="container" style="margin-top:100px"></div>
      <div class="container">
        <form action="/login/login" method="POST">
          <div class="d-flex justify-content-center">
            <input name="id" class="w-25 p-2" type="text" placeholder="ID">
          </div>
          <div class="d-flex justify-content-center">
            <input name="pw" class="w-25 p-2" type="password" placeholder="PW">
          </div>
          <div class="d-flex justify-content-center">
            <button class="w-25 mt-3 btn btn-dark rounded-pill">LOGIN</button>
          </div>
        </form>
        <div class="d-flex justify-content-center">
          <div class="w-25 d-flex justify-content-between">
            <form action="">
              <button class="btn">아이디/비밀번호 찾기</button>
            </form>
            <form action="/login/signup">
              <button class="btn">회원가입</button>
            </form>
          </div>
        </div>
      
      </div>
    </main>
    <%@ include file="../footer.jsp" %>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" 
    crossorigin="anonymous"></script>
</body>
</html>