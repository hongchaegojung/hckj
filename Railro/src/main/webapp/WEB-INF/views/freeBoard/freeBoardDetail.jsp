<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<div class="content">
	<form method="post" action="freeBoardDetail.htm" >
		<table width="65%">
    		<tr>
				<td width="10%">작성자</td>
				<td width="55%">
				&nbsp;${board.WRITER}
				</td>
			</tr>
    		<tr>
     			<td>제 목</td>
     			<td>
				&nbsp;${board.TITLE}
				</td>
    		</tr>
    		<tr>
     			<td style="vertical-align: top">내 용</td>
     			<td>
				&nbsp;${board.CONTENTS}
				</td>
    		</tr>
		</table>
	</form> 
	<div class="button">
		<button><a href="freeBoardList.htm?ID=${board.ID}">목록</a></button>
		&nbsp;&nbsp;
		<button><a href="freeBoardEdit.htm?ID=${board.ID}">수정</a></button>
		&nbsp;&nbsp;
		<button><a href="freeBoardDel.htm?ID=${board.ID}">삭제</a></button>
		&nbsp;&nbsp;
		<button><a href="../member/insertBookmark.htm?ID=${board.ID}&&MID=subin">글담기</a></button>
		&nbsp;&nbsp;
		<button onclick="javasrcipt:history.go(-1)">취소</button>
		
	</div>
</div>
