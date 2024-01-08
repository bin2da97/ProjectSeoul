<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>게시물 상세 정보</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<style>
.uploadResult {

.uploadResult ul {
	display: flex;
	flex-flow: row;
	justify-content: center;
	align-items: center;
}
/* p543 수정 */
.uploadResult ul li {
	list-style: none;
	padding: 100px;
	align-content: center;
	text-align: center;
}


.uploadResult ul li span {
	color: white;
}



.bigPicture {
	position: relative;
	display: flex;
	justify-content: center;
	align-items: center;
}


</style>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<script>
	$(document)
			.ready(
					function() {
						var uploadResult = $(".uploadResult ul")
						$
								.ajax({
									type : 'get', // 타입 (get, post, put 등등)    
									url : '/get?bno=' + $("tr td").eq(0).text(),
									dataType : 'json', // 데이터 타입 (html, xml, json, text 등등)  
									contentType : "application/json",
									success : function(obj) { // 결과 성공 콜백함수        console.log(result);  
										console.log(obj.fileName)
										var str = ""
										var fileCallPath = encodeURIComponent(obj.uploadPath +"/"+
												obj.uuid
												+ "_"
												+ obj.fileName)
										var originPath = obj.uploadPath + "/"
												+ obj.uuid + "_" + obj.fileName
										console.log('file',fileCallPath)
										originPath = originPath.replace(
												new RegExp(/\\/g), "/") // "\\" => "/"  로 대체한다 (global)
										str += "<li data-path='"+obj.uploadPath+"'data-uuid='"+obj.uuid+"' data-fileName='"+obj.fileName+"'data-type='"+obj.fileType+"'"
				str+= "><div><span>"
												+ obj.fileName
												+ "</span><button type='button' data-file=\'"+fileCallPath+"\' data-type='fileType' "
				str+= "class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>"
										str += "<img src='/display?fileName="
												+ fileCallPath
												+ "'></div></li>"
										console.log(str)
										uploadResult.append(str)
									}
								//const showUploadedFile=()=>{
								//	var str=""
								// 			obj={	
								// 					fileName	: 
								// 					"다운로드 (4).jpg",
								// 					uploadPath	: 	"2023\\11\\28",
								// 					uuid	: 			"9e6af7f8-00db-4e09-83ea-2faf8d82384b"
								// 				}
								//	obj={	
								//			fileName	: ,
								//			uploadPath	: 	,
								//			uuid	: 			"9e6af7f8-00db-4e09-83ea-2faf8d82384b"
								//		}

								//console.log(uploadResult)
								})
						//showUploadedFile()
					})
</script>
</head>
<body>
	${board.bno}
	<div class="container">
		<!-- 		<h2>게시물 상세 정보</h2> -->
		<div class="row" style="margin-bottom: 20px; margin-left: 1px;">
			<div class="col-lg-12">
				<h1 class="page-header">게시물 상세 정보</h1>
			</div>
		</div>

		<div class="panel" style="margin-left: 1px;">
			<div id="contAreaBox">
				<div class="panel">
					<div class="panel-body">
						<div class="table-responsive" style="text-align: center;">
							<table id="datatable-scroller"
								class="table table-bordered tbl_Form">
								<caption></caption>
								<colgroup>
									<col width="250px" />
									<col />
								</colgroup>
								<tbody>
									<tr>
										<th class="active">번호</th>
										<td>${board.bno}</td>
									</tr>
									<tr>
										<th class="active">작성자</th>
										<td>${board.writer}</td>
									</tr>
									<tr>
										<th class="active">제목</th>
										<td>${board.title}</td>
									</tr>
									<tr>
										<th class="active">내용</th>
										<td>${board.content}</td>
									</tr>
									<tr>
										<th class="active">작성 일자</th>
										<td>${board.reg_date}</td>
									</tr>
									<tr>
										<th class="active">사진 파일</th>
										<td><div class="row">
												<div class="col-lg-12">
													<div class="panel panel-default">
														<div class="panel-body">
															<div class="uploadResult">
																<ul></ul>
															</div>
														</div>
													</div>
												</div>
											</div> <!-- /row --></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div style="margin-left: 10px; margin-top: 20px">
							<a href="/board/list" class="btn btn-dark">목록</a>
						</div>

					</div>
				</div>
			</div>
		</div>

	</div>

</body>
</html>
