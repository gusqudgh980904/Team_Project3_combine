<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>상품 수정/삭제</title>

<!-- css -->
<link href="http://localhost/ss/common/css/yl_main.css" rel="stylesheet" >
<link href="http://localhost/ss/common/css/main.css" rel="stylesheet" >


<!-- bootstrap -->
<link href="http://localhost/ss/common/bootstrap-3.3.2/css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery CDN(Contents Delivery Network) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- bootstrap -->
<script src="http://localhost/ss/common/bootstrap-3.3.2/js/bootstrap.min.js"></script>

<style type="text/css">
.header{
	z-index: 1;
}


.navigation {
	margin-left : 10px;
}
#headerTitle {
	margin-top : 20px;
	margin-left : 400px;
}

#wrap {
	width: 1250px;
	height: 900px;
	margin: 0px auto;
	background-color: #dfdfdf;
}

td {
	text-align: center;
}

th {
	text-align: center;
	background-color: #909090
}
/* container시작 */
#container{
	margin-top: 100px;
	width:1600px;
	height:800px;
	float:right;
	}
/* container끝 */
#title{
	margin-left: 400px;
}
th{text-align:center;width:100px;background-color:#909090}
td{text-align:center;width:300px;}
/* 상품이미지 */
#prodImg{width:500px;height:500px;position:relative;top:55px;left:400px;}
/* 상품정보 */
#prodDetails{width:600px;height:500px;position:relative;left:650px;bottom:450px; margin-left: 350px;}
</style>
<!-- 아이디받는 세션 없으면 이것또한 복붙 이건 위에 지시자 밑에 정의하믄댐-->
<%
	//사용자 로그인 한 이후의 아이디 데이터를 필요한 페이지에서 사용하기 위한 세션
	String userId = (String)session.getAttribute("id");
%>
<script type="text/javascript">
$(function(){

	$("#btnUp").click(function(){
		chkNull();											
	})//onclick
	
});//ready

function logout(){
    if( confirm("정말 로그아웃 하시겠습니까?")){
    	location.href="http://localhost/team_prj2/prj2/main/logout.jsp";
	}
}

function prodDelete(){
	alert("상품이 삭제되었습니다");
	$("#prod_updateFrm").submit();
}//prodDelete

function chkNull(){
	if($("#prod_name").val()==""){
		alert("상품명은 필수입력입니다.");
		$("#prod_name").focus();
		return;
	}//if
	if($("#price").val()==""){
		alert("상품가격은 필수입력입니다.");
		$("#price").focus();
		return;
	}//if
	if($("#prod_detail").val()==""){
		alert("상품설명은 필수입력입니다.");
		$("#prod_detail").focus();
		return;
	}//if
	$("#prod_updateFrm").submit();
}//chkNull
function logout(){
    if( confirm("정말 로그아웃 하시겠습니까?")){
    	location.href="http://localhost/team_prj2/prj2/main/logout.jsp";
	}
}
</script>
</head>
<body>
<!-- 헤더 복붙하세용 -->
<!-- header start -->
    <header class="header">
        <div class="main_nav">
            <div>
                 <h1 class="title"><a href="#"><img src="http://localhost/ss/common/prj2_images/%EC%83%81%ED%95%98%EC%9D%98%EC%8A%A4%ED%8A%B8%EB%A6%BF.png"></a></h1>
                <ul class="navigation">
                   <li> <a href="http://localhost/team_prj3/prj2/main/main_all.jsp" style="color: black">메인홈</a></li>
                   	<li><a href="http://localhost/ss/admin/admin_users.do" style="color: black">회원목록</a></li>
                    <li><a href="http://localhost/ss/admin/admin_lookbooks.do" style="color: black">게시판목록</a></li>
                    <li><a href="http://localhost/ss/admin/admin_main.do" style="color: black">상품관리</a></li>
                </ul>
            </div>
            <ul class="icons">
                <li>
                    <p>login</p>
                    <%                    
                    if( userId == null  ){
                    %>
                    <a href="http://localhost/team_prj2/prj2/main/main_all.jsp">
                     <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                        viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve" >
                            <path d="M437.02,330.98c-27.883-27.882-61.071-48.523-97.281-61.018C378.521,243.251,404,198.548,404,148
                                C404,66.393,337.607,0,256,0S108,66.393,108,148c0,50.548,25.479,95.251,64.262,121.962
                                c-36.21,12.495-69.398,33.136-97.281,61.018C26.629,379.333,0,443.62,0,512h40c0-119.103,96.897-216,216-216s216,96.897,216,216
                                h40C512,443.62,485.371,379.333,437.02,330.98z M256,256c-59.551,0-108-48.448-108-108S196.449,40,256,40
                                c59.551,0,108,48.448,108,108S315.551,256,256,256z" />
                    </svg>
                  </a>  
                    <%
                     	}else{
                     %>
                     <a href="#" onclick="javascript:logout();">
                      <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                        viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve" >
                            <path d="M437.02,330.98c-27.883-27.882-61.071-48.523-97.281-61.018C378.521,243.251,404,198.548,404,148
                                C404,66.393,337.607,0,256,0S108,66.393,108,148c0,50.548,25.479,95.251,64.262,121.962
                                c-36.21,12.495-69.398,33.136-97.281,61.018C26.629,379.333,0,443.62,0,512h40c0-119.103,96.897-216,216-216s216,96.897,216,216
                                h40C512,443.62,485.371,379.333,437.02,330.98z M256,256c-59.551,0-108-48.448-108-108S196.449,40,256,40
                                c59.551,0,108,48.448,108,108S315.551,256,256,256z" />
                    </svg>
                  </a> 
                    <%
                    	}
                    %>    
                </li>
            </ul>
        </div>
    </header>
<!-- header end --> 
<div id="wrap">
	<div id="container">
	<h1 id="headerTitle">SANGHAUI STREET ADMINISTRATOR</h1>
		<h1 id="title" >상품 정보</h1>
				<form enctype="multipart/form-data"  id="prod_updateFrm" name="prod_updateFrm" method="post" action="http://localhost/ss/admin/admin_prodMod_proc.do">
						<div id="prodImg"><!-- 이미지 넣기 -->
						<img src="http://localhost/ss/common/product_photo/${prodInfo.prod_image}"/>
						<input type="file"name="prod_img"id="prod_img"/>
						</div> 
				<table id="prodDetails" class="table table-bordered">
							<tr>
						<th>상품번호</th><td><input type="text"  class="form-control" id="prod_num" name="prod_num" readonly="readonly" 
										value="${prodInfo.prod_num}"/></td>				
					</tr>
					<tr>
						<th>상품명</th><td><input type="text"class="form-control" id="prod_name" name="prod_name" autofocus="autofocus" value="${prodInfo.prod_name}"/></td>				
					</tr>
					<tr>
						<th>가격</th><td><input type="text"class="form-control" id="price" name="price" value="${prodInfo.prod_price}"/>,를 꼭 입력해주세요</td>				
					</tr>
					<tr>
						<th>구분</th><td><input type="text" readonly="readonly" name="category" id="category"placeholder="${prodInfo.prod_cat}"></td>				
					</tr>
			
					<tr>
						<th>상품설명</th><td><input type="text"class="form-control" id="prod_detail" name="prod_detail" value="${prodInfo.prod_explain}"/></td>				
					</tr>
					<tr>
						<th>추가날짜</th><td><input type="text" readonly="readonly" name="add_date" id="add_date"placeholder="${prodInfo.prod_add_date}"></td>
					</tr>
					<tr>
						<th>삭제여부</th><td><input type="text" readonly="readonly" name="withdrwal" id="withdrwal" placeholder="${prodInfo.prod_delete}"/></td>
					</tr>
				</table>
			<input type="button" id="btnUp" value="수정" class=" btn btn-group-lg" style="position:relative;left:1380px;bottom:400px;"/>
			<a href="http://localhost/ss/admin/admin_prodDel_proc.do?prod_num=${prodInfo.prod_num}"><input type="button" id="btnDel"value="삭제" class=" btn btn-group-lg" style="position:relative;left:1400px;bottom:400px;"/></a>	
				</form>
			
	</div>
</div>
 <!-- footer start -->
    <footer>
        <div class="footer-wrap">
            <div class="footer-content">
                <h2>ABOUT SANGHAUI</h2>
                <p>
                    상하의스트릿 공식 온라인스토어는 ㈜쌍용교육센터의 콘텐츠를 위임받아 운영하고 있습니다. <br/>
                    상하의스트릿 공식 온라인 스토어에서 사용하는 인증 마크를 훼손 또는 무단복제하여 사용할 수 없으며, <br/>
                    해당 콘텐츠의 소유권은 SANGHAUI STREET ㈜쌍용교육센터에 있습니다.<br/>
					Copyright © sanghaui street. All rights reserved.
                </p>
            </div>
            <div class="footer-content">
                <h2>CS CENTER</h2>
                <ul>
                    <li>업무시간 10:00 - 17:00</li>
                    <li>점심시간 12:00 - 13:00</li>
                    <li>휴무 토요일,일요일,공휴일</li>
                    <li>현금 등으로 결제시 저희 쇼핑몰이 가입한</li>
                    <li>PG에스크로 구매안전 서비스를 이용하실 수 있습니다</li>
                </ul>
            </div>
            <div class="footer-content">
                <h2>OUR COMPANY</h2>
                <ul>
                    <li>회사명 : (주)쌍용교육센터</li>
                    <li>사업자등록번호 : 2148529296</li>
                    <li>통신판매업 신고 : 제 2021-서울쌍용-3333호</li>
                    <li>주소 : 서울특별시 강남구 테헤란로 132(역삼동) </li>
                    <li>한독약품빌딩 8층 쌍용교육센터</li>
                </ul>
            </div>
        </div>
    </footer>
    <!-- footer end -->
</body>
</html>