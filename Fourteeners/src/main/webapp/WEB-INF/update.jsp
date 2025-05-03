<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Film</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7"
	crossorigin="anonymous">
</head>
<body>
<h3>Update Information</h3>
<form action="updateMt.do" method="POST">
	<input type="hidden" name="id" value="${mountain.id }"/>
	<p>Name
	<input type="text" name="name" value="${mountain.name}" /></p>
	<p>Elevation (in feet)
	<input type="text" name="elevation" value="${mountain.elevation}" /></p>
	<p>Elevation Gain (in feet)
	<input type="text" name="elevationGain" value="${mountain.elevationGain}"/></p>
	<p>Distance (in feet)
	<input type="text" name="distance" value="${mountain.distance}" /></p>
	<p>Difficulty Ranking
	<input type="text" name="ranking" value="${mountain.ranking}"/></p>
	<p>Estimated Duration (in hours)
	<input type="text" name="duration" value="${mountain.duration}"/></p>
	<input type="submit" value="Submit"></input>
	</form>
<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
		crossorigin="anonymous"></script>
</body>
</html>