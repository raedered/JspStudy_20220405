<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드</title>
<link rel="stylesheet" href="/JspStudy_3714/static/css/style.css">
<link rel="stylesheet" href="/JspStudy_3714/static/css/file-upload.css">
</head>
<body>
	<div id = "container">
		<form action="/JspStudy_3714/file-upload" method="post" enctype="multipart/form-data"> <!-- 파일 객체 보낼때 enctype="multipart/form-data" 객체를 보내야한다. -->
			<table>
				<tr>
					<td>미리보기</td>
				</tr>
				<tr>
					<td class="preview-img"></td>
				</tr>
				<tr>
					<td>파일 업로드</td>
				</tr>
				<tr>
					<td>
						<input type="file" class="file-upload" name="file" multiple="multiple">
					</td>
				</tr>
			</table>
			<button>이미지 업로드</button> <!-- 아무것도 안적혀있으면 submit 버튼이다 -->
		</form>
		<a download href="/JspStudy_3714/static/fileupload/63d73a348c3f424dbfd0843eeff3b079_horse.png">이미지 다운로드</a>
		<img src="/JspStudy_3714/static/fileupload/63d73a348c3f424dbfd0843eeff3b079_horse.png">
	</div>
	<script type="text/javascript" src="/JspStudy_3714/static/js/file.js"></script>
</body>
</html>