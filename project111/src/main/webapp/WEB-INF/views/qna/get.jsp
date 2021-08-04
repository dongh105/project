<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../includes/header.jsp"%>



<!-- DataTales Example -->
<div class="card shadow mb-4">
	<div class="card-body">
		<div class="table-responsive">
			<div class="panel-heading">질문&답변</div>
			<div class="panel-body">

				<div class="form-group">
					게시물 번호<input class="form-control" name="bno"
						value='<c:out value="${board.bno }"/>' readonly="readonly">
				</div>

				<div class="form-group">
					<label>제목</label><input class="form-control" name="title"
						value='<c:out value="${board.title }"/>' readonly="readonly">
				</div>

				<div class="form-group">
					<label>내용</label>
					<textarea rows="3" class="form-control" name="content"
						readonly="readonly"><c:out value="${board.content }" /></textarea>
				</div>

				<div class="form-group">
					<label>작성자</label> <input class="form-control" name="writer"
						value='<c:out value="${board.writer }"/>' readonly="readonly">
				</div>

				<button data-oper="modify" class="btn btn-warning">수정</button>
				<button data-oper="list" class="btn btn-info">목록</button>

				<form id='operForm' action="/board/modify" method="get">
					<input type='hidden' id='bno' name='bno' value="${board.bno }" />
					<input type="hidden" name="pageNum" value="${cri.pageNum }" /> <input
						type="hidden" name="amount" value="${cri.amount }" /> <input
						type="hidden" name="type" value="${cri.type }"> <input
						type="hidden" name="keyword" value="${cri.keyword }">
				</form>

			</div>

		</div>
	</div>
</div>


<!-- 첨부파일 시작 -->
<br/>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">첨부파일</div>
			<div class="panel-body">
				<div class="uploadResult">
					<ul></ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 첨부파일 끝 -->



<!-- 덧글 목록 시작 -->
<br />
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<i class="fa fa-comments fa-fw"></i>답변
				<button id="addReplyBtn" class="btn btn-primary btn-xs float-right">
					답변작성</button>
			</div>
			<br />
			<div class="panel-body">
				<ul class="chat">
					<li>good</li>
				</ul>
			</div>
			<div class="panel-footer"></div>
		</div>
	</div>
</div>
<!-- 덧글 목록 끝 -->

<!-- 덧글 입력 모달 시작 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">답변 창</h4>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<label>답변</label> <input class="form-control" name="reply"
						value="새 답변">
				</div>
				<div class="form-group">
					<label>작성자</label> <input class="form-control" name="replyer"
						value="replyer">
				</div>
				<div class="form-group">
					<label>답변 작성일</label> <input class="form-control" name="replyDate"
						value="">
				</div>
			</div>
			<div class="modal-footer">
				<button id="modalModBtn" type="button" class="btn btnwarning">수정</button>
				<button id="modalRemoveBtn" type="button" class="btn btndanger">삭제</button>
				<button id="modalRegisterBtn" type="button" class="btn btnprimary">등록</button>
				<button id="modalCloseBtn" type="button" class="btn btndefault">닫기</button>
			</div>
		</div>
	</div>
</div>
<!-- 덧글 입력 모달 끝 -->

<%@ include file="../includes/footer.jsp"%>

<script type="text/javascript" src="/resources/js/reply.js"></script>
<script>
	$(document)
			.ready(
					function() {
						var operForm = $("#operForm");
						$('button[data-oper="modify"]').on(
								"click",
								function(e) {
									operForm.attr("action", "/board/modify")
											.submit();
								});

						$('button[data-oper="list"]').on("click", function(e) {
							operForm.find("#bno").remove();
							operForm.attr("action", "/board/list").submit();
						});

						var bnoValue = '<c:out value="${board.bno}"/>';

						var modal = $("#myModal");
						var modalInputReplyDate = modal
								.find("input[name='replyDate']");
						var modalRegisterBtn = $("#modalRegisterBtn");
						var modalInputReply = modal.find("input[name='reply']");
						var modalInputReplyer = modal
								.find("input[name='replyer']");
						var modalModBtn = $("#modalModBtn");
						var modalRemoveBtn = $("#modalRemoveBtn");

						$("#addReplyBtn").on("click", function(e) {
							modal.find("input").val("");
							modalInputReplyDate.closest("div").hide();
							modal.find("button[id != 'modalCloseBtn']").hide();
							modalRegisterBtn.show(); 
							$("#myModal").modal("show");
						});

						$("#modalCloseBtn").on("click", function(e) {
							modal.modal("hide");
						});

						modalRegisterBtn.on("click", function(e) {
							var reply = {
								reply : modalInputReply.val(),
								replyer : modalInputReplyer.val(),
								bno : bnoValue
							}; 
							replyService.add(reply, function(result) {
								alert(result);
								modal.find("input").val("");
								modal.modal("hide");
								showList(-1);
							});
						});
						
						modalModBtn.on("click", function(e) {
							var reply = {
								rno : modal.data("rno"),
								reply : modalInputReply.val()
							};
							replyService.update(reply, function(result) {
								alert(result);
								modal.modal("hide");
								showList(-1);
							});
						});
						
						modalRemoveBtn.on("click", function(e) {
							var rno = modal.data("rno");
							replyService.remove(rno, function(result) {
								alert(result);
								modal.modal("hide");
								showList(-1);
							});
						});
						


						$(".chat").on("click", "li", function(e) {
							var rno = $(this).data("rno");
							console.log(rno);
							
							replyService.get(rno,function(reply) {
								modalInputReply.val(reply.reply);
								modalInputReplyer.val(reply.replyer);
								modalInputReplyDate.val(replyService.displayTime(reply.replyDate))
										.attr("readonly","readonly");
								modal.data("rno",reply.rno);
								modal.find("button[id !='modalCloseBtn']").hide();
								modalModBtn.show();
								modalRemoveBtn.show();
								$("#myModal").modal("show");
							});
						});

						var replyUL = $(".chat");

						function showList(page) {
							replyService
									.getList(
											{
												bno : bnoValue,
												page : page || 1
											},
											function(replyCnt, list) {
												
												console.log("replyCnt : "+replyCnt);
												
												if(page== -1){
													pageNum = Math.ceil(replyCnt/10.0);
													console.log("page:"+pageNum);
													showList(pageNum);
													return;
												}												
												
												
												var str = "";
												if (list == null
														|| list.length == 0) {
													replyUL.html("");
													return;
												}
												for (var i = 0, len = list.length || 0; i < len; i++) {
													str += "<li class='left ";
													str += "clearfix' data-rno='";
													str += list[i].rno+"'>";
													str += "<div><div class='header' ";
													str += "><strong class='";
													str += "primary-font'>";
													str += list[i].replyer
															+ "</strong>";
													str += "<small class='float-sm-right '>";
													str += replyService
															.displayTime(list[i].replyDate)
															+ "</small></div>";
													str += "<p>"
															+ list[i].reply;
													str += "</p></div></li>";
												}
												replyUL.html(str);
												showReplyPage(replyCnt);
											});
						}
						showList(1);
						
						
						
						var pageNum = 1;
						var replyPageFooter = $(".panel-footer");

						function showReplyPage(replyCnt) {
							var endNum = Math.ceil(pageNum / 10.0) * 10;
							var startNum = endNum - 9;
							var prev = startNum != 1;
							var next = false;
							if (endNum * 10 >= replyCnt) {
								endNum = Math.ceil(replyCnt / 10.0);
							}
							if (endNum * 10 < replyCnt) {
								next = true;
							}
							var str = "<ul class='pagination";
							str+=" justify-content-center'>";
							if (prev) {
								str += "<li class='page-item'><a ";
								str += "class='page-link' href='";
								str += (startNum - 1);
								str += "'>이전</a></li>";
							}
							for (var i = startNum; i <= endNum; i++) {
								var active = pageNum == i ? "active" : "";
								str += "<li class='page-item "+ active
								+"'><a class='page-link' ";
								str+="href='"+i+"'>"
								+ i + "</a></li>";
							}
							if (next) {
								str += "<li class='page-item'>";
								str += "<a class='page-link' href='";
								str += (endNum + 1) + "'>다음</a></li>";
							}
							str += "</ul>";
							console.log(str);
							replyPageFooter.html(str);
						}
						
						replyPageFooter.on("click", "li a", function(e) {
							e.preventDefault();
							var targetPageNum = $(this).attr("href");
							pageNum = targetPageNum;
							showList(pageNum);
						});
						
						
						(function(){
							var bno='<c:out value="${board.bno}"/>';
							$.getJSON("/board/getAttachList",{bno:bno}, function(arr){
										console.log(arr);										
										var str="";
										
										$(arr).each(function(i,attach){
											str+="<li data-path='";
											str+=attach.uploadPath+"' data-uuid='";
											str+=attach.uuid+"' data-filename='";
											str+=attach.fileName+"' data-type='";
											str+=attach.fileType+"'><div>";
											str+="<img src='/resources/img/attach.PNG' width='20'>";
											str+="<span>&nbsp;"+attach.fileName+"</span><br/> ";											
											str+="</div></li>";
										});
										$(".uploadResult ul").html(str);
									});
						})();
						
						
						$(".uploadResult").on("click","li",function(e){
							console.log("download file");
							var liObj = $(this);
							var path=encodeURIComponent(liObj.data("path")
									+"/"+liObj.data("uuid")+"_"
									+liObj.data("filename"));
							self.location="/download?fileName="+path;
						});

						
						
					});
</script>





















