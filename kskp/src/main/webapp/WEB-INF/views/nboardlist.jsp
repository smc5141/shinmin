<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/0.b280c48150e7b9ec4a16.css" />
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/application.b280c48150e7b9ec4a16.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application_template_1-2ece18b6c26275ab3bce2543416a6d5ce8ab1fb02e628874719778440a82ecb2.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application_template_2-f4aa669c5b0bb95eeab45e16d2191196766ade801ea426d4378844f33223711e.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application-a9128fc1a122430f544993e6d4fc160ef0da94eb6bdc0b7c4881ca2d32dae94a.css" />
<link href='//fonts.googleapis.com/css?family=Roboto:300,400,500,300italic' rel='stylesheet'>
<style>
   @import url('https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap');
	*{
      margin: 0;
      padding: 0;
      font-family: 'Nanum Gothic', sans-serif;
   }
   table{
   	 margin: 0;
   	 text-align: center;
  	 align:center;
   }
   li{
      list-style: none;
   }
   a{
      text-decoration: none;
      color: #666;
   }
   img{
      border: 0;
   }
   body{
      background-color: #ededed;
   }
   textarea{
    background-color: #ededed;
	resize:none;
	white-space:pre;
   }
   .log_wrap{
      height:400px;
      width: 600px;
      margin: 0 auto;
      margin-top: 50px;
   }
   h1{
      width: 270px;
      height: auto;
      margin: 0 auto;
      margin-bottom: 10px;
   }
   h1 img{
      width: 100%;
   }
   .text{
      display: block;
      width: 390px;
      height: 50px;
      margin: 0 auto;
      margin-top: 10px;
      padding-left: 10px;
      border: 1px solid #ccc;
   }
   .title{
      width: 390px;
      padding-left: 10px;
      margin: 0 auto;
      margin-top: 25px;
      font-size: 18px;
      font-weight: bold;
   }
   .notice{
      width: 390px;
      margin: 0 auto;
      padding-left: 10px;
      font-size: 12px;
      padding-top: 5px;
   }
   .button{
      width: 400px;
      height: 50px;
      background-color: #1b3371;
      border: 0;
      color: #fff;
      font-size: 18px;
      margin: 0 auto;
      margin-top: 40px;
      display: block;
      cursor: pointer;
   }
   footer {
 	  position: relative;
   }
   footer ul{
      width: 600px;
      height: 30px;
      margin: 0 auto;
      margin-top: 50px;
   }
   footer li{
      float: left;
      font-size: 13px;
   }
   footer li:first-child{
      padding-left: 33px;
   }
   footer li::after{
      content: '|';
      color: #666;
      padding-left: 25px;
      padding-right: 25px;
   }
   footer li:last-child::after{
      content: '';
      padding-right: 0px;   
   }
   .copy{
      text-align: center;
      margin-top: 20px;
      font-size: 12px;
   }
   footer img{
      width: 50px;
      height: auto;
      margin-right: 5px;
      margin-bottom: -5px;
   }
   #center{
   width:500px;
   margin: 0 auto;
   }
   #hh{
   margin-top: 30px;
   margin-bottom: 50px;
   width:145px;
   }
   th{
      text-align: center;
   }
</style>
</head>
<%
Map<String,Integer>map=(Map<String,Integer>)request.getAttribute("pmap");
%>
<body>
<div class="log_wrap">
      <h1>
         <a href="main.do">
            <img src="img/logo.png" alt="">
         </a>
      </h1>
<h1 id="hh">공지사항</h1>
<form action="nmuldel.do" method="post">
<table border="1">
<c:choose>
	<c:when test="${ldto.m_status eq 'A'}">
	<col width="50px">
	<col width="300px">
	<col width="150px">
	<col width="80px">
	</c:when>
	<c:otherwise>
	<col width="300px">
	<col width="150px">
	<col width="80px">
	</c:otherwise>
	</c:choose>
	<c:choose>
	<c:when test="${ldto.m_status eq 'A'}">
	<tr>
		<th><input type="checkbox" onclick="allSel(this.checked)" /></th>
		<th>제 목</th>
		<th>작성날짜</th>
		<th>조회수</th>
	</tr>
	</c:when>
	<c:otherwise>
		<tr>
		<th>제 목</th>
		<th>작성날짜</th>
		<th>조회수</th>
		</tr>
	</c:otherwise>
	</c:choose>	
					
		<c:choose>
			<c:when test="${empty list}">
			<c:choose>
			<c:when test="${ldto.m_status eq 'M'}">
			<td colspan="3" style="text-align: center;">---작성된 글이 없습니다.---</td>
			</c:when>
			<c:when test="${ldto.m_status eq 'A'}">
			<td colspan="4" style="text-align: center;">---작성된 글이 없습니다.---</td>
			</c:when>
			<c:otherwise>
				<td colspan="3" style="text-align: center;">---작성된 글이 없습니다.---</td>
			</c:otherwise>
			</c:choose>
			</c:when>
			<c:otherwise>
				<c:forEach items="${list}" var="dto">
				<tr><c:choose>
					<c:when test="${ldto.m_status eq 'A'}">
					<td><input type="checkbox" name="chk" value="${dto.n_seq}"/></td>
					<td><a href="ngetboard.do?n_seq=${dto.n_seq}">${dto.n_title}</a></td>
					<td><f:formatDate value="${dto.n_regdate}" pattern="yyyy년MM월dd일"/></td> 
					<td>${dto.n_count}</td>
					</c:when>
					<c:otherwise>	
					<td><a href="ngetboard.do?n_seq=${dto.n_seq}">${dto.n_title}</a></td>
					<td><f:formatDate value="${dto.n_regdate}" pattern="yyyy년MM월dd일"/></td> 
					<td>${dto.n_count}</td>
					</c:otherwise>
					</c:choose>
				</tr>	
				</c:forEach>
			</c:otherwise>
		</c:choose>     
      <tr>
			<td colspan="6" style="text-align: center;">
				<a href="nboardlist.do?pnum=<%=map.get("prePageNum")%>">◀</a>
				<%
					int pcount=(Integer)request.getAttribute("pcount");
					for(int i=map.get("startPage");i<=map.get("endPage");i++){
						%>
						<a href="nboardlist.do?pnum=<%=i%>" style="text-decoration: none;"><%=i%></a>				
						<%
						}					
				%>
				<a href="nboardlist.do?pnum=<%=map.get("nextPageNum")%>">▶</a>
			</td>
		</tr>	  
		<c:choose>
				<c:when test="${ldto.m_status eq 'A'}">
					<tr>
						<td colspan="4">
							<a href="ninsertform.do">글추가</a>
						<input type="submit" value="삭제"/>
						</td>
					</tr>
				</c:when>
		</c:choose>
</table>
</form>
</div>

<script type="text/javascript">
	function allSel(ele){// ele는 전체 선택 체크박스의 체크여부(true/false)	
		var chks=document.getElementsByName("chk");//chks[chk,chk,chk,chk]	
		for(var i=0;i<chks.length;i++){
			chks[i].checked=ele;//각각의 체크박스에 전달받은 체크여부(true/false)를 적용
		}
	}
</script>
<footer>
      <ul>

         <li><a href="conditions.do">이용약관</a></li>
         <li><a href="privacy.do">개인정보처리방침</a></li>
         <li><a href="responsibility.do">책임의 한계와 법적고지</a></li>
         <li><a href="servicecenter.do">고객센터</a></li>

      </ul>
      <p class="copy"><img src="img/logo.png" alt=""> copyright ⓒ <strong>SWAG.</strong> All Rights Reserved.</p>
</footer>
</body>
</html>
