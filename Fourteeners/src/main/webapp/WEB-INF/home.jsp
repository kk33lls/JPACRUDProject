<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Colorado's Fourteeners</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7"
	crossorigin="anonymous">
</head>
<body>
	<div>
		<h1>Colorado's Fourteeners Database</h1>
		<p>In mountaineering, a "Fourteener" is a term used to describe a
			moutnain with an elevation of atleast 14,000 feet (4,267 meters)</p>
	</div>
	<div>
		<form action="getMountain.do" method="GET">
			Search by number: <input type="text" name="mtId" /> <input
				type="submit" value="Show Mountain" />
		</form>
	</div>
	<div>
		<ol>
			<c:forEach var="mountain" items="${list}">
				<li><a href="getMountain.do?mtId=${mountain.id}"> ${mountain.name}</a></li>
			</c:forEach>
		</ol>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
		crossorigin="anonymous"></script>
</body>
</html>