<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
<script type="text/javascript" src="script/board.js"></script>
</head>
<body>
	<form method= "post"  action = "emp.do">
		<input type = "hidden" name = "command" value = "emp_write">		
		<table>
			<tr>
				<td>직원번호</td>
				<td><input type = "text"  name = "empNo"  /></td>
			</tr>
			<tr>
				<td>직원명</td>
				<td><input type = "text"  name = "empNm" /></td>
			</tr>
			<tr>	
				<td>전화번호</td>
				<td><input type = "text"  name = "hp" /></td>	
			</tr>	
			<tr>
				<td>부서명</td>
				<td><input type = "text"  name = "deptSq" /></td>
			</tr>
			<tr>
				<td>직급</td>
				<td><input type = "text"  name = "posi" /></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type = "text"  name = "address" /></td>
			</tr>
			<tr>
				<td>사진</td>
				<td><input type = "text"  name = "picture" /></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type = "text"  name = "email" /></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type = "text" name = "pwd" /></td>
			</tr>
		</table>
		<input type = "submit" value = "등록" >
		<input type = "button" value = "취소" onclick = "location.href='../emp.do?command=emp_list'">
	</form>
<!-- 
	<div id="wrap" align="center">
		<h1>게시글 등록</h1>
		<form name="frm" method="post" action="BoardServlet">
			<input type="hidden" name="command" value="board_write">
			<table>
				<tr>
					<th>작성자</th>
					<td><input type="text" name="matNm"> * 필수</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pass"> * 필수 (게시물 수정
						삭제시 필요합니다.)</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" size="70" name="title"> * 필수</td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea cols="70" rows="15" name="content"></textarea></td>
				</tr>
			</table>
			<br>
			<br> <input type="submit" value="등록"
				onclick="return boardCheck()"> <input type="reset"
				value="다시 작성"> <input type="button" value="목록"
				onclick="location.href='mat.do?command=mat_list'">
		</form>
	</div>
	
	 -->
</body>
</html>