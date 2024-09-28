<%
 Object m1 = session.getAttribute("msg");

if(m1 != null){
%>

<div class="alert alert-warning alert-dismissible fade show"
	role="alert">
	<strong>${mmsg}</strong>
	<button type="button" class="btn-close" data-bs-dismiss="alert"
		aria-label="Close"></button>
</div>
<%
session.removeAttribute("msg");
}
%>