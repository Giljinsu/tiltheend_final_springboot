<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<form name="hiddenform" action="${destination}" method="${ empty COORDINATION_ID ? 'get' : 'post'}">
    <input type="hidden" name="COORDINATION_ID" value="${COORDINATION_ID}">
</form>

<script>
    document.hiddenform.submit();
</script>