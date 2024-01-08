<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet" />

<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/style.css' />">
<!-- Bootstrap JS Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
<!-- Bootstrap Font Icon CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">


<title>Seoul tour</title>

<!-- CSS 링크 -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">

<!-- jQuery 및 Bootstrap JS 링크 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


<!-- Bootstrap core CSS -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet" />

<!-- Additional CSS Files -->
<link rel="stylesheet" href="/resources/css/fontawesome.css" />
<link rel="stylesheet" href="/resources/css/templatemo-villa-agency.css" />
<link rel="stylesheet" href="/resources/css/owl.css" />
<link rel="stylesheet" href="/resources/css/animate.css" />
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

</head>


<style>
/*		
		Template
		*/

/* ---------------------------------------------
		Table of contents
		------------------------------------------------
		01. font & reset css
		02. reset
		03. global styles
		04. header
		05. banner
		06. features
		09. footer
		
		--------------------------------------------- */
/* 
		---------------------------------------------
		font & reset css
		--------------------------------------------- 
		*/
@import
	url("https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900")
	;
/* 
		---------------------------------------------
		reset
		--------------------------------------------- 
		*/
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, div
		pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font,
	img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b,
	u, i, center, dl, dt, dd, ol, ul, li, figure, header, nav, section,
	article, aside, footer, figcaption {
	margin: 0;
	padding: 0;
	border: 0;
	outline: 0;
}

.clearfix:after {
	content: ".";
	display: block;
	clear: both;
	visibility: hidden;
	line-height: 0;
	height: 0;
}

.clearfix {
	display: inline-block;
}

html[xmlns] .clearfix {
	display: block;
}

* html .clearfix {
	height: 1%;
}

ul, li {
	padding: 0;
	margin: 0;
	list-style: none;
}

header, nav, section, article, aside, footer, hgroup {
	display: block;
}

* {
	box-sizing: border-box;
}

html, body {
	font-family: 'Poppins', sans-serif;
	-ms-text-size-adjust: 100%;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}

a {
	text-decoration: none !important;
}

h1, h2, h3, h4, h5, h6 {
	color: #1e1e1e;
	margin-top: 0px;
	margin-bottom: 0px;
	font-weight: 700;
}

ul {
	margin-bottom: 0px;
}

p {
	font-size: 14px;
	line-height: 28px;
	color: #4a4a4a;
}

img {
	width: 100%;
	overflow: hidden;
}

/* 
		---------------------------------------------
		Global Styles
		--------------------------------------------- 
		*/
html, body {
	font-family: 'Poppins', sans-serif;
}

::selection {
	background: #0071f8;
	color: #fff;
}

::-moz-selection {
	background: #0071f8;
	color: #fff;
}

.section {
	margin-top: 120px;
}

.section-heading {
	margin-bottom: 70px;
}

.section-heading h2 {
	font-size: 40px;
	font-weight: 700;
	text-transform: capitalize;
	margin-top: 20px;
	line-height: 56px;
}

.section-heading h2 em {
	font-style: normal;
	color: #0071f8;
}

.section-heading h6 {
	color: #ee626b;
	font-size: 15px;
	text-transform: uppercase;
	font-weight: 700;
}

.icon-button a {
	display: inline-block;
	background-color: #1e1e1e;
	color: #fff;
	font-size: 14px;
	font-weight: 400;
	height: 50px;
	line-height: 50px;
	padding: 0px 30px 0px 0px;
	border-radius: 25px;
	transition: all .3s;
}

.icon-button a i {
	background-color: #f35525;
	height: 50px;
	width: 50px;
	text-align: center;
	border-radius: 50%;
	line-height: 50px;
	display: inline-block;
	margin-right: 15px;
	margin-left: -1px;
}

.icon-button a:hover {
	color: #f35525;
}

.icon-button a:hover i {
	color: #fff;
}

.main-button a {
	display: inline-block;
	background-color: #1e1e1e;
	color: #fff;
	font-size: 14px;
	font-weight: 500;
	height: 40px;
	line-height: 40px;
	padding: 0px 30px;
	border-radius: 25px;
	transition: all .3s;
}

.main-button a:hover {
	background-color: #f35525;
	color: #fff;
}

/* 
		---------------------------------------------
		Pre-loader Style
		--------------------------------------------- 
		*/
.js-preloader {
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: rgba(0, 0, 0, 0.99);
	display: -webkit-box;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	opacity: 1;
	visibility: visible;
	z-index: 9999;
	-webkit-transition: opacity 0.25s ease;
	transition: opacity 0.25s ease;
}

.js-preloader.loaded {
	opacity: 0;
	visibility: hidden;
	pointer-events: none;
}

@
-webkit-keyframes dot { 50% {
	-webkit-transform: translateX(96px);
	transform: translateX(96px);
}

}
@
keyframes dot { 50% {
	-webkit-transform: translateX(96px);
	transform: translateX(96px);
}

}
@
-webkit-keyframes dots { 50% {
	-webkit-transform: translateX(-31px);
	transform: translateX(-31px);
}

}
@
keyframes dots { 50% {
	-webkit-transform: translateX(-31px);
	transform: translateX(-31px);
}

}
.preloader-inner {
	position: relative;
	width: 142px;
	height: 40px;
	background: transparent;
}

.preloader-inner .dot {
	position: absolute;
	width: 16px;
	height: 16px;
	top: 12px;
	left: 15px;
	background: #f35525;
	border-radius: 50%;
	-webkit-transform: translateX(0);
	transform: translateX(0);
	-webkit-animation: dot 2.8s infinite;
	animation: dot 2.8s infinite;
}

.preloader-inner .dots {
	-webkit-transform: translateX(0);
	transform: translateX(0);
	margin-top: 12px;
	margin-left: 31px;
	-webkit-animation: dots 2.8s infinite;
	animation: dots 2.8s infinite;
}

.preloader-inner .dots span {
	display: block;
	float: left;
	width: 16px;
	height: 16px;
	margin-left: 16px;
	background: #f35525;
	border-radius: 50%;
}

/* 
		---------------------------------------------
		Header Style
		--------------------------------------------- 
		*/
.sub-header {
	background-color: #fff;
	padding: 10px 0px;
	border-bottom: 1px solid #eee;
}

.sub-header ul li {
	display: inline-block;
}

.sub-header ul.social-links {
	text-align: right;
}

.sub-header ul.social-links li {
	margin-left: 8px;
}

.sub-header ul.social-links li a {
	display: inline-block;
	width: 30px;
	height: 30px;
	background-color: #cdcdcd;
	border-radius: 50%;
	text-align: center;
	line-height: 30px;
	color: #fff;
	font-size: 14px;
	transition: all .3s;
}

.sub-header ul.social-links li a:hover {
	background-color: #f35525;
}

.sub-header ul.info li {
	font-size: 14px;
	color: #7a7a7a;
	border-right: 1px solid #eee;
	margin-right: 25px;
	padding-right: 25px;
}

.sub-header ul.info li:last-child {
	margin-right: 0px;
	padding-right: 0px;
	border-right: none;
}

.sub-header ul.info li i {
	font-size: 20px;
	color: #f35525;
	margin-right: 8px;
}

.background-header {
	background-color: #fff;
	height: 80px !important;
	position: fixed !important;
	top: 0 !important;
	left: 0;
	right: 0;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.15) !important;
	-webkit-transition: all .5s ease 0s;
	-moz-transition: all .5s ease 0s;
	-o-transition: all .5s ease 0s;
	transition: all .5s ease 0s;
}

.header-area {
	position: relative;
	background-color: #fff;
	height: 100px;
	z-index: 100;
	-webkit-transition: all .5s ease 0s;
	-moz-transition: all .5s ease 0s;
	-o-transition: all .5s ease 0s;
	transition: all .5s ease 0s;
}

.header-area .main-nav {
	background: transparent;
	display: flex;
}

.header-area .main-nav .logo {
	-webkit-transition: all 0.3s ease 0s;
	-moz-transition: all 0.3s ease 0s;
	-o-transition: all 0.3s ease 0s;
	transition: all 0.3s ease 0s;
	display: inline-block;
}

.header-area .main-nav .logo h1 {
	line-height: 100px;
	font-size: 28px;
	text-transform: uppercase;
	color: #1e1e1e;
	font-weight: 700;
	letter-spacing: 2px;
}

.background-header .main-nav .logo h1 {
	line-height: 80px;
}

.header-area .main-nav ul.nav {
	flex-basis: 100%;
	margin-top: 30px;
	justify-content: right;
	-webkit-transition: all 0.3s ease 0s;
	-moz-transition: all 0.3s ease 0s;
	-o-transition: all 0.3s ease 0s;
	transition: all 0.3s ease 0s;
	position: relative;
	z-index: 999;
}

.header-area .main-nav .nav li:last-child {
	padding-right: 0px;
}

.header-area .main-nav .nav li {
	padding-left: 10px;
	padding-right: 10px;
	height: 100px;
	line-height: 100px;
}

.header-area .main-nav .nav li a {
	display: block;
	padding-left: 20px;
	padding-right: 20px;
	font-weight: 500;
	font-size: 15px;
	height: 40px;
	line-height: 40px;
	text-transform: capitalize;
	color: #1e1e1e;
	-webkit-transition: all 0.4s ease 0s;
	-moz-transition: all 0.4s ease 0s;
	-o-transition: all 0.4s ease 0s;
	transition: all 0.4s ease 0s;
	border: transparent;
	letter-spacing: .25px;
}

.header-area .main-nav .nav li:last-child a {
	background-color: #1e1e1e;
	color: #fff;
	font-size: 14px;
	font-weight: 400;
	text-transform: none;
	border-radius: 20px;
	padding-left: 0px;
}

.header-area .main-nav .nav li:last-child a i {
	background-color: #f35525;
	display: inline-block;
	width: 40px;
	height: 40px;
	text-align: center;
	line-height: 40px;
	margin-right: 10px;
	border-radius: 50%;
	margin-left: -1px;
}

.header-area .main-nav .nav li:last-child:hover a {
	background-color: #1e1e1e;
}

.header-area .main-nav .nav li:last-child:hover a i {
	color: #fff;
}

.header-area .main-nav .nav li:hover a {
	color: #f35525;
}

.header-area .main-nav .nav li a.active {
	color: #f35525;
}

.background-header .main-nav .nav li a.active {
	color: #f35525;
}

.header-area .main-nav .menu-trigger {
	cursor: pointer;
	position: absolute;
	top: 23px;
	width: 32px;
	height: 40px;
	text-indent: -9999em;
	z-index: 99;
	right: 20px;
	display: none;
}

.background-header .main-nav .menu-trigger {
	top: 22px;
}

.background-header .main-nav ul.nav {
	margin-top: 20px;
}

.header-area .main-nav .menu-trigger span, .header-area .main-nav .menu-trigger span:before,
	.header-area .main-nav .menu-trigger span:after {
	-moz-transition: all 0.4s;
	-o-transition: all 0.4s;
	-webkit-transition: all 0.4s;
	transition: all 0.4s;
	background-color: #1e1e1e;
	display: block;
	position: absolute;
	width: 30px;
	height: 2px;
	left: 0;
}

.header-area .main-nav .menu-trigger span:before, .header-area .main-nav .menu-trigger span:after
	{
	-moz-transition: all 0.4s;
	-o-transition: all 0.4s;
	-webkit-transition: all 0.4s;
	transition: all 0.4s;
	background-color: #1e1e1e;
	display: block;
	position: absolute;
	width: 30px;
	height: 2px;
	left: 0;
	width: 75%;
}

.header-area .main-nav .menu-trigger span:before, .header-area .main-nav .menu-trigger span:after
	{
	content: "";
}

.header-area .main-nav .menu-trigger span {
	top: 16px;
}

.header-area .main-nav .menu-trigger span:before {
	-moz-transform-origin: 33% 100%;
	-ms-transform-origin: 33% 100%;
	-webkit-transform-origin: 33% 100%;
	transform-origin: 33% 100%;
	top: -10px;
	z-index: 10;
}

.header-area .main-nav .menu-trigger span:after {
	-moz-transform-origin: 33% 0;
	-ms-transform-origin: 33% 0;
	-webkit-transform-origin: 33% 0;
	transform-origin: 33% 0;
	top: 10px;
}

.header-area .main-nav .menu-trigger.active span, .header-area .main-nav .menu-trigger.active span:before,
	.header-area .main-nav .menu-trigger.active span:after {
	background-color: transparent;
	width: 100%;
}

.header-area .main-nav .menu-trigger.active span:before {
	-moz-transform: translateY(6px) translateX(1px) rotate(45deg);
	-ms-transform: translateY(6px) translateX(1px) rotate(45deg);
	-webkit-transform: translateY(6px) translateX(1px) rotate(45deg);
	transform: translateY(6px) translateX(1px) rotate(45deg);
	background-color: #1e1e1e;
}

.background-header .main-nav .menu-trigger.active span:before {
	background-color: #1e1e1e;
}

.header-area .main-nav .menu-trigger.active span:after {
	-moz-transform: translateY(-6px) translateX(1px) rotate(-45deg);
	-ms-transform: translateY(-6px) translateX(1px) rotate(-45deg);
	-webkit-transform: translateY(-6px) translateX(1px) rotate(-45deg);
	transform: translateY(-6px) translateX(1px) rotate(-45deg);
	background-color: #1e1e1e;
}

.background-header .main-nav .menu-trigger.active span:after {
	background-color: #1e1e1e;
}

.visible {
	display: inline !important;
}

@media ( max-width : 1200px) {
	.header-area .main-nav .nav li {
		padding-left: 5px;
		padding-right: 5px;
	}
}

@media ( max-width : 767px) {
	.background-header .main-nav {
		box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.15);
		border-radius: 0px 0px 25px 25px;
		width: 100%;
	}
	.background-header .main-nav .nav, .header-area .main-nav .nav {
		background-color: #fff;
	}
	.background-header .main-nav .nav li a, .header-area .main-nav .nav li a
		{
		line-height: 50px;
		height: 50px;
		font-weight: 400;
		color: #1e1e1e;
		background-color: #fff;
		border-radius: 0px 0px 25px 25px;
	}
	.background-header .main-nav .nav li, .header-area .main-nav .nav li {
		border-top: 1px solid #ddd;
		background-color: #f1f0fe;
		height: 50px;
		border-radius: 0px 0px 25px 25px;
	}
	.header-area .main-nav .nav {
		height: auto;
		flex-basis: 100%;
	}
	.header-area .main-nav .logo {
		position: absolute;
		left: 30px;
		top: 0px;
	}
	.background-header .main-nav .logo {
		top: 0px;
	}
	.background-header .main-nav .border-button {
		top: 0px !important;
	}
	.header-area .main-nav .border-button {
		position: absolute;
		top: 15px;
		right: 70px;
	}
	.header-area.header-sticky .nav li a:hover, .header-area.header-sticky .nav li a.active
		{
		color: #ee626b !important;
		opacity: 1;
	}
	.header-area.header-sticky .nav li.search-icon a {
		width: 100%;
	}
	.header-area .nav li:last-child a {
		background-color: transparent !important;
		font-weight: 300 !important;
		text-transform: capitalize !important;
	}
	.header-area {
		padding: 0px 15px;
		height: 80px;
		box-shadow: none;
		text-align: center;
	}
	.header-area .container {
		padding: 0px;
	}
	.header-area .logo {
		margin-left: 0px;
	}
	.header-area .menu-trigger {
		display: block !important;
	}
	.header-area .main-nav {
		overflow: hidden;
	}
	.header-area .main-nav .nav {
		float: none;
		width: 100%;
		display: none;
		-webkit-transition: all 0s ease 0s;
		-moz-transition: all 0s ease 0s;
		-o-transition: all 0s ease 0s;
		transition: all 0s ease 0s;
		margin-left: 0px;
	}
	.header-area .main-nav .nav li:first-child {
		border-top: 1px solid #eee;
	}
	.header-area.header-sticky .nav {
		margin-top: 80px !important;
	}
	.background-header.header-sticky .nav {
		margin-top: 80px !important;
	}
	.header-area .main-nav .nav li {
		width: 100%;
		background: #fff;
		padding-left: 0px !important;
		padding-right: 0px !important;
	}
}

/* 
		---------------------------------------------
		Banner Style
		--------------------------------------------- 
		*/
.main-banner .item {
	background-position: center center;
	background-repeat: no-repeat;
	background-size: cover;
	padding: 100px 20% 300px 20%;
	margin: 0;
}

.main-banner .item-1 {
	background-image:
		url(https://cdn.pixabay.com/photo/2017/12/18/18/37/christmas-3026685_1280.jpg);
}

.main-banner .item-2 {
	background-image:
		url(https://cdn.pixabay.com/photo/2017/12/18/18/37/christmas-3026685_1280.jpg);
}

.main-banner .item-3 {
	background-image:
		url(https://cdn.pixabay.com/photo/2017/12/18/18/37/christmas-3026685_1280.jpg);
}

.banner-image-container {
	width: 480; /* 이미지 컨테이너의 고정된 가로 너비 */
	height: 200px; /* 이미지 컨테이너의 고정된 세로 높이 */
	overflow: hidden; /* 초과 부분 가리기 */
	position: relative;
}

.main-banner-img {
	width: 75%; /* 이미지 너비 */
	height: 55%; /* 높이 자동 조정 */
	float: right; /* 우측 정렬 */
	margin-top: -85px; /* 상단 여백 조정 */
}

.main-banner .item span.category {
	background-color: #fff;
	color: #1e1e1e;
	font-size: 16px;
	font-weight: 500;
	text-transform: capitalize;
	padding: 6px 15px;
	display: inline-block;
	margin-bottom: 30px;
}

.main-banner .item span.category em {
	font-style: normal;
	color: #f35525;
}

.main-banner .item h2 {
	font-size: 62px;
	font-weight: 700;
	text-transform: uppercase;
	color: #fff;
	line-height: 72px;
	width: 50%;
	margin-bottom: 0px;
}

.main-banner .owl-dots {
	position: absolute;
	bottom: 60px;
	left: 20%;
}

.main-banner .owl-dots .owl-dot {
	width: 10px;
	height: 10px;
	background-color: #fff;
	border-radius: 50%;
	margin-right: 10px;
	transition: all .5s;
}

.main-banner .owl-dots .active {
	background-color: #f35525;
}

.main-banner .owl-nav {
	position: absolute;
	top: 50%;
	width: 100%;
	transform: translateY(-50px);
}

.main-banner .owl-nav .owl-prev i, .main-banner .owl-nav .owl-next i {
	width: 50px;
	height: 50px;
	line-height: 50px;
	font-size: 24px;
	display: inline-block;
	color: #fff;
	background-color: rgba(255, 255, 255, 0.2);
	border-radius: 50%;
	opacity: 1;
	transition: all .3s;
}

.main-banner .owl-nav .owl-prev i {
	position: absolute;
	left: 45px;
}

.main-banner .owl-nav .owl-next i {
	position: absolute;
	right: 45px;
}

.main-banner .owl-nav .owl-prev i:hover, .main-banner .owl-nav .owl-next i:hover
	{
	opacity: 1;
	background-color: rgba(255, 255, 255, 0.5);
}

/* 
		---------------------------------------------
		Featured Style
		--------------------------------------------- 
		*/
.featured .left-image {
	position: relative;
}

.featured .left-image img {
	padding-left: 55px;
}

.featured .left-image a {
	display: inline-block;
	width: 110px;
	height: 110px;
	line-height: 110px;
	background-color: #f35525;
	border-radius: 50%;
	text-align: center;
	position: absolute;
	left: 0;
	bottom: -55px;
}

.featured .right-image {
	position: relative;
}

.featured .right-image img {
	padding-right: 55px;
}

.featured .right-image a {
	display: inline-block;
	background-color: rgba(252, 251, 251, 0.986);
	border-radius: 50%;
	text-align: center;
	position: absolute;
	margin: 2px;
	width: calc(100% - 4px);
	height: calc(100% - 4px);
	z-index: 10;
}

.featured .section-heading {
	margin-left: 10px;
	margin-right: 10px;
	margin-bottom: 60px;
}

.featured .section-heading h2 {
	width: 70%;
}

.featured .accordion {
	margin-left: 10px;
	margin-right: 10px; -
	-bs-accordion-border-radius: 10px; -
	-bs-accordion-inner-border-radius: 10px; -
	-bs-accordion-bg: #fafafa; -
	-bs-accordion-border-color: none;
	border: none !important;
}

.featured .accordion-header {
	border-bottom: 1px solid #eaeaea;
}

.featured .accordion-button {
	box-shadow: none;
	font-size: 17px;
	font-weight: 500;
	color: #1e1e1e;
}

.featured .accordion-button:not(.collapsed) {
	color: #f35525;
	background-color: #fafafa;
	outline: none;
}

.featured .accordion-button::after {
	display: none;
}

.featured #headingThree {
	border-bottom: none;
}

.featured .accordion-item:last-of-type .accordion-collapse {
	border-top: 1px solid #eaeaea;
}

.featured .info-table {
	border-radius: 10px;
	box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.15);
	padding: 35px 30px;
}

.featured .info-table ul li {
	display: block;
	margin-bottom: 35px;
	padding-bottom: 35px;
	border-bottom: 1px solid #eee;
}

.featured .info-table ul li:last-child {
	border-bottom: none;
	padding-bottom: 0;
	margin-bottom: 0;
}

.featured .info-table ul li img {
	float: left;
	margin-right: 25px;
}

.featured .info-table ul li h4 {
	font-size: 22px;
	font-weight: 600;
}

.featured .info-table ul li h4 span {
	font-size: 15px;
	color: #aaa;
	font-weight: 400;
}

/* 
		---------------------------------------------
		Video Style
		--------------------------------------------- 
		*/
.video {
	background-image:
		url(https://images.pexels.com/photos/249209/pexels-photo-249209.jpeg?auto=compress&cs=tinysrgb&w=1600);
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center center;
	padding: 200px 0px 200px 0px;
	position: relative;
}

.video-content {
	margin-top: -150px;
	margin-left: -400px;
}

.video .section-heading h2 {
	color: #fff;
}

.video-content .video-frame {
	position: relative;
	box-sizing: border-box;
	box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.5);
	border-radius: 10px;
}

.video-content .video-frame img {
	border-radius: 10px;
}

.video-content .video-frame a {
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-20px, -20px);
	width: 1000px;
	height: 100px;
	background-color: #fff;
	border-radius: 50%;
	display: inline-block;
	text-align: center;
	line-height: 52px;
	color: #f35525;
	outline: 15px solid rgba(254, 85, 37, 0.5);
	font-size: 18px;
}

/* 
		---------------------------------------------
		Fun Facts Style
		--------------------------------------------- 
		*/
.fun-facts {
	text-align: center;
	margin-top: 125px;
	margin-left: 500px;
}

.fun-facts .counter {
	background-color: #ffeee9;
	position: relative;
	border-radius: 10px;
	width: 270px;
	padding: 77px 20px;
	display: inline-block;
}

.fun-facts .counter h2, .fun-facts .counter p {
	display: inline-flex;
	vertical-align: middle;
}

.fun-facts .counter p {
	text-align: left;
	font-size: 16px;
	color: #1e1e1e;
	font-weight: 600;
	line-height: 28px;
}

.fun-facts .counter h2 {
	margin-right: 25px;
	font-size: 40px;
	color: #f32c25;
}

.fun-facts .counter:after {
	position: absolute;
	width: 50px;
	height: 50px;
	background-color: #f35525;
	border-radius: 50%;
	content: '';
	right: -25px;
	top: -25px;
}

/* 
		---------------------------------------------
		Best Deal Style
		--------------------------------------------- 
		*/
.best-deal {
	background-color: #fafafa;
	padding: 100px 0px;
}

.best-deal .tab-content img {
	padding: 0px 45px;
}

.best-deal .tabs-content .nav-link {
	font-size: 16px;
	font-weight: 500;
	background-color: #1e1e1e !important;
	border-radius: 5px;
	height: 50px;
	line-height: 50px;
	display: inline-block;
	padding: 0px 25px;
	color: #fff;
}

.best-deal .tabs-content .nav-tabs .nav-link.active {
	background-color: #f35525 !important;
	color: #fff;
}

.best-deal .tabs-content ul.nav-tabs {
	border-bottom: none !important;
	margin-bottom: 80px;
	align-items: end;
	justify-content: end;
	margin-top: -130px;
}

.best-deal .tabs-content ul.nav-tabs li {
	padding-right: 0px;
	border-right: none;
	margin-left: 20px;
}

.best-deal .info-table {
	border-radius: 10px;
	box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.15);
	padding: 35px 30px;
}

.best-deal .info-table ul li {
	display: block;
	margin-bottom: 24px;
	padding-bottom: 24px;
	border-bottom: 1px solid #eee;
	text-align: left;
	font-size: 15px;
	color: #aaa;
	font-weight: 400;
}

.best-deal .info-table ul li:last-child {
	border-bottom: none;
	padding-bottom: 0;
	margin-bottom: 0;
}

.best-deal .info-table ul li span {
	font-size: 20px;
	color: #1e1e1e;
	font-weight: 700;
	float: right;
	display: inline-block;
}

.best-deal .tabs-content {
	padding: 0px;
	background-color: transparent;
}

.best-deal .tabs-content h4 {
	font-size: 17px;
	font-weight: 600;
	margin-bottom: 30px;
}

.best-deal .icon-button {
	margin-top: 30px;
}

/* 
		---------------------------------------------
		Properties Style
		--------------------------------------------- 
		*/
.properties .item {
	background-color: #fafafa;
	border-radius: 10px;
	padding: 30px;
	margin-bottom: 30px;
}

.properties .item img {
	border-radius: 10px;
}

.properties .item span.category {
	background-color: #fbd9cf;
	font-weight: 500;
	border-radius: 5px;
	font-size: 14px;
	color: #1e1e1e;
	padding: 5px 12px;
	display: inline-block;
	margin-top: 25px;
}

.properties .item h4 {
	font-size: 19px;
	margin: 25px 0px;
}

.properties .item h4 a {
	color: #1e1e1e;
}

.properties .item ul li {
	display: inline-block;
	font-size: 15px;
	color: #4a4a4a;
	margin-right: 20px;
}

.properties .item ul li span {
	font-weight: 600;
	color: #1e1e1e;
}

.properties .item ul {
	border-bottom: 1px solid #eaeaea;
	margin-bottom: 30px;
	padding-bottom: 30px;
}

.properties .item h6 {
	font-size: 20px;
	color: #f35525;
	margin-top: 6px;
	display: inline-block;
	float: right;
	margin-top: 30px;
}

.properties .item .main-button {
	text-align: center;
}

/* 
		---------------------------------------------
		Footer Style
		--------------------------------------------- 
		*/
footer.footer-no-gap {
	margin-top: 0px;
}

footer {
	margin-top: 150px;
	background-color: #1e1e1e;
	min-height: 100px;
}

footer p {
	text-align: center;
	line-height: 100px;
	color: #fff;
	font-size: 16px;
	font-weight: 400;
}

footer p a {
	color: #fff;
	transition: all .3s;
	position: relative;
	z-index: 3;
}

footer p a:hover {
	opacity: 0.75;
}

/* 
		---------------------------------------------
		Page Header Style
		--------------------------------------------- 
		*/
.page-heading {
	background-image: url(../images/page-heading-bg.jpg);
	background-position: center bottom;
	background-repeat: no-repeat;
	background-size: cover;
	padding: 110px 0px;
	text-align: center;
}

.page-heading span {
	background-color: #fff;
	color: #1e1e1e;
	font-size: 14px;
	font-weight: 500;
	text-transform: uppercase;
	padding: 10px 25px;
	display: inline-block;
	margin-bottom: 30px;
}

.page-heading span a {
	color: #1e1e1e;
}

.page-heading h3 {
	font-size: 48px;
	font-weight: 900;
	text-transform: uppercase;
	color: #fff;
}

/* 
		---------------------------------------------
		Properties Style
		--------------------------------------------- 
		*/
.properties ul.properties-filter {
	list-style: none;
	text-align: center;
	margin-bottom: 70px;
}

.properties ul.properties-filter li {
	display: inline-block;
	margin: 5px 8px;
}

.properties ul.properties-filter li a {
	display: inline-block;
	text-align: center;
	font-size: 15px;
	text-transform: capitalize;
	font-weight: 500;
	color: #fff;
	background-color: #1e1e1e;
	padding: 12px 25px;
	border-radius: 5px;
	transition: all .3s;
}

.properties ul.properties-filter li a.is_active {
	background-color: #f35525;
	color: #fff;
}

.properties ul.properties-filter li a.is_active:hover {
	color: #fff;
}

.properties ul.properties-filter li a:hover {
	color: #f35525;
}

.properties ul.pagination {
	margin-top: 50px;
	text-align: center;
	width: 100%;
	display: inline-block;
}

.properties ul.pagination li {
	display: inline-block;
	margin: 0px 5px;
}

.properties ul.pagination li a {
	display: inline-block;
	width: 40px;
	height: 40px;
	line-height: 40px;
	text-align: center;
	background-color: #1e1e1e;
	color: #fff;
	font-size: 15px;
	font-weight: 600;
	border-radius: 50%;
	transition: all .3s;
}

.properties ul.pagination li a:hover, .properties ul.pagination li a.is_active
	{
	background-color: #f35525;
	color: #fff;
}

/* 
		---------------------------------------------
		Single Page Style
		--------------------------------------------- 
		*/
.single-property .main-image img {
	float: none;
}

.single-property .main-content h4 {
	font-size: 25px;
	margin-top: 25px;
	margin-bottom: 40px;
	padding-bottom: 40px;
	border-bottom: 1px solid #eee;
}

.single-property .main-content span.category {
	background-color: #fbd9cf;
	font-weight: 500;
	border-radius: 5px;
	font-size: 14px;
	color: #1e1e1e;
	padding: 5px 12px;
	display: inline-block;
	margin-top: 40px;
}

.single-property .accordion {
	margin-top: 60px;
	margin-left: 0px;
	margin-right: 0px; -
	-bs-accordion-border-radius: 10px; -
	-bs-accordion-inner-border-radius: 10px; -
	-bs-accordion-bg: #fafafa; -
	-bs-accordion-border-color: none;
	border: none !important;
}

.single-property .accordion-header {
	border-bottom: 1px solid #eaeaea;
}

.single-property .accordion-button {
	box-shadow: none;
	font-size: 17px;
	font-weight: 500;
	color: #1e1e1e;
}

.single-property .accordion-button:not(.collapsed) {
	color: #f35525;
	background-color: #fafafa;
	outline: none;
}

.single-property .accordion-button::after {
	display: none;
}

.single-property #headingThree {
	border-bottom: none;
}

.single-property .accordion-item:last-of-type .accordion-collapse {
	border-top: 1px solid #eaeaea;
}

.single-property .info-table {
	border-radius: 10px;
	box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.15);
	padding: 35px 30px;
	margin-left: 60px;
}

.single-property .info-table ul li {
	display: block;
	margin-bottom: 35px;
	padding-bottom: 35px;
	border-bottom: 1px solid #eee;
}

.single-property .info-table ul li:last-child {
	border-bottom: none;
	padding-bottom: 0;
	margin-bottom: 0;
}

.single-property .info-table ul li img {
	float: left;
	margin-right: 25px;
}

.single-property .info-table ul li h4 {
	font-size: 22px;
	font-weight: 600;
}

.single-property .info-table ul li h4 span {
	font-size: 15px;
	color: #aaa;
	font-weight: 400;
}

/* 
		---------------------------------------------
		Contact Page Style
		--------------------------------------------- 
		*/
.contact-page #map {
	margin-top: 100px;
}

.contact-page .section-heading {
	margin-bottom: 40px;
	margin-right: 280px;
}

.contact-page p {
	margin-bottom: 50px;
}

.contact-page .item {
	border-radius: 10px;
	box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.15);
	padding: 35px 30px;
	background-color: #fff;
	display: inline-block;
	min-width: 360px;
}

.contact-page .phone {
	margin-bottom: 30px;
}

.contact-page .item img {
	float: left;
	margin-right: 25px;
	vertical-align: middle;
}

.contact-page .item h6 {
	font-size: 20px;
	font-weight: 600;
	vertical-align: middle;
}

.contact-page .item h6 span {
	font-size: 15px;
	color: #aaaaaa;
	font-weight: 400;
}

.contact-page #contact-form {
	margin-left: 30px;
	border-radius: 10px;
	box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.15);
	padding: 35px 30px;
	background-color: #fff;
}

.contact-page #contact-form label {
	font-size: 15px;
	color: #3a3a3a;
	margin-bottom: 15px;
}

.contact-page #contact-form input {
	width: 100%;
	height: 44px;
	border-radius: 22px;
	background-color: #f6f6f6;
	border: none;
	margin-bottom: 30px;
	font-size: 14px;
	padding: 0px 15px;
}

.contact-page #contact-form textarea {
	width: 100%;
	height: 150px;
	max-height: 180px;
	border-radius: 22px;
	background-color: #f6f6f6;
	border: none;
	margin-bottom: 40px;
	font-size: 14px;
	padding: 15px 15px;
}

.contact-page #contact-form button {
	background-color: #1e1e1e;
	height: 44px;
	border-radius: 22px;
	padding: 0px 20px;
	color: #fff;
	border: none;
	font-size: 15px;
	font-weight: 500;
	transition: all .5s;
}

.contact-page #contact-form button:hover {
	background-color: #f35525;
}

/* 
		---------------------------------------------
		Responsive Style
		--------------------------------------------- 
		*/
body {
	overflow-x: hidden;
}

@media ( max-width : 767px) {
	.header-area .main-nav .logo h1 {
		line-height: 80px !important;
	}
	.best-deal .tabs-content .nav-link {
		font-size: 14px;
		padding: 0px 15px;
		height: 44px;
		line-height: 44px;
	}
	.best-deal .tabs-content ul.nav-tabs li {
		margin: 0px 5px;
	}
	.properties ul.properties-filter li a {
		font-size: 14px;
		padding: 10px 15px;
	}
	.properties ul.properties-filter li {
		margin: 5px;
	}
	.header-area .main-nav .nav li:last-child {
		display: none;
	}
}

@media ( max-width : 992px) {
	.sub-header {
		display: none;
	}
	.header-area .main-nav .logo h1 {
		line-height: 100px;
	}
	.background-header .main-nav .logo h1 {
		line-height: 80px;
	}
	.header-area .main-nav .nav li a {
		padding-left: 3px;
		padding-right: 3px;
	}
	.header-area .main-nav .nav li:last-child a {
		padding-right: 15px;
	}
	.main-banner .item h2 {
		width: 100%;
	}
	.featured .section-heading {
		margin-left: 0px;
		margin-right: 0px;
		margin-top: 100px;
	}
	.featured .accordion {
		margin-left: 0px;
		margin-right: 0px;
	}
	.featured .info-table {
		margin-top: 45px;
	}
	.fun-facts .counter {
		margin-bottom: 45px;
	}
	.best-deal .section-heading {
		text-align: center;
	}
	.best-deal .tabs-content ul.nav-tabs {
		margin-top: 0px;
		justify-content: center;
	}
	.best-deal .info-table {
		margin-bottom: 45px;
	}
	.best-deal .tab-content img {
		padding: 0px;
	}
	.best-deal .tabs-content h4 {
		margin-top: 45px;
	}
	.properties .item h6 {
		text-align: center;
		margin-bottom: 15px;
	}
	.properties .item .main-button {
		text-align: center;
	}
	.properties .item ul li {
		margin-right: 10px;
		font-size: 13px;
	}
	.contact-content .phone {
		margin-right: 0px;
		margin-bottom: 20px;
	}
	.contact-content .email {
		margin-left: 0px;
		margin-bottom: 45px;
	}
	.contact-content #contact-form {
		margin-left: 0px;
	}
	.single-property .info-table {
		margin-left: 0px;
		margin-top: 45px;
	}
	.contact-page .section-heading {
		margin-right: 0px !important;
	}
	.contact-page #contact-form {
		margin-left: 0px;
		margin-top: 60px;
	}
	.best-deal .info-table ul li span {
		float: right !important;
		width: auto !important;
	}
	.zoomable-image {
		width: 100%; /* 이미지 너비를 100%로 설정하여 부모 요소에 맞춤 */
		height: auto; /* 비율 유지 */
		transition: transform 0.3s ease; /* 줌 효과를 위한 transition */
	}
	.image-container:hover .zoomable-image {
		transform: scale(1.2); /* 이미지를 확대하는 스케일 변환 */
	}
}

@media ( max-width : 1200px) {
	.best-deal .info-table ul li span {
		float: none;
		width: 100%;
	}
	.contact-page .section-heading {
		margin-right: 100px;
	}
}
</style>




<body>

	<!-- ***** Header Area Start ***** -->
	<header class="header-area header-sticky">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav class="main-nav">
						<!-- ***** Logo Start ***** -->
						<a href="main" class="logo" style="margin-left: 80px">
							<h1>Seoul</h1>
						</a>

						<!-- ***** Menu Start ***** -->
						<ul class="nav">

							<li><a href="/seoul/main" class="active">메인</a></li>
							<li><a href="/seoul/event">행사/맛집</a></li>
							<li><a href="/seoul/recommend">추천일정</a></li>
							<li><a href="/board/list">게시판</a></li>

							<c:choose>
								<c:when test="${not empty user}">
									<li><a href="/seoul/login">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${user.name_}&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="/seoul/login">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;로그인&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
								</c:otherwise>
							</c:choose>
						</ul>
						<a href="/seoul/logout"><i class="fa fa-sign-out"
							aria-hidden="true"
							style="margin-top: 40px; margin-left: 25px; color: #000000"></i>
						</a> <a class="menu-trigger"> <span>Menu</span>
						</a>
						<!-- ***** Menu End ***** -->
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- ***** Header Area End ***** -->

	<div class="main-banner">
		<div class="owl-carousel owl-banner">
			<div class="item item-1">
				<div class="main-banner-img">
					<img src="https://i.ytimg.com/vi/ni05UHvWtPc/maxresdefault.jpg"
						width="600" height="500" />
				</div>
				<div class="header-text">
					<span class="category">서울, <em>뭐하지?</em></span>
					<h3>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Christmas!<br />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; with
					</h3>
				</div>
			</div>

			<div class="item item-2">
				<div class="main-banner-img">
					<img
						src="https://cdn.salgoonews.com/news/photo/202212/25795_74993_373.png"
						width="600" height="500" />
				</div>
				<div class="header-text">
					<span class="category">크리스마스, <em>행사</em></span>
					<h3>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Festival!<br />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; with
					</h3>
				</div>
			</div>

			<div class="item item-3">
				<div class="main-banner-img">
					<img
						src="https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https:%2F%2Fblog.kakaocdn.net%2Fdn%2FEhLyz%2Fbtrnlm7uqss%2FKoJy6W1yQX7hkO0zVnQih0%2Fimg.png"
						width="600" height="500" />
				</div>
				<div class="header-text">
					<span class="category">크리스마스, <em>맛집</em></span>
					<h3>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Winter!<br />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; with
					</h3>
				</div>
			</div>
		</div>
	</div>

	<div class="fun-facts">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="wrapper">
						<div class="row">
							<div class="col-lg-4">
								<div class="counter">
									<h2 class="timer count-title count-number" data-to="24"
										data-speed="5000"></h2>
									<p class="count-text">
										D-day<br />크리스마스
									</p>
								</div>
							</div>

							<div class="card border-danger mb-3" style="max-width: 15rem;">
								<div class="card-header">
									<h6>오늘의 날씨</h6>
								</div>
								<div class="card-body text-info">
									<p class="card-text">
									<p>날짜 : &nbsp; ${w.date}</p>
									<p>시간 : &nbsp; ${w.time} 시</p>
									<c:choose>
										<c:when test="${w.weather eq '맑음'}">
											<i class="bi bi-brightness-high"></i>
										</c:when>
										<c:when test="${w.weather eq '구름많음'}">
											<i class="bi bi-clouds"></i>
										</c:when>
										<c:when test="${w.weather eq '흐림'}">
											<i class="bi bi-cloud-sun"></i>
										</c:when>
										<c:when test="${w.weather eq '비'}">
											<i class="bi bi-cloud-rain"></i>
										</c:when>
										<c:when test="${w.weather eq '비/눈'}">
											<i class="bi bi-cloud-sleet"></i>
										</c:when>
										<c:when test="${w.weather eq '눈'}">
											<i class="bi bi-cloud-snow"></i>
										</c:when>
										<c:when test="${w.weather eq '빗방울'}">
											<i class="bi bi-cloud-rain"></i>
										</c:when>
										<c:when test="${w.weather eq '빗방울눈날림'}">
											<i class="bi bi-cloud-sleet"></i>
										</c:when>
										<c:when test="${w.weather eq '눈날림'}">
											<i class="bi bi-cloud-snow"></i>
										</c:when>
									</c:choose>
									<p>날씨 : &nbsp; ${w.weather}</p>
									<p>기온 : &nbsp; ${w.temperature} ℃</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="video section">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 offset-lg-4">
					<div class="section-heading text-center">
						<h6>12월 어디가?</h6>
						</br>
						<h3 style="color: #ffffff">여기여기</h3>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="video-content">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<div class="video-frame">
						<iframe width="1400" height="750"
							src="https://www.youtube.com/embed/IvKIEkC1xgM"
							title="명동 크리스마스 라이츠 2023, 크리스마스 장식, 서울 여행, 서울 트래블 워커, My Dear Wish."
							frameborder="10"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
							allowfullscreen></iframe>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="section best-deal">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="section-heading">
						<h6>| &nbsp; 주요 행사 안내</h6>
						<h2>12월</h2>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="tabs-content">
						<div class="row">
							<div class="nav-wrapper">
								<ul class="nav nav-tabs" role="tablist">
									<li class="nav-item" role="presentation">
										<button class="nav-link active" id="appartment-tab"
											data-bs-toggle="tab" data-bs-target="#appartment"
											type="button" role="tab" aria-controls="appartment"
											aria-selected="true">축제 / 행사</button>
									</li>
									<li class="nav-item" role="presentation">
										<button class="nav-link" id="villa-tab" data-bs-toggle="tab"
											data-bs-target="#villa" type="button" role="tab"
											aria-controls="villa" aria-selected="false">공연</button>
									</li>
									<li class="nav-item" role="presentation">
										<button class="nav-link" id="penthouse-tab"
											data-bs-toggle="tab" data-bs-target="#penthouse"
											type="button" role="tab" aria-controls="penthouse"
											aria-selected="false">전시</button>
									</li>
								</ul>
							</div>
							<div class="tab-content" id="myTabContent">
								<div class="tab-pane fade show active" id="appartment"
									role="tabpanel" aria-labelledby="appartment-tab">
									<div class="row">
										<div class="col-lg-3">
											<div class="info-table">
												<ul>
													<li>행사</li>
													<li>서울 빛초롱 <span></span></li>
													<li>(재)서울관광재단 <span></span></li>
												</ul>
											</div>
										</div>
										<div class="col-lg-6">
											<img
												src="https://www.stolantern.com/upfile/board/%EA%B1%B0%EB%B6%81%EC%84%A0.png" />
										</div>
										<div class="col-lg-3">
											<h4>서울 빛초롱</h4>
											<p>
												14년간 청계천에서 개최되어 많은 사랑을 받았던 "2023 서울 빛초롱"이 올해는 새로워진 광화문광장에서
												개최됩니다. <br /> <br />아름다운 빛 전시로 서울의 연말을 따뜻하게 빛내는 것은 물론, 광장
												중심의 광화문광장 마켓, 미디어파사드 등 다양한 콘텐츠가 연말연시 서울을 찾아옵니다. <br /> <br />기간│
												2022. 12. 19(월) ~ 2023. 1. 24(화) <br />시간 │ 일요일 ~ 금요일 17:30
												~ 21:00 <br />
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												토요일,공휴일 17:30 ~ 22:00 <br />장소│ 광화문 광장
											</p>

											<br /> <br />

											<div class="icon-button">
												<a
													href="https://korean.visitseoul.net/events/2023-Seoul-lantern-festival-kr_/43173  "
													target="_blank"><i class="fa fa-calendar"></i>행사 일정
													보러가기</a>
											</div>
										</div>
									</div>
								</div>

								<div class="tab-pane fade" id="villa" role="tabpanel"
									aria-labelledby="villa-tab">
									<div class="row">
										<div class="col-lg-3">
											<div class="info-table">
												<ul>
													<li>공연</li>
													<li>Listen <span></span></li>
													<li>정재일 <span></span></li>
												</ul>
											</div>
										</div>
										<div class="col-lg-6">
											<img
												src="http://ticketimage.globalinterpark.com/ticketimage/Play/image/large/P0/P0003639_p.gif" />
										</div>
										<div class="col-lg-3">
											<h4>정재일 콘서트</h4>
											<p>
												전 세계에서 메가히트를 기록한 넷플릭스 시리즈 "오징어 게임"와 K콘텐츠의 저력을 보여준 영화 "기생충"의
												음악감독이자 한국을 대표하는 뮤지션 정재일의 단독콘서트가 오는 12월 세종문화회관 대극장에서 열립니다. <br />
												<br />정재일은 지난 10월 1일 런던 바비칸 센터에서 개최된 K-뮤직 페스티벌 10주년 개막공연에서
												런던 심포니 오케스트라와 협연해 현지 관객들의 기립박수를 이끌어냈습니다. <br /> <br />이번
												단독 콘서트에서는 대중들이 사랑한 "오징어 게임", "기생충" OST를 비롯해 최근 발매한 솔로 앨범
												"Listen"을 생생하게 접할 수 있는 무대로, 연주자로서의 매력은 물론 작곡가, 음악감독, 지휘자 등
												그가 가진 넓고 깊은 음악적 스펙트럼을 직접 확인할 수 있을 것입니다.
											</p>
											<br /> <br />
											<div class="icon-button">
												<a
													href="https://korean.visitseoul.net/exhibition/%EC%A0%95%EC%9E%AC%EC%9D%BC%20%EC%BD%98%EC%84%9C%ED%8A%B8%20-%20Listen/KOPpq0clc "
													target="_blank"><i class="fa fa-calendar"></i>행사 일정
													보러가기</a>
											</div>
										</div>
									</div>
								</div>

								<div class="tab-pane fade" id="penthouse" role="tabpanel"
									aria-labelledby="penthouse-tab">
									<div class="row">
										<div class="col-lg-3">
											<div class="info-table">
												<ul>
													<li>전시</li>
													<li>손길 모양 <span></span></li>
													<li>이은우 <span></span></li>
												</ul>
											</div>
										</div>
										<div class="col-lg-6">
											<img
												src="https://sema.seoul.go.kr/common/imageView?FILE_PATH=%2Fex%2FEXI01%2F2023%2F&FILE_NM=20231024132803_3be4afd4c1924907bda9146662ab57fd_5e0cd03316ac47039364ef346759aecd" />
										</div>
										<div class="col-lg-3">
											<br />
											<h4>손길 모양</h4>
											<p>
												"손길 모양"은 모든 물질이 디지털화될 수 있는 지금, 손과 몸을 써서 작품을 만드는 노동의 가치와 즐거움을
												공유하고자 하는 마음에서 출발했습니다. 전시는 우리 주변의 ‘물질’과 그 물질을 담는 그릇인 ‘모양’,
												그리고 물질을 자르고 붙여 모양을 만드는 작가의 ‘손길’로 채워집니다. <br /> <br />이은우
												작가는 작업실로 출근하여 하루를 시작합니다. 한 시간 타이머를 맞추고 하는 작가의 ‘그리기’는 특별한 무엇을
												그리겠다는 목적 없이 손이 가는 대로 그려내는, 반복되는 생활 습관과도 같습니다. 점과 점을 이어 선을
												그어나가다 보면 갖가지 도형들이 연결되고 쌓여 재미있는 모양을 만들어냅니다. 완성된 작업은
												'그리드(grid)'가 있는 모눈종이에 옮겨 그리고 도형에 어울리는 질감과 색을 입힙니다.
											</p>
											<br /> <br /> <br /> <br />
											<div class="icon-button">
												<a
													href="https://korean.visitseoul.net/exhibition/TheShapeofTouch_/44663  "
													target="_blank"><i class="fa fa-calendar"></i>행사 일정
													보러가기</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="properties section">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 offset-lg-4">
					<div class="section-heading text-center">
						<h6>| &nbsp; 추천맛집</h6>
						<br />
						<h3>크리스마스에 뭐먹지??</h3>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="item">
						<a href="property-details.html"><img
							src="https://search.pstatic.net/common/?src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyMzA1MTdfMTI2%2FMDAxNjg0MjU2OTI2MjUw.tOao9U8dgEnGiKYDxRz48SuJewu5yLLiArIHOdm_EsQg.CzRpoV_qGnmR0_ieJF3xXCUthXNu6PY8u-BGmds7sbgg.JPEG%2FBAC78376-C7FE-4070-9896-0423ED5331A9.jpeg"
							height="350" /></a> <span class="category">강남구</span>
						<h6>평점 4.2</h6>
						<h4>
							<a href="https://www.instagram.com/toctoc_seoul/">톡톡</a>
						</h4>
						<ul>
							<li>다양한 나라의 요리를 접목한 레스토랑</li>
						</ul>
						<div class="main-button">
							<a href="recommend">더보기</a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="item">
						<a
							href="https://map.naver.com/p/search/%EC%9A%B0%EC%96%91%EC%9A%B0/place/1308917048?c=15.00,0,0,0,dh&isCorrectAnswer=true"><img
							src="https://search.pstatic.net/common/?src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyMzExMTFfOTcg%2FMDAxNjk5Njc3MjQ1MTAz.IQ5SrFGwVxii72TN-9qe-lyMoqJlG4A5R4tLsV2dIP8g.uKCWraXgf3K_UPHJ5QqVGjLAb0IiP4TkaGBox224VMcg.JPEG%2FD15665ED-580B-4B8F-AE4D-585960A7BE6B.jpeg"
							height="350" /></a> <span class="category">강동구</span>
						<h6>평점 4.6</h6>
						<h4>
							<a href="https://www.instagram.com/woo.yang.woo/">우양우</a>
						</h4>
						<ul>
							<li>한식</li>
						</ul>
						<div class="main-button">
							<a href="recommend">더보기</a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="item">
						<a
							href="https://map.naver.com/p/entry/place/1872238260?c=13.00,0,0,0,dh"><img
							src="https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20191022_287%2F1571695951606rw2YO_JPEG%2FgULdtC5_bQXVslndMz7PZL1N.jpg"
							height="350" /></a> <span class="category">마포구</span>
						<h6>평점 4.7</h6>
						<h4>
							<a href="https://www.instagram.com/konro_yakiniku/">곤로 야끼니꾸</a>
						</h4>
						<ul>
							<li>일식</li>
						</ul>
						<div class="main-button">
							<a href="recommend">더보기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer>
		<div class="container">
			<div class="col-lg-8">
				<p style="color: black">
					Copyright © 2048 Villa Agency Co., Ltd. All rights reserved.
					Design: <a rel="nofollow" href="https://templatemo.com"
						target="_blank" style="color: black">TemplateMo</a> Distribution:
					<a href="https://themewagon.com" style="color: black">ThemeWagon</a>
				</p>
			</div>
		</div>
	</footer>

	<!-- Scripts -->
	<!-- Bootstrap core JavaScript -->
	<script src="/resources/js/jquery.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/isotope.min.js"></script>
	<script src="/resources/js/owl-carousel.js"></script>
	<script src="/resources/js/counter.js"></script>
	<script src="/resources/js/custom.js"></script>

</body>
>
</html>
