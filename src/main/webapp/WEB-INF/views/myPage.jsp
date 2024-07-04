<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>mypage</title>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <link rel="stylesheet" type="text/css" th:href="@{/css/base.css}">
    <link rel="stylesheet" type="text/css" href="css/base.css">
    <link rel="stylesheet" type="text/css" th:href="@{/css/main.css}">
    <link rel="stylesheet" type="text/css" href="css/main.css">


</head>
<body>
    <div id="wrap">

		<header id="header">
            <div class="header_logo">
                <div class="header_logo_img"><img src="./resources/img/logo.png"></div>
            </div>
            <h3>Good Job</h3>
			<a>사용자</a><!-- 여기에 사용자 아이디 받아서 올리기-->
			<div class="user_ico">
				<div class="user_ico_img"><img src="./resources/img/user-icon.png"></div>
			</div>
		</header><!-- end header -->

        <div id="leftMenu">
            <nav>
                <ul>
                    <li>
                        <div class="leftMenu_mypage"><img src="./resources/img/user.png">개인정보</div>
                    </li>
                    <li>
                        <div class="leftMenu_mypageEdit"><img src="./resources/img/user-icon.png">개인정보변경</div>
                    </li>
                    <li>
                        <div class="leftMenu_apply"><img src="./resources/img/send.png">지원현황 0<!--여기에 apply 총 갯수--></div>
                    </li>
                    <li>
                        <div class="leftMenu_recommend"><img src="./resources/img/recomand.png">지원할만한공고 0<!--여기에 recommend 총 갯수--></div>
                    </li>
                    <li>
                        <div class="leftMenu_scrap"><img src="./resources/img/scrap.png">스크랩/관심기업 0<!--여기에 scrap 총 갯수--></div>
                    </li>
                    <li>
                        <div class="leftMenu_resume"><img src="./resources/img/scrap.png">이력서 0<!--여기에 resume 총 갯수--></div>
                    </li>
                    <li>
                        <div class="leftMenu_myQuestion"><img src="./resources/img/question.png">내가 한 질문 0<!--여기에 myQuestion 총 갯수--></div>
                    </li>
                </ul>
            </nav>
        </div><!-- end leftMenu -->

        <div id="cont_mypage">
            <h2>개인정보</h2><br><br>
			<div class="cont_mypage_wrap">
				<div class="cont_mypage_left">
		            <a class="cont_mypage_ID">아이디</a><br><br>
		            <a class="cont_mypage_sex">성별</a><br><br>
		            <a class="cont_mypage_name">이름</a><br><br>
		            <a class="cont_mypage_birth">생년월일</a><br><br>
		            <a class="cont_mypage_email">이메일</a><br><br>
	        	</div>
				<div class="cont_mypage_right">
					<a class="cont_mypage_ID">user_id<!--여기에 아이디정보 받은거 추가 --></a><br><br>
		            <a class="cont_mypage_sex">male<!--여기에 성별정보 받은거 추가 --></a><br><br>
		            <a class="cont_mypage_name">user_name<!--여기에 이름정보 받은거 추가 --></a><br><br>
		            <a class="cont_mypage_birth">user_birth<!--여기에 생년월일정보 받은거 추가 --></a><br><br>
		            <a class="cont_mypage_email">user_email<!--여기에 이메일정보 받은거 추가 --></a><br><br>
				</div>
			</div>
        	<button onclick="">정보수정</button><!--onclick에 버튼누르면 cont_mypageEdit로 가는 메소드 생성후 기입 -->
		</div><!-- end cont_mypage -->

        <div id="cont_mypageEdit">
            <h2>개인정보변경</h2>
            <a>아이디<!--여기에 아이디정보 받은거 추가 --></a>
            <a>비밀번호</a>
            <input type="text" name="cont_mypageEdit_PWD" size="50">
            <a>성별<!--여기에 성별정보 받은거 추가 --></a>
            <a>이름<!--여기에 이름정보 받은거 추가 --></a>
            <a>생년월일<!--여기에 생년월일정보 받은거 추가 --></a>
            <a>전화번호</a>
            <input type="text" name="cont_mypageEdit_phoneNumber1" size="10">
            <input type="text" name="cont_mypageEdit_phoneNumber2" size="20">
            <input type="text" name="cont_mypageEdit_phoneNumber3" size="20">
            <a>이메일</a>
            <input type="text" name="cont_mypageEdit_email1" size="20">
            <a>@</a>
            <input type="text" name="cont_mypageEdit_email2" size="20">
            <a>주소</a>
            <input type="text" name="cont_mypageEdit_address" size="50">

            <button type="submit" value="수정하기"></button>
            <input type="submit" value="취소하기" formaction="cancel"> <!-- 컨트롤러단에 cancel 생성하기-->
        </div><!-- end cont_mypageEdit -->

        <div id="cont_apply">
            <h2>지원현황</h2>
            <ul>
                <li class="cont_apply_box1" img src="">
                    <a>지원완료</a>
                    <a class="cont_apply_box1_number">0<!-- 여기에 지원완료인 공고 총 갯수--></a>
                </li><!-- src에 둥근모서리 사각형 src넣기-->
                <li class="cont_apply_box2" img src="">
                    <a>지원결과</a>
                    <a class="cont_apply_box2_number">0<!-- 여기에 지원결과나온 공고 총 갯수--></a>
                </li><!-- src에 둥근모서리 사각형 src넣기-->
            </ul><!-- 지원완료,지원결과 box end-->
            <h3>내역</h3>
            <ul>
                <li>지난1개월</li>
                <li>지난1년</li>
            </ul>
            <a>업데이트순</a>
            <hr><!--  내역 아래 선 -->
            <ul>
                <!-- 지원한 공고 리스트-->
                <!-- paging의 content_view 167번째단처럼 로직으로 li -->
            </ul>
        </div><!-- end cont_apply -->

        <div id="cont_recommend">
            <h2>지원할만한공고</h2>
            <ul>
                <!-- 지원한 공고 리스트-->
                <!-- paging의 content_view 167번째단처럼 로직으로 li -->
                <!-- 둥근사각형 안에 별(스크랩/언스크랩버튼)이미지 넣어야함 -->
            </ul>
        </div><!-- end cont_recommend -->

        <div id="cont_scrap">
            <h2>스크랩/관심기업</h2>
            <ul>
                <!-- 스크랩한 공고 리스트-->
                <!-- paging의 content_view 167번째단처럼 로직으로 li -->
                <!-- 둥근사각형 안에 별(스크랩/언스크랩버튼)이미지 넣어야함 -->
            </ul>
        </div><!-- end cont_scrap -->

        <div id="cont_resume">
            <h2>이력서</h2>
            <h3>내역</h3>
            <a href="">이력서작성</a> <!--링크 이력서 페이지로-->
            <ul>
                <!-- 이력서 리스트-->
                <!-- paging의 content_view 167번째단처럼 로직으로 li -->
                <!-- 이력서 리스트 안에 수정하기 / 삭제하기 버튼 만들어야함-->
            </ul>

            
           
        </div><!-- end cont_resume -->

        <div id="cont_myQuestion">
            <h2>내가 한 질문</h2>
            <h3>내역</h3>
            <ul>
                <li>지난1개월</li>
                <li>지난1년</li>
            </ul>
            <a>업데이트순</a>
            <ul>
                <!-- 질문 글 리스트-->
                <!-- paging의 content_view 167번째단처럼 로직으로 li -->
            </ul>

        </div><!-- end cont_myQuestion -->

        <footer id="footer">
			<div><img src="./resources/img/f_sns1.png"></div>
			<div><img src="./resources/img/f_sns2.png"></div>
			<div><img src="./resources/img/f_sns3.png"></div>
			
			<ul>
				<li>서영수 tjdudtn7879@naver.com</li>
				<li>서영수 tjdudtn7879@naver.com</li>
				<li>서영수 tjdudtn7879@naver.com</li>
				<li>서영수 tjdudtn7879@naver.com</li>
				<li>서영수 tjdudtn7879@naver.com</li>
				<li>서영수 tjdudtn7879@naver.com</li>
			</ul>
        </footer>
    </div><!-- end wrap -->
</body>
</html>