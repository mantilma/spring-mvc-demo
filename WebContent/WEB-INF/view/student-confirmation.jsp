<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!--  i need JSTL for looping within a collection -->
<!DOCTYPE html>
<html>
<head>
	<title>Student confirmation</title>
</head>
<body>
	The student is confirmed: ${student.firstName} ${student.lastName}
	<br><br>
	${student.country} ${student.secondCountry}
	<br><br>
	${student.favoriteLanguage}
	<br><br>
	<ul>
		<c:forEach var="temp" items="${student.operatingSystems}">
		<li>${temp}</li>
		</c:forEach>
	</ul>
</body>
</html>