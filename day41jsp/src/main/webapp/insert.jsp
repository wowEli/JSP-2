<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="dao" class="model.dao.MemberDAO"></jsp:useBean>
<jsp:useBean id="vo" class="model.vo.MemberVO"></jsp:useBean>
<jsp:setProperty property="*" name="vo" />

<%
if (dao.insert(vo)) {
%>
<script type="text/javascript">
			alert('<%=request.getParameter("name")%>데이터 등록 성공!');
	location.href = "NewFile.jsp"; // location은 js에 내장객체 저 url로 이동
</script>
<%
} else {
%>
<script type="text/javascript">
	alert('데이터 등록 실패');
	location.href = "NewFile.jsp"; // location은 js에 내장객체 저 url로 이동
</script>
<%
}
%>

