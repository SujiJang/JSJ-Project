<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form id="joinform">
<fieldset>

<legend>회원가입</legend>
<div>
<input type="text" id="m_id" name="m_id" accesskey="L" placeholder="아이디 입력" class="joint" maxlength="41"/>
<!-- <input type="button" id="au" title="인증" value="인증하기"/> -->
<p id="email-text"></p>
</div>

<div>
<input type="password" id="m_password" name="m_password" placeholder="비밀번호 입력" class="joint" maxlength="16"/>
<p id="password-text"></p>
</div>

<div>
<input type="password" id="confirmpassword" name="confirmpassword" placeholder="비밀번호 확인" class="joint" maxlength="16"/>
<p id="confirmpassword-text"></p>
</div>

<div>
<input type="text" id="m_name" name="m_name" placeholder="이름" class="joint" maxlength="41"/>
<p id="name-text"></p>
</div>

<div>
<input type="text" id="m_phonenum" name="m_phonenum" placeholder="전화번호" class="joint" maxlength="12"/>
</div>

<div>
<input type="date" id="m_birth" name="m_birth" class="joint" maxlength="41"/>
<p id="date-text"></p>
</div>

<div>
<label>성별</label>
<span><input type="radio" id="m_gen_w" name="m_gen" class="joint" value="w"/><label for="m_gen_w">여자</label></span>
<span><input type="radio" id="m_gen_m" name="m_gen" class="joint" value="m"/><label for="m_gen_m">남자</label></span>
</div>

<div>

</div>

<div>
<input type="button" id="okjoin" title="완료" value="완료"/>
</div>

</fieldset>
</form>