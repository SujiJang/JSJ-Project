<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

${param.returnUrl}

<%-- <%
/* String url=request.getRequestURI(); */
String url= request.getHeader("referer");
System.out.println(url);
String urll = url.substring(url.indexOf("myshopping/"));
System.out.println(urll);
/* url.substring(indexOf(":")+16); */
/* HttpServletRequest request = new HttpServletRequest();
String url=request.getURI(); */
/* System.out.println(url); */
%> --%>
<div>
	<a href="/myshopping/index.do">홈</a>
	<a href="/myshopping/login.do">로그인</a>
	<a href="/myshopping/join.do">회원가입</a>
</div>
<div></div>
<div id="menu">
	<ul>
		<li>
			<div>TOP</div>
			<div>
				<ul>
					<li><a href="/myshopping/items/list.do?num=1">OUTER</a></li>
					<li><a href="/myshopping/items/list.do?num=2">TSHIRTS</a></li>
				</ul>
			</div>
		</li>
		<li>
			<div>BOTTOM</div>
			<div>
				<ul>
					<li><a href="/myshopping/items/list.do?num=3">JEAN</a></li>
				</ul>
			</div>
		</li>
	</ul>
	<div>
		<form>
			<input type="text" id="search" name="search" accessKey="F" placeholder="검색하기"/>
			<a class="btn btn-small" href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
		</form>
	</div>
</div>
<!-- <h2 align="center">Spring Tiles Examples!!!</h2> -->