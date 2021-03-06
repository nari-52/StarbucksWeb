<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="head.jsp" %>  

<article align="center">
	<h3>회원 목록</h3>
	<table align="center" class="admin_table" id="member_table">
		<tr>
			<th class="category" id="member_seq">회원번호 <img id="member_seq" src="<%= ctxPath%>/images/common/filter_arrow.png" style="height: 10pt;"></th>
			<th class="category" id="userid">아이디 <img id="userid" src="<%= ctxPath%>/images/common/filter_arrow.png" style="height: 10pt;"></th>
			<th class="category" id="name">이름 <img id="name" src="<%= ctxPath%>/images/common/filter_arrow.png" style="height: 10pt;"></th>
			<th class="category" id="email">이메일 <img id="email" src="<%= ctxPath%>/images/common/filter_arrow.png" style="height: 10pt;"></th>
			<th class="category" id="hp2">연락처 <img id="hp2" src="<%= ctxPath%>/images/common/filter_arrow.png" style="height: 10pt;"></th>
			<th class="category" id="gender">성별 <img id="gender" src="<%= ctxPath%>/images/common/filter_arrow.png" style="height: 10pt;"></th>
			<th class="category" id="birthYYYY">생년월일 <img id="birthYYYY" src="<%= ctxPath%>/images/common/filter_arrow.png" style="height: 10pt;"></th>
			<th class="category" id="birthYYYY">나이 <img id="birthYYYY" src="<%= ctxPath%>/images/common/filter_arrow.png" style="height: 10pt;"></th>
			<th class="category" id="point">포인트 <img id="point" src="<%= ctxPath%>/images/common/filter_arrow.png" style="height: 10pt;"></th>
			<th class="category" id="register_day">가입일자 <img id="register_day" src="<%= ctxPath%>/images/common/filter_arrow.png" style="height: 10pt;"></th>
			<th class="category" id="status">탈퇴유무 <img id="status" src="<%= ctxPath%>/images/common/filter_arrow.png" style="height: 10pt;"></th>
		</tr>
<!-- 		<tbody id="member_tb">
		
		</tbody> -->
		<c:forEach var="mem" items="${memberList}" varStatus="status">
			<tr>
				<td>${mem.member_seq }</td>
				<td>${mem.userid }</td>
				<td>${mem.name }</td>
				<td>${mem.email }</td>
				<td>${mem.hp1}-${mem.hp2}-${mem.hp3}</td>
				<td>${mem.gender }</td>
				<td>${mem.birthyyyy}/${mem.birthmm}/${mem.birthdd}</td>
				<td>${mem.age }</td>
				<td>${mem.point }</td>
				<td>${mem.registerday }</td>
				<c:choose>
					<c:when test="${mem.status eq 1}">
						<td>회원</td>				
					</c:when>
					<c:otherwise>
						<td>탈퇴</td>				
					</c:otherwise>
				</c:choose>
			</tr>
		</c:forEach>
	</table>
	<div class="pagination" id="paging_container" align="center">
		${pageBar}
	</div>
</article>
<%@ include file="tail.jsp" %>  
<script type="text/javascript" src="/StarbucksWeb/js/member_management.js"></script>

