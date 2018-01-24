<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div>HOME > ${mc.mc_name} >
<c:forEach items="${mc.subList}" var="ss">
${ss.sub_name}
</c:forEach>


<form id="formsort">
<select id="sortselect" name="sort">
	<option value="1">New</option>
	<option value="2">Best</option>
	<option value="3">Low Price</option>
	<option value="4">High Price</option>
</select>
<input type="hidden" value="${num}" name="num"/>

</form>
</div>
<input type="hidden" value="${sort}" id="sort11"/>
<%
int i=0;
%>

<c:forEach var="dto" items="${aList}">
<ul>
<li>
<div class="box">
	<div class="thumbnail">
		<img src="../images/${dto.mp_main_image}" width="200px" height="250px"/>
	</div>
	<div class="information">
		<p>${dto.mp_name}</p>
		<p>${dto.mp_price} won</p>
	</div>
</div>
</li>
</ul>
</c:forEach>

<!-- 이전 출력 시작 -->
		<c:if test="${pv.startPage>1}">
			<a href="/myshopping/items/list.do?num=${num}&CurrentPage=${pv.startPage-pv.blockPage}&sort=${sort}">이전</a>
		</c:if>
		<!-- 이전 출력 끝 -->

		<!-- 페이지 출력 시작 -->
		<!-- 리스트 페이지 화면 -->
		<c:forEach var="i" begin="${pv.startPage}" end="${pv.endPage}">
			<c:url var="currPage" value="/items/list.do">
				<c:param name="num" value="${num}" />
				<c:param name="CurrentPage" value="${i}" />
				<c:param name="sort" value="${sort}" />
			</c:url>

			<a href="${currPage}"> <c:out value="${i}" /></a>
		</c:forEach>
		<!-- 페이지 출력 끝 -->

		<!-- 다음 출력 시작 -->
		<c:if test="${pv.totalPage>pv.endPage}">
			<a href="/myshopping/items/list.do?num=${num}&CurrentPage=${pv.startPage+pv.blockPage}&sort=${sort}">다음</a>
		</c:if>
		<!--  다음 출력 끝 -->