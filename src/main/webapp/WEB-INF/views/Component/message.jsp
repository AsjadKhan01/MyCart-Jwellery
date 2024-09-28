<%@page import="org.springframework.web.servlet.ModelAndView"%>
<%@page import="org.springframework.ui.Model"%>
<%@page import="java.rmi.Remote"%>
<%@ page isELIgnored="false"%>
<%
Object m = request.getAttribute("msg");

if (m != null) {
%>
<div class="alert alert-success alert-dismissible fade show"
	role="alert">
	<strong>${mmsg}</strong>
	<button type="button" class="btn-close" data-bs-dismiss="alert"
		aria-label="Close"></button>
</div>
<%
request.removeAttribute("msg");
} else {
%>
<div class="alert alert-danger alert-dismissible fade show"
	role="alert">
	<strong>${mmsg}</strong>
	<button type="button" class="btn-close" data-bs-dismiss="alert"
		aria-label="Close"></button>
</div>
<%
}
%>