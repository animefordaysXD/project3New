<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="UTF-8">

<head>
<title></title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="resources/css/register.css" rel="stylesheet">
<script type="text/javascript">
function comparePassword() {
		var password = document.getElementById("password").value;
		var passwordCheck = document.getElementById("passwordCheck").value;
		var pwdText = document.getElementById("pwdText");
		
		if (password == passwordCheck && password != "") {
			pwdText.textContent = "";
		} else {
			pwdText.textContent = "비밀번호가 맞지않습니다";		
		}
	}
	
function setVisibility() {
	  var x = document.getElementById("divOne");
	  if (x.style.display === "none") {
	    x.style.display = "flex";
	  } else {
	    x.style.display = "none";
	  }
	}



</script>
</head>
<body>
	<div class="box">
		<div class="signup">
			<div class="signupEmail">
			<form action="registerOK.do" method="post">
				<input type="text" class="input_field" id="email"
					placeholder="이메일/아이디" name="email" value="${email }">
				<button class="signUpbutton" id="getEmail">중복체크</button><p class="getId">${emailUse}</p>
				</form>
			</div>
			<div class="password">
				<input type="password" class="input_field" id="password"
					placeholder="비밀번호">
				<div class="space"></div>
				<p id="pwdText" style="color: #fff"></p> 
				<input
					type="password" class="input_field" id="passwordCheck"
					placeholder="비밀번호확인" oninput="comparePassword()">
				<div class="space"></div>

			</div>
			<div class="nameGender">
				<input type="text" class="input_field" id="name" placeholder="이름">
				<div class="space"></div>
				<select class="gender" id="gender">
					<option value="">성별을 선택해주세요</option>
					<option value="1">남성</option>
					<option value="2">여성</option>
				</select>
				<div class="space"></div>
			</div>
			<div class="getConfirm">
				<input type="text" class="input_field" placeholder="인증번호">
				<button class="signUpbutton">인증확인</button>
				<button class="signUpbutton">재요청</button>

				<div class="space"></div>

			</div>
			<div class="birthDay">
				<label for="birthday" class="birthdayLabel">생일을 선택해주세요</label><br>
				<input type="date" id="birthday" name="birthday">
				<div class="space"></div>
			</div>
			<div class="space"></div>
			<textarea class="terms" readonly>
 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                  </textarea>
			<label for="termCheck">이용약관<input type="checkbox"
				class="termCheck"></input></label>

		</div>
	</div>
	<div class="regButtons">

		<button class="regCheck" onclick="setVisibility()">회원가입 완료</button>

	</div>
	
	<div class="overlay" id="divOne" style="display: none;">
        <div class="wrapper">
            <a href="javascript:setVisibility();" class="close">X</a>
            <h2 class="popUpHeader">선호하는 지역이랑 시간을 알려주세요!</h2>
            <div class="content">
                <div class="container">
                    <form>
                        <label>닉네임(별명)<input type="text" class="NickName" placeholder="사용하실 닉네임"></label>
                        <br>
                        <button class="getNick">닉네임 중복 확인</button>
                        <br>
                        <p> 자신의 지역을 알려주세요!</p>
                        <button class="seoul">서울시</button> <button class="city">${city}구</button>
                        <br>
                        <br>
                        <p> 선호하는 시간을 알려주세요!</p>
                         <input type="time" class="prefTime" id="prefTime"><label class="prefTimeLab">부터</label>
                         <input type="time" class="prefTime2" id="prefTime2"><label class="prefTimeLab">까지</label>
                        <br>
                        <div class="space"></div>
                        <button class="confirmSign" value="submit">확인</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
	




</body>

</html>