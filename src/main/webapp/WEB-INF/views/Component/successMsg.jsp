<%@page import="org.springframework.web.servlet.ModelAndView"%>
<%@page import="org.springframework.ui.Model"%>
<%@page import="java.rmi.Remote"%>
<%@ page isELIgnored="false"%>

<%Object cm = request.getAttribute("catogoryAttr");
Object pm = request.getAttribute("productAttr");
int temp = 0;
if ((cm != null) || (pm !=null)) {
%> 
<div class="alert alert-success alert-dismissible fade show"
	role="alert">
	<strong>${sucmsg}</strong>
	<button type="button" class="btn-close" data-bs-dismiss="alert"
		aria-label="Close"></button>
</div>
<%
request.removeAttribute("catogoryAttr");
request.removeAttribute("productAttr");

}
%>
