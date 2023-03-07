
let canSubmit = document.querySelector("#idcheck").value;
function validateForm() {
    let nameValue = document.querySelector("#name").value;
    let birthYearValue = document.querySelector("#birthYear").value;
    let sexValue = document.querySelector("#sex").value;
    let phonenumber0Value = document.querySelector("#phonenumber0").value;
    let phonenumber1Value = document.querySelector("#phonenumber1").value;
    let phonenumber2Value = document.querySelector("#phonenumber2").value;
    let emailValue = document.querySelector("#email").value;
    let idValue = document.querySelector("#id").value;
    let pwValue = document.querySelector("#pw").value;

    let nameError = document.querySelector("#nameErr");
    if(nameValue == "") {
        nameError.innerHTML="이름을 입력해주세요";
        nameError.style.color = "red";
        return false;
    }
    nameError.innerHTML="";

    let birthYearErr = document.querySelector("#birthYearErr");
    if(birthYearValue == "") {
        birthYearErr.innerHTML="생년월일을 입력해주세요";
        birthYearErr.style.color = "red";
        return false;
    }
    birthYearErr.innerHTML="";

    let sexErr = document.querySelector("#sexErr");
    if(sexValue == "") {
        sexErr.innerHTML="성별을 입력해주세요";
        sexErr.style.color = "red";
        return false;
    }
    sexErr.innerHTML="";

    let phonenumberErr = document.querySelector("#phonenumberErr");
    if(phonenumber0Value == "") {
        phonenumberErr.innerHTML="전화번호를 입력해주세요";
        phonenumberErr.style.color = "red";
        return false;
    }
    phonenumberErr.innerHTML="";

    if(phonenumber1Value == "") {
        phonenumberErr.innerHTML="전화번호를 입력해주세요";
        phonenumberErr.style.color = "red";
        return false;
    }
    phonenumberErr.innerHTML="";

    if(phonenumber2Value == "") {
        phonenumberErr.innerHTML="전화번호를 입력해주세요";
        phonenumberErr.style.color = "red";
        return false;
    }
    phonenumberErr.innerHTML="";


    let emailErr = document.querySelector("#emailErr");
    if(emailValue == "") {
        emailErr.innerHTML="이메일을 입력해주세요";
        emailErr.style.color = "red";
        return false;
    }
    emailErr.innerHTML="";

    
    let idErr = document.querySelector("#idErr");
    if(idValue == "") {
        idErr.innerHTML="아이디를 입력해주세요";
        idErr.style.color = "red";
        return false;
    }
    idErr.innerHTML="";

    
    let pwErr = document.querySelector("#pwErr");
    if(pwValue == "") {
        pwErr.innerHTML="비밀번호를 입력해주세요";
        pwErr.style.color = "red";
        return false;
    }
    pwErr.innerHTML="";

    if(canSubmit == "사용가능한 ID입니다.") {
        return true;
    }
    idErr.innerHTML="아이디 중복체크해주세요!";
    return false;
}

function checkId() {
    let nameValue = document.querySelector("#name").value;
    let birthYearValue = document.querySelector("#birthYear").value;
    let sexValue = document.querySelector("#sex").value;
    let phonenumber0Value = document.querySelector("#phonenumber0").value;
    let phonenumber1Value = document.querySelector("#phonenumber1").value;
    let phonenumber2Value = document.querySelector("#phonenumber2").value;
    let emailValue = document.querySelector("#email").value;
    let idValue = document.querySelector("#id").value;
    let pwValue = document.querySelector("#pw").value;

    let idErr = document.querySelector("#idErr");
    if(idValue == "") {
        idErr.innerHTML="아이디를 입력해주세요";
        idErr.style.color = "red";
        return false;
    }
    idErr.innerHTML="";

    let idCheckForm = document.querySelector("#idCheckForm");
    let addHiddenInput = document.querySelector("#addHiddenInput");
    addHiddenInput.innerHTML="<input type='hidden' name='nameValue' value='"+nameValue+"'>"+
    "<input type='hidden' name='birthYearValue' value='"+birthYearValue+"'>"+
    "<input type='hidden' name='sexValue' value='"+sexValue+"'>"+
    "<input type='hidden' name='phonenumber0Value' value='"+phonenumber0Value+"'>"+
    "<input type='hidden' name='phonenumber1Value' value='"+phonenumber1Value+"'>"+
    "<input type='hidden' name='phonenumber2Value' value='"+phonenumber2Value+"'>"+
    "<input type='hidden' name='emailValue' value='"+emailValue+"'>"+
    "<input type='hidden' name='idValue' value='"+idValue+"'>"+
    "<input type='hidden' name='pwValue' value='"+pwValue+"'>";
    idCheckForm.submit();
}