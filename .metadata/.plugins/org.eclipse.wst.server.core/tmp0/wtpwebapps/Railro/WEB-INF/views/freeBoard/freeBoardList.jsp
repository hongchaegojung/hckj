<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<div id="content">
<table>
  <tr>
    <th>글번호</th>
    <th>제목</th>
    <th>작성자</th>
    <th>조회수</th>
    <th>작성일</th>
  </tr>

</table>
<button class="button button1">글등록</button>

      <!-- 검색입력 폼 -->
   <div class=aaa></div>
   <form method= post action='list.php'>
   <tr>
      <td width=100%  colspan=5 alingn=center> 
         <select name = src_name>
         <option value=name>이름 </option>
         <option value=subject selected>제목 </option>
         <option value=memo>내용 </option>
         </select>
         
         <input type=text name = src_value size=30>
         <input type=submit value = 검색>
      </td>
   </tr>
   </form>
</div>


