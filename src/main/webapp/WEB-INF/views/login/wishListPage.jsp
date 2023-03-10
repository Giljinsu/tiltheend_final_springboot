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
    <link rel="stylesheet" href="../css/main.css" />
    <style>
      * {
        /* border: 1px solid gray; */
      }
      #left-column {
        /* border: 1px solid red; */
        width: 13%
      }
      #right-column {
        /* border: 1px solid red; */
        width: 70%
      }
    </style>
  </head>
  <body>
    <%@ include file="../header.jsp" %>
    <!-- modal -->
    <div class="modal fade" id="modalTarget">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content" style="background-color: rgba(0, 0, 0, 0.7)">
          <div class="modal-header" style="color: white">
            Search
            <button class="btn btn-secondary close_button" data-bs-dismiss="modal" style="border: 0; background-color: rgba(0, 0, 0, 0)">
              <span class="material-symbols-outlined"> close </span>
            </button>
          </div>
          <div class="modal-body d-flex align-items-center">
            <input type="text" class="form-control me-3" />
            <a href="" style="color: white">
              <span class="material-symbols-outlined">search</span>
            </a>
          </div>
        </div>
      </div>
    </div>
    
    <main style="margin-top: 5rem">
      <div class="container">
        <div class="d-flex align-items-stretch">
          <div id="left-column" class="me-3 pe-3 border-end">
            <div><a href="/myPage/purchaselist.html">????????????</a></div>
            <div><a href="#">??????????????????</a></div>
            <div><a href="#">???????????????</a></div>
          </div>
          <div id="right-column" class="">
            <div class="fs-5 mb-3">???????????????</div>
            <!-- ???????????? 1????????? start -->
            <a href="">
              <div class="border rounded p-3 mb-3">
                <div class="d-flex"> 
                  <div class="w-25 me-3">
                    <img src="../refer/mypage/shop1.jpg" alt="" class="w-100">
                  </div>
                  <div>
                    <div>?????????: ????????????</div>
                    <div>??????: ?????????</div>
                    <div>????????????: J342</div>
                    <div>??????: 45,000???</div>
                  </div>
                </div>
              </div>
            </a>
            <!-- ???????????? 1????????? end -->
            <a href="">
              <div class="border rounded p-3  mb-3">
                <div class="d-flex"> 
                  <div class="w-25 me-3">
                    <img src="../refer/mypage/shop2.jpg" alt="" class="w-100">
                  </div>
                  <div>
                    <div>?????????: ????????????</div>
                    <div>??????: ??????</div>
                    <div>????????????: S324</div>
                    <div>??????: 27,000???</div>
                  </div>
                </div>
              </div>
            </a>
            
            <a href="">
              <div class="border rounded p-3  mb-3">
                <div class="d-flex"> 
                  <div class="w-25 me-3">
                    <img src="../refer/mypage/shop3.jpg" alt="" class="w-100">
                  </div>
                  <div>
                    <div>?????????: ??????</div>
                    <div>??????: ??????</div>
                    <div>????????????: C634</div>
                    <div>??????: 123,000???</div>
                  </div>
                </div>
              </div>
            </a>
            
          </div>
        </div>
        <div class="d-flex justify-content-center mb-3">
          <button class="btn btn-dark me-2">??????</button>
          <button class="btn btn-dark">??????</button>
        </div>
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
