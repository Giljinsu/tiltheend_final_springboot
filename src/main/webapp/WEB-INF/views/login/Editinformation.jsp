<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
    <link rel="stylesheet" href="/css/main.css" />
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
    <main style="margin-top: 8rem">
    <div class="container">
      <div class="d-flex align-items-stretch">
        <div id="left-column" class="me-3 pe-3 border-end">
            <form action="/myPage/purchaselist" class="" method="post">
                <%-- ???????????? --%>
                <input type="hidden" name="UID" value="${userDetailsBean.UID}">
                <%-- <input type="hidden" name="UID" value="U0001"> --%>
                <button class="btn d-flex align-items-center">
                   ????????????
                </button>
            </form>
            <form action="/myPage/editInformation" class="" method="post">
                <%-- ???????????? --%>
                <input type="hidden" name="UID" value="${userDetailsBean.UID}">
                <%-- <input type="hidden" name="UID" value="U0001"> --%>
                <button class="btn d-flex align-items-center">
                   ??????????????????
                </button>
            </form> 
            <form action="/logout" class="" method="post">
                <button class="btn d-flex align-items-center">
                   ????????????
                </button>
            </form>       
          <%-- <div><a href="/myPage/purchaselist">????????????</a></div>
          <div><a href="/myPage/editInformation">??????????????????</a></div> --%>
          <%-- <div><a href="/login/wishListPage">???????????????</a></div> --%>
          <%-- <div><a href="/logout">????????????</a></div> --%>
        </div>
        <div id="right-column" class="">
        <div class="fs-5 mb-3">??????????????????</div>
        <form class="form-group d-flex mb-5" action="/myPage/updateUser" method="post">
        <input type="hidden" name="UID" value="${userDetailsBean.UID}">
          <table class="table w-100 fs-6 font-weight-bold">
            <tr>
              <td>??????</td>
              <td><input id="name" name="USERNAME" class="form-control" value="${currentInfo.USERNAME}" type="text">
              <div id="nameErr"></div>
              </td>
            </tr>
            <tr>
              <td>????????????</td>
              <td><input id="birthYear" name="BIRTH_YEAR" value="${currentInfo.BIRTH_YEAR}" class="form-control" type="date">
                <div id="birthYearErr"></div>
              </td>
            </tr>
            <tr>
              <td>??????</td>
              <td><select name="SEX" id="sex">
                <option value="">---</option>
                <option value="???" ${currentInfo.SEX eq "???" ? 'selected' : ""}>??????</option>
                <option value="???" ${currentInfo.SEX eq "???" ? 'selected' : ""}>??????</option>
              </select>
              <div id="sexErr"></div>
              </td>
            </tr>
            <tr>
              <td>????????????</td>
              <td class="">
                <input class="" value="${currentInfo.PHONENUMBER0}" style="width:5rem;" name="PHONENUMBER0" id="phonenumber0" type="text"> -
                <input class="" value="${currentInfo.PHONENUMBER1}" style="width:8rem;" name="PHONENUMBER1" id="phonenumber1" type="text"> -
                <input class="" value="${currentInfo.PHONENUMBER2}" style="width:8rem;" name="PHONENUMBER2" id="phonenumber2" type="text">
                <div id="phonenumberErr"></div>
              </td>
            </tr>
            <tr>
              <td>?????????</td>
              <td><input class="form-control" value="${currentInfo.EMAIL}" name="EMAIL" id="email" type="text" placeholder="tom@gmail.com">
              <div id="emailErr"></div>
              </td>
            </tr>
            <%-- <tr>
              <td>ID</td>
                <form></form>
              <td class="">
                <input class="form-control mb-2 w-100" value="${currentInfo.ID}" id="id" name="ID" type="text">
                </div>
              </td>
            </tr>
            <tr>
              <td>PW</td>
              <td><input class="form-control" value="${currentInfo.PW}" id="pw" name="PW" type="password">
              </td>
            </tr> --%>
            <tr>
              <td colspan="2" class="text-end">
                <button class="btn btn-dark" >??????????????????</button>
              </td>
            </tr>
          </table>
        </form>
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
    <script>
    let success = '${success}';
    if(success == "success"){
      alert("?????? ?????????????????????!")
    }
    </script>
  </body>
</html>
