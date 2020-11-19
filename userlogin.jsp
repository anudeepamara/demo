<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Login</title>
<link rel="stylesheet" href="login-style.css">
<link
	href="https://fonts.googleapis.com/css?family=Raleway:300,400,700&display=swap"
	rel="stylesheet">
</head>

<style>
* {
	box-sizing: border-box;
}

body {
	width: 100vw;
	height: 100vh;
	background-color: #000000;
	overflow: hidden;
	font-size: 12px;
}

.inspiration {
	position: fixed;
	bottom: 0;
	right: 0;
	padding: 10px;
	text-align: center;
	text-decoration: none;
	font-family: 'Gill Sans', sans-serif;
	font-size: 12px;
	color: #969696;
}

.inspiration img {
	width: 60px;
}

.center {
	position: relative;
	top: 50%;
	left: 50%;
	display: inline-block;
	width: 275px;
	height: 490px;
	border-radius: 3px;
	-webkit-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	overflow: hidden;
	background-image: -webkit-gradient(linear, left bottom, right top, from(#f9a743),
		to(#f9db5f));
	background-image: linear-gradient(to top right, #f9a743, #f9db5f);
}

@media screen and (max-height: 500px) {
	.center {
		-webkit-transition: -webkit-transform 0.5s;
		transition: -webkit-transform 0.5s;
		transition: transform 0.5s;
		transition: transform 0.5s, -webkit-transform 0.5s;
		-webkit-transform: translate(-50%, -50%) scale(0.8);
		transform: translate(-50%, -50%) scale(0.8);
	}
}

.center .ear {
	position: absolute;
	top: -110px;
	width: 200px;
	height: 200px;
	border-radius: 50%;
	background-color: #243946;
}

.center .ear.ear--left {
	left: -135px;
}

.center .ear.ear--right {
	right: -135px;
}

.center .face {
	display: -webkit-box;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	flex-direction: column;
	-webkit-box-align: center;
	align-items: center;
	width: 200px;
	height: 150px;
	margin: 80px auto 10px; -
	-rotate-head: 0deg;
	-webkit-transform: rotate(var(- -rotate-head));
	transform: rotate(var(- -rotate-head));
	-webkit-transition: -webkit-transform 0.2s;
	transition: -webkit-transform 0.2s;
	transition: transform 0.2s;
	transition: transform 0.2s, -webkit-transform 0.2s;
	-webkit-transform-origin: center 20px;
	transform-origin: center 20px;
}

.center .eye {
	display: inline-block;
	width: 25px;
	height: 25px;
	border-radius: 50%;
	background-color: #243946;
}

.center .eye.eye--left {
	margin-right: 40px;
}

.center .eye.eye--right {
	margin-left: 40px;
}

.center .eye .glow {
	position: relative;
	top: 3px;
	right: -12px;
	width: 12px;
	height: 6px;
	border-radius: 50%;
	background-color: #fff;
	-webkit-transform: rotate(38deg);
	transform: rotate(38deg);
}

.center .nose {
	position: relative;
	top: 30px;
	-webkit-transform: scale(1.1);
	transform: scale(1.1);
}

.center .nose .glow {
	position: absolute;
	top: 3px;
	left: 32%;
	width: 15px;
	height: 8px;
	border-radius: 50%;
	background-color: #476375;
}

.center .mouth {
	position: relative;
	margin-top: 45px;
}

.center svg.smile {
	position: absolute;
	left: -28px;
	top: -19px;
	-webkit-transform: scaleX(1.1);
	transform: scaleX(1.1);
	stroke: #243946;
}

.center .mouth-hole {
	position: absolute;
	top: 0;
	left: -50%;
	width: 60px;
	height: 15px;
	border-radius: 50%/100% 100% 0% 0;
	-webkit-transform: rotate(180deg);
	transform: rotate(180deg);
	background-color: #243946;
	z-index: -1;
}

.center .tongue {
	position: relative;
	top: 5px;
	width: 30px;
	height: 20px;
	background-color: #ffd7dd;
	-webkit-transform-origin: top;
	transform-origin: top;
	-webkit-transform: rotateX(60deg);
	transform: rotateX(60deg);
}

.center .tongue.breath {
	-webkit-animation: breath 0.3s infinite linear;
	animation: breath 0.3s infinite linear;
}

.center .tongue-top {
	position: absolute;
	bottom: -15px;
	width: 30px;
	height: 30px;
	border-radius: 15px;
	background-color: #ffd7dd;
}

.center .line {
	position: absolute;
	top: 0;
	width: 30px;
	height: 5px;
	background-color: #fcb7bf;
}

.center .median {
	position: absolute;
	top: 0;
	left: 50%;
	-webkit-transform: translateX(-50%);
	transform: translateX(-50%);
	width: 4px;
	height: 25px;
	border-radius: 5px;
	background-color: #fcb7bf;
}

.center .hands {
	position: relative;
}

.center .hands .hand {
	position: absolute;
	top: -6px;
	display: -webkit-box;
	display: flex;
	-webkit-transition: -webkit-transform 0.5s ease-in-out;
	transition: -webkit-transform 0.5s ease-in-out;
	transition: transform 0.5s ease-in-out;
	transition: transform 0.5s ease-in-out, -webkit-transform 0.5s
		ease-in-out;
	z-index: 1;
}

.center .hands .hand--left {
	left: 50px;
}

.center .hands .hand--left.hide {
	-webkit-transform: translate(2px, -155px) rotate(-160deg);
	transform: translate(2px, -155px) rotate(-160deg);
}

.center .hands .hand--left.peek {
	-webkit-transform: translate(0px, -120px) rotate(-160deg);
	transform: translate(0px, -120px) rotate(-160deg);
}

.center .hands .hand--right {
	left: 170px;
}

.center .hands .hand--right.hide {
	-webkit-transform: translate(-6px, -155px) rotate(160deg);
	transform: translate(-6px, -155px) rotate(160deg);
}

.center .hands .hand--right.peek {
	-webkit-transform: translate(-4px, -120px) rotate(160deg);
	transform: translate(-4px, -120px) rotate(160deg);
}

.center .hands .finger {
	position: relative;
	z-index: 0;
}

.center .hands .finger .bone {
	width: 20px;
	height: 20px;
	border: 2px solid #243946;
	border-bottom: none;
	border-top: none;
	background-color: #fac555;
}

.center .hands .finger .nail {
	position: absolute;
	left: 0;
	top: 10px;
	width: 20px;
	height: 18px;
	border-radius: 50%;
	border: 2px solid #243946;
	background-color: #fac555;
	z-index: -1;
}

.center .hands .finger:nth-child(1), .center .hands .finger:nth-child(3)
	{
	left: 4px;
	z-index: 1;
}

.center .hands .finger:nth-child(1) .bone, .center .hands .finger:nth-child(3) .bone
	{
	height: 10px;
}

.center .hands .finger:nth-child(3) {
	left: -4px;
}

.center .hands .finger:nth-child(2) {
	top: -5px;
	z-index: 2;
}

.center .hands .finger:nth-child(1) .nail, .center .hands .finger:nth-child(3) .nail
	{
	top: 0px;
}

.center .login {
	position: relative;
	display: -webkit-box;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	flex-direction: column;
}

.center .login label {
	position: relative;
	padding: 0 20px;
}

.center .login label .fa {
	position: absolute;
	top: 40%;
	left: 35px;
	color: #bbb;
}

.center .login label .fa:before {
	position: relative;
	left: 1px;
}

.center .login input, .center .login .login-button {
	width: 100%;
	height: 35px;
	border: none;
	border-radius: 30px;
}

.center .login input {
	padding: 0 20px 0 40px;
	margin: 5px 0;
	box-shadow: none;
	outline: none;
}

.center .login input::-webkit-input-placeholder {
	color: #ccc;
}

.center .login input::-moz-placeholder {
	color: #ccc;
}

.center .login input:-ms-input-placeholder {
	color: #ccc;
}

.center .login input::-ms-input-placeholder {
	color: #ccc;
}

.center .login input::placeholder {
	color: #ccc;
}

.center .login input.password {
	padding: 0 90px 0 40px;
}

.center .login .password-button {
	position: absolute;
	top: 9px;
	right: 25px;
	display: -webkit-box;
	display: flex;
	-webkit-box-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	align-items: center;
	width: 80px;
	height: 27px;
	border-radius: 30px;
	border: none;
	outline: none;
	background-color: #243946;
	color: #fff;
}

.center .login .password-button:active {
	-webkit-transform: scale(0.95);
	transform: scale(0.95);
}

.center .login .login-button {
	width: calc(100% - 40px);
	margin: 20px 20px 0;
	outline: none;
	background-color: #243946;
	color: #fff;
	-webkit-transition: -webkit-transform 0.1s;
	transition: -webkit-transform 0.1s;
	transition: transform 0.1s;
	transition: transform 0.1s, -webkit-transform 0.1s;
}

.center .login .login-button:active {
	-webkit-transform: scale(0.95);
	transform: scale(0.95);
}

.center .social-buttons {
	display: -webkit-box;
	display: flex;
	-webkit-box-pack: center;
	justify-content: center;
	margin-top: 25px;
}

.center .social-buttons .social {
	display: -webkit-box;
	display: flex;
	-webkit-box-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	align-items: center;
	width: 35px;
	height: 35px;
	margin: 0 10px;
	border-radius: 50%;
	background-color: #243946;
	color: #fff;
	font-size: 18px;
}

.center .social-buttons .social:active {
	-webkit-transform: scale(0.95);
	transform: scale(0.95);
}

.center .footer {
	text-align: center;
	margin-top: 15px;
}

@
-webkit-keyframes breath { 0%, 100% {
	-webkit-transform: rotateX(0deg);
	transform: rotateX(0deg);
}

50%
{
-webkit-transform














:







 







rotateX














(60
deg












);
transform














:







 







rotateX














(60
deg












);
}
}
@
keyframes breath { 0%, 100% {
	-webkit-transform: rotateX(0deg);
	transform: rotateX(0deg);
}
50%
{
-webkit-transform














:







 







rotateX














(60
deg












);
transform














:







 







rotateX














(60
deg












);
}
}
</style>

<body>

	<div class="center">
		<div class="ear ear--left"></div>
		<div class="ear ear--right"></div>
		<div class="face">
			<div class="eyes">
				<div class="eye eye--left">
					<div class="glow"></div>
				</div>
				<div class="eye eye--right">
					<div class="glow"></div>
				</div>
			</div>
			<div class="nose">
				<svg width="38.161" height="22.03">
          <path
						d="M2.017 10.987Q-.563 7.513.157 4.754C.877 1.994 2.976.135 6.164.093 16.4-.04 22.293-.022 32.048.093c3.501.042 5.48 2.081 6.02 4.661q.54 2.579-2.051 6.233-8.612 10.979-16.664 11.043-8.053.063-17.336-11.043z"
						fill="#243946"></path>
        </svg>
				<div class="glow"></div>
			</div>
			<div class="mouth">
				<svg class="smile" viewBox="-2 -2 84 23" width="84" height="23">
          <path
						d="M0 0c3.76 9.279 9.69 18.98 26.712 19.238 17.022.258 10.72.258 28 0S75.959 9.182 79.987.161"
						fill="none" stroke-width="3" stroke-linecap="square"
						stroke-miterlimit="3"></path>
        </svg>
				<div class="mouth-hole"></div>
				<div class="tongue breath">
					<div class="tongue-top"></div>
					<div class="line"></div>
					<div class="median"></div>
				</div>
			</div>
		</div>
		<div class="hands">
			<div class="hand hand--left">
				<div class="finger">
					<div class="bone"></div>
					<div class="nail"></div>
				</div>
				<div class="finger">
					<div class="bone"></div>
					<div class="nail"></div>
				</div>
				<div class="finger">
					<div class="bone"></div>
					<div class="nail"></div>
				</div>
			</div>
			<div class="hand hand--right">
				<div class="finger">
					<div class="bone"></div>
					<div class="nail"></div>
				</div>
				<div class="finger">
					<div class="bone"></div>
					<div class="nail"></div>
				</div>
				<div class="finger">
					<div class="bone"></div>
					<div class="nail"></div>
				</div>
			</div>
		</div>
		<div class="login">
			<form action="/login" method="post" modelAttribute="login"
				class="form">


				<label>
					<div class="fa fa-phone"></div> <input class="username" type="text"
					name="username" autocomplete="on" placeholder="username" />
				</label> <label>
					<div class="fa fa-commenting"></div> <input class="password"
					name="password" type="password" autocomplete="off"
					placeholder="password" />
					<button class="password-button">password</button>
				</label>
				<button class="login-button">Login</button>

				<a href="register"><input type="button" value="SIGNUP"></a>
			</form>

		</div>
		<div class="social-buttons">
			<div class="social">
				<div class="fa fa-wechat"></div>
			</div>
			<div class="social">
				<div class="fa fa-weibo"></div>
			</div>
			<div class="social">
				<div class="fa fa-paw"></div>
			</div>
		</div>
		<div class="footer"></div>

	</div>


	<a class="inspiration"
		href="https://dribbble.com/shots/4485321-Login-Page-Homepage"
		target="_blank" rel="noopener"><img
		src="https://cdn.dribbble.com/assets/logo-footer-hd-a05db77841b4b27c0bf23ec1378e97c988190dfe7d26e32e1faea7269f9e001b.png"
		alt="inspiration" /></a>

</body>
<script>
    /*
  Inspired by: "Login Page & Homepage"
  By: Neo
  Link: https://dribbble.com/shots/4485321-Login-Page-Homepage
*/

let usernameInput = document.querySelector('.username')
let passwordInput = document.querySelector('.password')
let showPasswordButton = document.querySelector('.password-button')
let face = document.querySelector('.face')

passwordInput.addEventListener('focus', event => {
  document.querySelectorAll('.hand').forEach(hand => {
    hand.classList.add('hide')
  })
  document.querySelector('.tongue').classList.remove('breath')
})

passwordInput.addEventListener('blur', event => {
  document.querySelectorAll('.hand').forEach(hand => {
    hand.classList.remove('hide')
    hand.classList.remove('peek')
  })
  document.querySelector('.tongue').classList.add('breath')
})

usernameInput.addEventListener('focus', event => {
  let length = Math.min(usernameInput.value.length - 16, 19)
  document.querySelectorAll('.hand').forEach(hand => {
    hand.classList.remove('hide')
    hand.classList.remove('peek')
  })
  
  face.style.setProperty('--rotate-head', `${-length}deg`)
})

usernameInput.addEventListener('blur', event => {
  face.style.setProperty('--rotate-head', '0deg')
})
  
usernameInput.addEventListener('input', _.throttle(event => {
  let length = Math.min(event.target.value.length - 16, 19)
  
  face.style.setProperty('--rotate-head', `${-length}deg`)
}, 100))

showPasswordButton.addEventListener('click', event => {
  if (passwordInput.type === 'text') {
    passwordInput.type = 'password'
    document.querySelectorAll('.hand').forEach(hand => {
      hand.classList.remove('peek')
      hand.classList.add('hide')
    })
  } else {
    passwordInput.type = 'text'
    document.querySelectorAll('.hand').forEach(hand => {
      hand.classList.remove('hide')
      hand.classList.add('peek')
    })
  }
})
</script>
</body>
</html>





