<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page" %>

<html>
	<head>
		<title><decorator:title default="QAMS - Question & Answer Management System" /></title>
		<decorator:head />
		<link rel="stylesheet" href="css/styles.css"/>
	</head>

	<body>
		<div id="wrapper">
			<div id="header">
				<jsp:include page="header.jsp" />
			</div>
			<div id="content" class="content">
			
				<decorator:body />
			</div>
			<div id="footer">
				<jsp:include page="footer.jsp" />
			</div>
		</div>
	</body>
</html>