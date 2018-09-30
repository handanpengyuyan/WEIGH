<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<%
	// request.getSession().setAttribute("user", null);
%>
<c:choose>
	<c:when test="${user == null}">
		<script>
			if (top != null)
				top.location.href = "${ctx}/pages/login.jsp";
			else
				location.href = "${ctx}/pages/login.jsp";
		</script>
	</c:when>
</c:choose>
