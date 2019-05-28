<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/create_reset.css">
<link rel="stylesheet" href="./css/orion.css">
<link rel="stylesheet" href="./css/error.css">
<link rel="stylesheet" type="text/css" href="./css/header.css">
<title>パスワード再設定</title>

</head>
<body>

<jsp:include page="header.jsp"/>

<div id="contents" class="main-container">
	<div class="page-title">

    <h1>パスワード再設定画面</h1>
    </div>

	<!-- ユーザーIDが正しく入力されているかどうか -->
	<s:if test="userIdErrorMessageList !=null && userIdErrorMessageList.size() > 0">
	<div class="warning">

		<s:iterator value="userIdErrorMessageList"><s:property />
		<br></s:iterator>

	</div>
	</s:if>

	<!-- 現在のパスワード欄が正しく入力されているかどうか -->
	<s:if test="passwordErrorMessageList !=null && passwordErrorMessageList.size() > 0">
	<div class="warning">

		<s:iterator value="passwordErrorMessageList"><s:property />
		<br></s:iterator>

	</div>
	</s:if>

	<!-- 新しいパスワード欄が正しく入力されているかどうか -->
	<s:if test="newPasswordErrorMessageList != null && newPasswordErrorMessageList.size() > 0">
	<div class="warning">

		<s:iterator value="newPasswordErrorMessageList"><s:property />
		<br></s:iterator>

	</div>
	</s:if>

	<!-- 新しいパスワード（確認用）欄が正しく入力されているかどうか -->
	<s:if test="reConfirmationNewPasswordErrorMessageList != null && reConfirmationNewPasswordErrorMessageList.size() > 0">
	<div class="warning">

		<s:iterator value="reConfirmationNewPasswordErrorMessageList"><s:property />
		<br></s:iterator>

	</div>
	</s:if>

	<!-- ユーザーIDまたはパスワードがデータベースに登録されたものと合っているかどうか -->
	<s:if test="passwordIncorrectErrorMessage != null && !passwordIncorrectErrorMessage.isEmpty()">
	<div class="warning">

			<s:property value="PasswordIncorrectErrorMessage"/>
			<br>

	</div>

	<!-- 新しいパスワードと確認用が一致しているかどうか -->
	</s:if>
	<s:if test="newPasswordIncorrectErrorMessage != null && !newPasswordIncorrectErrorMessage.isEmpty()">
	<div class="warning">

			<s:property value="newPasswordIncorrectErrorMessage"/>
			<br>

	</div>
	</s:if>

	<s:form action="ResetPasswordConfirmAction">
		<table class="v">
			<tr>
				<th scope="row"><s:label value="ユーザーID"/></th>
				<td><s:textfield name="userId" value="%{#session.userIdForResetPassword}" placeholder="ユーザーID" size="30%"/></td>
			</tr>

			<tr>
				<th scope="row"><s:label value="現在のパスワード"/></th>
				<td><s:password name="password" value="" placeholder="現在のパスワード" size="30%"/></td>
			</tr>

			<tr>
				<th scope="row"><s:label value="新しいパスワード"/></th>
				<td><s:password name="newPassword" value="" placeholder="新しいパスワード" size="30%"/></td>
			</tr>

			<tr>
			    <th scope="row"><s:label value="再確認"/></th>
			    <td><s:password name="reConfirmationPassword" value="" placeholder="新しいパスワード（再確認用）" size="30%"/></td>
		    </tr>

	</table>

	<div class="submit_btn_box">
		<s:submit value="確認" class="submit_btn btn-field" />
	</div>

	</s:form>

</div>

</body>
</html>