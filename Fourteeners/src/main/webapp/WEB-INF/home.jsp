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
<link rel="stylesheet" href="stylingSheet.css">
</head>
<body>
	<div>
		<h1>Colorado's Fourteeners Database</h1>
		<p id ="intro">In mountaineering, a "Fourteener" is a term used to describe a
			mountain with an elevation of atleast 14,000 feet (4,267 meters)</p>
	</div>
	<div>
		<form action="getMountain.do" method="GET">
			Search by number: <input type="text" name="mtId" /> <input
				type="submit" value="Show Mountain" />
		</form>
	</div>
	<div>
		<form action="keywordList.do" method="GET">
			Search by name: <input type="text" name="name" /> <input
				type="submit" value="Show Mountain" />
		</form>
	</div>
	<div>
		<ol>
			<c:forEach var="mountain" items="${list}">
				<li><a href="getMountain.do?mtId=${mountain.id}">
						${mountain.name}</a></li>
			</c:forEach>
		</ol>
	</div>
	<div>
		<h4>Add another mountain to the database</h4>
		<form action="createMt.do" method="POST">

			<p>Name:
			<input type="text" name="name" placeholder="required" /></p>
			<p>Elevation:
			<input type="text" name="elevation" placeholder="required"/></p>
			<p>Elevation Gain:
			<input type="text" name="elevationGain"/></p>
			<p>Distance:
			<input type="text" name="distance"/></p>
			<p>Difficulty Ranking:
			<input type="text" name="ranking"/></p>
			<p>Estimated Time Duration:
			<input type="text" name="duration"/></p>
			
			<input type="submit" value="Submit"></input>
		</form>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
		crossorigin="anonymous"></script>
</body>
</html>