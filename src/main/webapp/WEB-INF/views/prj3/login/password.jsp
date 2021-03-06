<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset=" UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>

<!-- css -->
<link href="http://localhost/ss/common/css/yl_main.css" rel="stylesheet">

<!-- bootstrap -->
<link href="http://localhost/ss/common/bootstrap-3.3.2/css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery CDN(Contents Delivery Network) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- bootstrap -->
<script src="http://localhost/ss/common/bootstrap-3.3.2/js/bootstrap.min.js"></script>

<style type="text/css">
	
	.main_con{ width: 100%; justify-content: center; display: flex; flex-direction: column; align-items: center;}
	#container{ width:  100%; height: 1000px;  }
	
	#join_pw{width: 1300px; height:250px; position: absolute;  top: 390px; left:130px;}
	#join_font{position: absolute; top: 165px; left: 130px; font-size: 20px;}
	#pw{position: absolute; top: 330px; left: 130px; font-size: 30px;}
	#essential{position: absolute; top: 340px; left: 1270px; font-size: 25px;}
	
	#spanId{padding-left: 20px; padding-right: 45px;}
	#spanPw{padding-left: 20px; padding-right: 20px;}
	#loginBt{background-color:black; width: 100px; height: 50px; font-size: 15px; font-weight: bold; margin-bottom: 60px}
	#hr{width: 600px; border: 1px solid #8F8F91}
	#dup{font-size: 25px; margin: 0px 0px 8px 10px}
	#commitBtDiv{width: 1300px;  margin-top:100px;  display: flex; justify-content: center; }
	#withdraw{width: 150px; height: 60px; font-size: 25px;  margin-left: 1200px;}

	.text{width: 400px; height: 50px; display: inline; margin-left: 30px; font-size: 22px}
	.phoneTx{width: 100px; height: 50px; display: inline; margin-left: 30px; font-size: 25px; }
	.hyphen{margin: 0px 0px 0px 20px;  font-size: 30px;}
	.genderDiv{margin-left: 30px; display: inline;}
	.gender{font-size: 25px; width: 25px; height: 25px}
	.birth{margin: 0px 0px 0px 10px;  font-size: 25px;}
	.birthTx{width: 70px; height: 50px; display: inline; margin-left: 30px; font-size: 25px; }
	.explain{margin-left: 10px; font-size: 17px}
	.commitBt{width: 150px; height: 60px; font-size: 25px; font-weight: bold; text-align: center; }
	
	div > p{font-size: 60px}
	div > span {font-size: 18px;}
	div > span > a{color: black;}
	
	label{border: 1px solid; #ccc; border-radius: 2px; color: #8F8F91; font-size: 25px; margin-bottom: 20px }
	input:focus {outline: none;}
	
	table{border: 1px solid #d7d5d5;}
	td{width: 1000px; height: 115px; border: 1px solid #d7d5d5;}
	th{width: 400px; font-size: 25px; border: 1px solid #d7d5d5; background-color: #f9f8f8}
</style>

<script type="text/javascript">
$(function(){
	$("#pass").keydown(function(evt){ 
		if(evt.which == 13){
			chkNull();
		}//end if
	});	
	$("#passChk").keydown(function(evt){ 
		if(evt.which == 13){
			chkNull();
		}//end if
	});	
	$("#bt").click(function(){ 
		chkNull();
	});	
});

function chkNull(){
	if( $("#pass").val() ==""){
		alert("??????????????? ?????? ??????");
		$("#pass").focus();
		return;
	}//end if
	if( $("#passChk").val() ==""){
		alert("???????????? ????????? ?????? ??????");
		$("#passChk").focus();
		return;
	}//end if
	
	var pass = $("#pass").val(); 
	var passChk = $("#passChk").val(); 

	if(pass != passChk){
		alert("??????????????? ???????????? ????????? ???????????? ??????????????????.");
		return;
	}
	
	$("#passFrm").submit();
}//chkNull


	<c:if test="${ !empty success }">
		pwSuccess();
	</c:if>

	<c:if test="${ !empty fail }">
		pwFail();
	</c:if>
	
	function pwSuccess() {
		window.open("http://localhost/ss/login/password_success.do?id=${ id }","password_success","width = 640, height = 387, top ="+(window.sceenTop+350)+",left =" +(window.creenleft + 600));
	 } 	
	
	function pwFail() {
		window.open("http://localhost/ss/login/password_fail.do?id=${ id }","password_fail","width = 640, height = 387, top ="+(window.sceenTop+350)+",left =" +(window.creenleft + 600));
	 } 
	function logout(){
	     if( confirm("?????? ???????????? ???????????????????")){
	     	location.href="http://localhost/ss/login/logout.do";
		}
	}


</script>
</head>
<body>
    <header class="header">
         <div class="main_nav">
            <div>
                <h1 class="title"><a href="http://localhost/ss/main/main_all.do"><img src="http://localhost/ss/common/images/%EC%83%81%ED%95%98%EC%9D%98%EC%8A%A4%ED%8A%B8%EB%A6%BF.png"></a></h1>
                <ul class="navigation">
                    <li><a href="http://localhost/ss/product/prod_top.do" style="color: black">TOP</a></li> <!-- ??????????????? -->
                    <li><a href="http://localhost/ss/product/prod_bot.do" style="color: black">BOTTOM</a></li> <!-- ??????????????? -->
                    <li><a href="http://localhost/ss/lookbook/lookbook_main.do" style="color: black">LOOKBOOK</a></li> <!-- ??????????????? -->
                    <li><a href="http://localhost/ss/login/member.do" style="color: black">MYPAGE</a></li> <!-- ??????????????? -->
                </ul>
            </div>
            <ul class="icons">  
          	<c:choose>
          		<c:when test="${ id eq null}">
               	<li>
                   <p>login</p> 
                   <a href="http://localhost/ss/login/login.do"> <!-- ??????????????? -->
                    <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                       viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve" >
                           <path d="M437.02,330.98c-27.883-27.882-61.071-48.523-97.281-61.018C378.521,243.251,404,198.548,404,148
                               C404,66.393,337.607,0,256,0S108,66.393,108,148c0,50.548,25.479,95.251,64.262,121.962
                               c-36.21,12.495-69.398,33.136-97.281,61.018C26.629,379.333,0,443.62,0,512h40c0-119.103,96.897-216,216-216s216,96.897,216,216
                               h40C512,443.62,485.371,379.333,437.02,330.98z M256,256c-59.551,0-108-48.448-108-108S196.449,40,256,40
                               c59.551,0,108,48.448,108,108S315.551,256,256,256z" />
                    </svg>
                  </a>  
                </li>
                </c:when>
                <c:otherwise>
                <li>
                   <p>login</p> 
                   <a href="#" onclick="logout()"> <!-- ??????????????? -->
                    <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                       viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve" >
                           <path d="M437.02,330.98c-27.883-27.882-61.071-48.523-97.281-61.018C378.521,243.251,404,198.548,404,148
                               C404,66.393,337.607,0,256,0S108,66.393,108,148c0,50.548,25.479,95.251,64.262,121.962
                               c-36.21,12.495-69.398,33.136-97.281,61.018C26.629,379.333,0,443.62,0,512h40c0-119.103,96.897-216,216-216s216,96.897,216,216
                               h40C512,443.62,485.371,379.333,437.02,330.98z M256,256c-59.551,0-108-48.448-108-108S196.449,40,256,40
                               c59.551,0,108,48.448,108,108S315.551,256,256,256z" />
                    </svg>
                  </a>  
                </li>
                </c:otherwise>
              </c:choose>
                <li>
                    <p>cart</p>
                    <a href="http://localhost/ss/order/orderDetail.do"> 
                    <svg id="Capa_1" enable-background="new 0 0 512 512" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg">
                        <path d="m472 452c0 11.046-8.954 20-20 20h-20v20c0 11.046-8.954 20-20 20s-20-8.954-20-20v-20h-20c-11.046 
                        0-20-8.954-20-20s8.954-20 20-20h20v-20c0-11.046 8.954-20 20-20s20 8.954 20 20v20h20c11.046 0 20 8.954 20 20zm0-312v192c0 
                        11.046-8.954 20-20 20s-20-8.954-20-20v-172h-40v60c0 11.046-8.954 20-20 20s-20-8.954-20-20v-60h-192v60c0 11.046-8.954 20-20 
                        20s-20-8.954-20-20v-60h-40v312h212c11.046 0 20 8.954 20 20s-8.954 20-20 20h-232c-11.046 0-20-8.954-20-20v-352c0-11.046 8.954-20 
                        20-20h60.946c7.945-67.477 65.477-120 135.054-120s127.109 52.523 135.054 120h60.946c11.046 0 20 8.954 20 20zm-121.341-20c-7.64-45.345-47.176-80-94.659-80s-87.019 34.655-94.659 80z"/>
                        </svg>
                        </a>
                </li>
            </ul>
        </div>
    </header>
		
		<div  id = container>
			<div class = main_con >
			<div id=join_font>
				<p>PASSWORD</p>??? > ???????????? ??????
			</div>	
			<strong id = "pw">??????????????????</strong>
			<div id= join_pw>
				<form action="http://localhost/ss/login/password_update.do?id=${ id }" method="post" name ="passFrm" id="passFrm">
					<table>
						<tr>
							<th>&emsp;????????????</th>
							<td>
								 <input type="password" class="form-control text" maxlength="30" name ="member_pw" id="pass">
								 <span class="explain">(?????? ????????????/??????/???????????? ??? 2?????? ?????? ??????, 8~16???)</span>
							</td>
						</tr>
						<tr>
							<th>&emsp;??????????????????</th>
							<td>
								 <input type="password" class="form-control text" maxlength="30" name ="passChk" id="passChk">
							</td>
						</tr>
					</table>
				</form>
					<div id ="commitBtDiv">
						<button type="button" class="btn btn-danger commitBt" name ="bt" id="bt">????????????</button>
					</div>
				</div>
		</div>
		</div>
	
		<footer>
			<div class="footer-wrap">
            <div class="footer-content">
                <h2>ABOUT SANGHAUI</h2>
                <p>
                    ?????????????????? ?????? ????????????????????? ???????????????????????? ???????????? ???????????? ???????????? ????????????. <br/>
                    ?????????????????? ?????? ????????? ??????????????? ???????????? ?????? ????????? ?????? ?????? ?????????????????? ????????? ??? ?????????, <br/>
                    ?????? ???????????? ???????????? SANGHAUI STREET ???????????????????????? ????????????.<br/>
					Copyright ?? sanghaui street. All rights reserved.
                </p>
            </div>
            <div class="footer-content">
                <h2>CS CENTER</h2>
                <ul>
                    <li>???????????? 10:00 - 17:00</li>
                    <li>???????????? 12:00 - 13:00</li>
                    <li>?????? ?????????,?????????,?????????</li>
                    <li>?????? ????????? ????????? ?????? ???????????? ?????????</li>
                    <li>PG???????????? ???????????? ???????????? ???????????? ??? ????????????</li>
                </ul>
            </div>
            <div class="footer-content">
                <h2>OUR COMPANY</h2>
                <ul>
                    <li>????????? : (???)??????????????????</li>
                    <li>????????????????????? : 2148529296</li>
                    <li>??????????????? ?????? : ??? 2021-????????????-3333???</li>
                    <li>?????? : ??????????????? ????????? ???????????? 132(?????????) </li>
                    <li>?????????????????? 8??? ??????????????????</li>
                </ul>
            </div>
        </div>
		</footer>
	

</body>
</html>