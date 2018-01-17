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
	<a href="login.do">로그인</a>
	<a href="join.do">회원가입</a>
</div>
<div></div>
<div>
	<ul>
		<li>
			<div>상의</div>
			<div>
				<ul>
					<li>아우터</li>
					<li>티셔츠</li>
				</ul>
			</div>
		</li>
		<li>
			<div>하의</div>
			<div>
				<ul>
					<li>청바지</li>
				</ul>
			</div>
		</li>
	</ul>
</div>
<!-- <h2 align="center">Spring Tiles Examples!!!</h2> -->