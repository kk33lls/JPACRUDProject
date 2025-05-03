<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fourteener Details</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7"
	crossorigin="anonymous">
</head>
<body>
	<a href="home.do">Back to Homepage</a>
	<div>
		<c:choose>
			<c:when test="${not empty mountain}">
				<h1>${mountain.name}</h1>
				<ul>
					<li>Total Elevation: ${mountain.elevation} <span>feet</span></li>
					<li>Elevation Gain: ${mountain.elevationGain} <span>feet</span></li>
					<li>Total Distance: ${mountain.distance} <span>miles</span></li>
					<li>Difficulty Ranking: ${mountain.ranking}</li>
					<li>Total Duration: ${mountain.duration} <span>hours</span></li>
				</ul>
			</c:when>
			<c:otherwise>
				<h2>Error: User input not found in the database</h2>
			</c:otherwise>
		</c:choose>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
		crossorigin="anonymous"></script>
</body>
</html>