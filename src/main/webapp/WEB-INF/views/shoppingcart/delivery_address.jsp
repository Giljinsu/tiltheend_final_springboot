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
    <form action="">
    <div>
        <div class="row mt-4">
            <span class="col-3">배송지 이름</span>
            <div class="col">
                <input class="" type="text" name="DELIVERYNAME" id="Delivery_DELIVERYNAME">
            </div>
        </div>
    </div>
    <div>
        <div class="row mt-2">
            <span class="col-3">이름</span>
            <div class="col">
                <input class="" type="text" name="USERNAME" id="Delivery_USERNAME">
            </div>
        </div>
    </div>
    <div>
        <div class="row mt-2">
            <span class="col-3">휴대전화</span>
            <div class="col">
                <input style="width: 4rem;" type="text" name="firstPhoneNum" id="firstPhoneNum">
                  <span>-</span>
                  <input style="width: 4rem;" type="text" name="secondPhoneNum" id="secondPhoneNum">
                  <span>-</span>
                  <input style="width: 4rem;" type="text" name="thirdPhoneNum" id="thirdPhoneNum">
            </div>
        </div>
    </div>
    <div class="mt-2">
        <div class="row">
            <span class="col-3">배송지주소</span>
            <div class="col">
                <div>
                    <input type="text" placeholder="우편번호" name="POSTNUMBER" id="POSTNUMBER">
                </div>
                <div>
                    <input type="text" placeholder="주소" name="ADDRESS" id="ADDRESS">
                </div>
                <div>
                    <input type="text" placeholder="상세주소" name="DETAILADDRESS" id="DETAILADDRESS">
                </div>
            </div>
        </div>
    </div>
    <div class="mt-2">
        <div>
            <span>배송요청사항</span>
            <select name="REQUIREMENT" id="REQUIREMENT" class="" aria-label="" >
                <option value="default">배송 시 요청사항을 선택해주세요</option>
                <option value="option1" >부재 시 경비실에 맡겨주세요</option>
                <option value="option2">부재 시 택배함에 넣어주세요</option>
                <option value="option3">부재 시 집 앞애 놔주세요</option>
                <option value="option4">파손의 위험이 있는 제품입니다. 조심히 다뤄주세요.</option>
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
        <button class="btn btn-dark" onclick="sendValue()">등록</button>
        <script>
        function sendValue() {
            window.opener.document.getElementById( "purchasePage_DELIVERYNAME" ).innerText=document.getElementById( 'Delivery_DELIVERYNAME' ).value;

            window.opener.document.getElementById( "purchase_USERNAME" ).innerHTML = document.getElementById( 'Delivery_USERNAME' ).value+
            "<input type='hidden' name='USERNAME' value='"+document.getElementById( 'Delivery_USERNAME' ).value+"'>";

            window.opener.document.getElementById( "purchase_number" ).innerHTML = document.getElementById('firstPhoneNum').value+"-"+
            document.getElementById('secondPhoneNum').value+"-"+document.getElementById('thirdPhoneNum').value+
            "<input type='hidden' name='PHONENUMBER' value='"+document.getElementById('firstPhoneNum').value+"-"+
            document.getElementById('secondPhoneNum').value+"-"+document.getElementById('thirdPhoneNum').value+"'>";

            window.opener.document.getElementById( "purchasePage_address" ).innerHTML = document.getElementById('POSTNUMBER').value+" "+
            document.getElementById('ADDRESS').value+" "+document.getElementById('DETAILADDRESS').value+
            "<input type='hidden' name='DELIVERY_ADDRESS' value='"+document.getElementById('POSTNUMBER').value+" "+
            document.getElementById('ADDRESS').value+" "+document.getElementById('DETAILADDRESS').value+"'>";


            var selectElement = document.getElementById("REQUIREMENT");
            var selectvalue = selectElement.options[selectElement.selectedIndex].value;
            window.opener.setSelectedValue(selectvalue);
            window.close();
        }
        </script>
    </div>
    </form>
</body>
</html>