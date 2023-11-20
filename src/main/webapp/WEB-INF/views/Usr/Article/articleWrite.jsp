<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="게시글 작성" />
<%@ include file="../../common/head.jsp" %>
<script>
	function send() {
		if (!article.title.value) {
			alert("제목을 입력하세요");
			article.title.focus();
			return;
		}
		if (!article.body.value) {
			alert("내용을 입력하세요");
			article.body.focus();
			return;
		}
	
		//업로드 용량 제한
		if (article.a_fileName.value != "") {
			var size = article.a_fileName.files[0].size;
			if (size > (2 * 1024 * 1024)) {
				alert("파일용량은 2M 이내로 제한됩니다");
				article.a_fileName.focus();
				return;
			}
		}
		alert("자료를 등록합니다")
		article.submit();
	}
	
	//파일용량 체크
	function checkSize(article) {
		if (article.files && article.files[0].size > (2 * 1024 * 1024)) {
			alert("파일용량이 2M를 초과하였습니다");
			article.value = null;
		}
	}	
</script>
<body>
<section class="mt-24">
		<div class="container mx-auto">
			<form name="article" action="/Usr/Article/articleWrite" method="post">
				<input type="hidden" name="memberid" value="${member.memberid }">
				<div class="table-box-type-1">
					<div class="w-full max-w-xs mb-2">
						<span class="text-gray-700 font-bold text-sm ml-4 mr-2">게시판</span>
						<select data-value="${type }" name="type" class="select select-accent select-bordered">
						    <c:if test="${member.authLevel == 3 }">
								<option value="notice">공지사항</option>
							</c:if>
							<option value="review">리뷰</option>
							<option value="inquiry">문의</option>
						</select>
					</div>
					<table class="table">
						<colgroup>
							<col width="200" />
						</colgroup>
						<tbody>
							<tr>
								<th>제목</th>
								<td><input class="input input-bordered input-accent w-full" type="text" name="title" placeholder="제목을 입력해주세요" /></td>
							</tr>
							<tr>
								<th>내용</th>
								<td>
									<input class="input input-bordered input-accent w-full" type="text" name="body" placeholder="내용을 입력해주세요" />
								</td>
							</tr>
							<tr>
								<th>첨부파일</th>
								<td>
									<input type="file" name="a_fileName" onChange="checkSize(this)">
								</td>
							</tr>
							<tr>
								<th><input type="radio" name="secret" value="1"> 비밀글</th>
							</tr>
							<tr>
								<td colspan="2"><button class="btn btn-accent btn-sm" onClick="send();">작성</button></td>
							</tr>
						</tbody>
					</table>
				</div>
			</form>
			<div class="mt-2">
				<button class="btn btn-accent btn-sm" onclick="history.back();">뒤로가기</button>
			</div>
		</div>
	</section>

<%@ include file="../../common/foot.jsp" %>