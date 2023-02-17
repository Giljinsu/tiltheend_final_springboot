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
</head>
<body>
    <h4>주소 추가</h4>
    <div>
        <div class="row mt-4">
            <span class="col-3">이름</span>
            <div class="col">
                <input class="" type="text" name="" id="">
            </div>
        </div>
    </div>
    <div>
        <div class="row mt-2">
            <span class="col-3">휴대전화</span>
            <div class="col">
                <input style="width: 4rem;" type="text" name="firstPhoneNum" id="">
                  <span>-</span>
                  <input style="width: 4rem;" type="text" name="secondPhoneNum" id="">
                  <span>-</span>
                  <input style="width: 4rem;" type="text" name="thirdPhoneNum" id="">
            </div>
        </div>
    </div>
    <div class="mt-2">
        <div class="row">
            <span class="col-3">배송지주소</span>
            <div class="col">
                <div>
                    <input type="text" placeholder="우편번호" name="" id="">
                </div>
                <div>
                    <input type="text" placeholder="주소" name="" id="">
                </div>
                <div>
                    <input type="text" placeholder="상세주소" name="" id="">
                </div>
            </div>
        </div>
    </div>
    <div class="mt-2">
        <div>
            <span>배송요청사항</span>
            <select class="" aria-label="" >
                <option selected>배송 시 요청사항을 선택해주세요</option>
                <option value="부재 시 경비실에 맡겨주세요">부재 시 경비실에 맡겨주세요</option>
                <option value="부재 시 택배함에 넣어주세요">부재 시 택배함에 넣어주세요</option>
                <option value="부재 시 집 앞애 놔주세요">부재 시 집 앞애 놔주세요</option>
                <option value="파손의 위험이 있는 제품입니다. 조심히 다뤄주세요.">파손의 위험이 있는 제품입니다. 조심히 다뤄주세요.</option>
            </select>
        </div>
    </div>
    <div class="text-center mt-3">
        <button class="btn btn-light me-2" onclick="close_window()">취소</button>
        <script>
            function close_window() {
                window.close();
            }
        </script>
        <button class="btn btn-dark">등록</button>
    </div>

</body>
</html>