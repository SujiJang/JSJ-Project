<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/* String url=request.getRequestURI(); */
String url= request.getHeader("referer");
System.out.println(url);
String urll = url.substring(url.indexOf("myshopping/")+11);
System.out.println(urll);
/* url.substring(indexOf(":")+16); */
/* HttpServletRequest request = new HttpServletRequest();
String url=request.getURI(); */
/* System.out.println(url); */
%>
<form id="loginform" action="confirm.do?returnUrl=<%=urll%>">
<fieldset>
<legend>회원로그인</legend>
<input type="text" id="id" name="id" accesskey="L" placeholder="아이디" class="int" maxlength="41"/>
<input type="password" id="pw" name="pw" placeholder="비밀번호" class="int" maxlength="16"/>
<input type="button" id="sm" name="sm" title="로그인" value="로그인"/>
<%-- <input type="hidden" id="hidurl" name="hidurl" value=<%=urll%>/> --%>
</fieldset>
</form>